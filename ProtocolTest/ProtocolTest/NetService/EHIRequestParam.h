//
//  EHIRequestParam.h
//  ProtocolTest
//
//  Created by 杨涛 on 2020/6/29.
//  Copyright © 2020 杨涛. All rights reserved.
//

/** 接口底层实现类 */
#import <Foundation/Foundation.h>
#import "EHIRequestParamProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface EHIRequestParam : NSObject<EHIRequestParamProtocol>

/** 获取请求参数 */
+ (instancetype)getRequestParam;

@end

NS_ASSUME_NONNULL_END
