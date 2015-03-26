//
//  WatchDataCommunicateManager.h
//  Demo
//
//  Created by Fakai Zhao on 15/3/26.
//  Copyright (c) 2015年 NeoWork. All rights reserved.
//

#import <Foundation/Foundation.h>
//
typedef void (^WatchDataCommunicateReply)(id reply, NSError *error);
@interface WatchDataCommunicateManager : NSObject

+ (BOOL)openParentApplicationReply:(WatchDataCommunicateReply)reply;


@end
