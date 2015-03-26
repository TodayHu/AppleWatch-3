//
//  WatchDataCommunicateManager.m
//  Demo
//
//  Created by Fakai Zhao on 15/3/26.
//  Copyright (c) 2015年 NeoWork. All rights reserved.
//

#import "WatchDataCommunicateManager.h"
#import <WatchKit/WKInterfaceController.h>

@implementation WatchDataCommunicateManager

+ (BOOL)openParentApplicationReply:(WatchDataCommunicateReply)reply {
    
    NSLog(@"%@",NSStringFromSelector(_cmd));
    //
    return [WKInterfaceController openParentApplication:@{@"key":@"value"} reply:^(NSDictionary *replyInfo, NSError *error) {
       
        reply(replyInfo,error);
        
    }];
}


@end
