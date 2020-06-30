//
//  ViewController.m
//  ProtocolTest
//
//  Created by 杨涛 on 2020/6/28.
//  Copyright © 2020 杨涛. All rights reserved.
//

#import "ViewController.h"
#import "EHIRequestManager.h"
#import "EHIRequestParam.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self requestData];
}

- (void)requestData{
    
    /** 上层调用 */
    [[EHIRequestManager shareManager] requestData:[EHIRequestParam getRequestParam] complete:^(NSDictionary * _Nonnull response) {
        NSLog(@"%@", response[@"statusMsg"]);
    } failed:^(NSDictionary * _Nonnull error) {
        NSLog(@"%@", error[@"errorMsg"]);
    }];
}


@end
