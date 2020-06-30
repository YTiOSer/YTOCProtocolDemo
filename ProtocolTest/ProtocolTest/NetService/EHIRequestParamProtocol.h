//
//  EHIRequestParamProtocol.h
//  ProtocolTest
//
//  Created by 杨涛 on 2020/6/29.
//  Copyright © 2020 杨涛. All rights reserved.
//

/** 请求参数协议 */
#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, EHIRequestType) {
    Get = 1,
    Post,
};

NS_ASSUME_NONNULL_BEGIN

@protocol EHIRequestParamProtocol <NSObject>

@required

// 请求方式
@property (nonatomic, assign) EHIRequestType requestType;

@property (nonatomic, strong) NSString *url;

@optional

@property (nonatomic, strong) NSDictionary *param;

@end

NS_ASSUME_NONNULL_END
