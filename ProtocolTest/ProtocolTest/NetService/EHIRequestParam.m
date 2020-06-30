//
//  EHIRequestParam.m
//  ProtocolTest
//
//  Created by 杨涛 on 2020/6/29.
//  Copyright © 2020 杨涛. All rights reserved.
//

#import "EHIRequestParam.h"

@implementation EHIRequestParam

+ (instancetype)getRequestParam {
    EHIRequestParam * param = [[EHIRequestParam alloc]init];
    return param;
}

- (EHIRequestType)requestType {
    return Get;
}

- (NSDictionary *)param {
    return @{@"id":@"111"};
}

- (NSString *)url {
    return @"https://api.ehi.com";
}

@synthesize url;

@synthesize param;

@synthesize requestType;

@end
