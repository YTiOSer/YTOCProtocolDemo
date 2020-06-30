//
//  EHIRequestManager.m
//  ProtocolTest
//
//  Created by 杨涛 on 2020/6/29.
//  Copyright © 2020 杨涛. All rights reserved.
//

#import "EHIRequestManager.h"

static EHIRequestManager *_instance = nil;

@implementation EHIRequestManager

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (_instance == nil) {
            _instance = [super allocWithZone:zone];
        }
    });
    return _instance;
}

+ (instancetype)shareManager {
    return [[self alloc] init];
}

/** 抽象参数，可指向InterfaceProtocol的任意实现类 */
- (void)requestData:(__kindof NSObject<EHIRequestParamProtocol> *)param complete:(void (^)(NSDictionary * _Nonnull))complete failed:(void (^)(NSDictionary * _Nonnull))failed {
    
    // 在这里可以进行AF等网络请求
    // 这里因为是简单demo,就模拟下请求数据并返回
    if ([param.url isEqual: @"https://api.ehi.com"]) {
        complete(@{@"statusCode": @"200",
                   @"statusMsg": @"请求成功",
        });
    } else {
        failed(@{@"statusCode": @"400",
                 @"errorMsg": @"请求超时"});
    }
}

@end
