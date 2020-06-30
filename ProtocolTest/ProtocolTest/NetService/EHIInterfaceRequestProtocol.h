//
//  EHIInterfaceRequestProtocol.h
//  ProtocolTest
//
//  Created by 杨涛 on 2020/6/29.
//  Copyright © 2020 杨涛. All rights reserved.
//

/** 请求方法协议 */
#import <Foundation/Foundation.h>
#import "EHIRequestParamProtocol.h"

NS_ASSUME_NONNULL_BEGIN

/** 请求接口 */
@protocol EHIInterfaceRequestProtocol <NSObject>

- (void)requestData:(__kindof NSObject<EHIRequestParamProtocol> *)param complete:(void (^)(NSDictionary * response))complete failed:(void (^)(NSDictionary * error))failed;

@end

NS_ASSUME_NONNULL_END
