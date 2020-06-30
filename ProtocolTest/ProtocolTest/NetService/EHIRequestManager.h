//
//  EHIRequestManager.h
//  ProtocolTest
//
//  Created by 杨涛 on 2020/6/29.
//  Copyright © 2020 杨涛. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EHIInterfaceRequestProtocol.h"

NS_ASSUME_NONNULL_BEGIN

/** 请求方法实现类 */
@interface EHIRequestManager : NSObject<EHIInterfaceRequestProtocol>

+ (instancetype)shareManager;

@end

NS_ASSUME_NONNULL_END
