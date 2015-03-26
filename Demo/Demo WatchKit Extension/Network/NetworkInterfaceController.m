//
//  NetworkInterfaceController.m
//  Demo
//
//  Created by Fakai Zhao on 15/3/26.
//  Copyright (c) 2015年 NeoWork. All rights reserved.
//

#import "NetworkInterfaceController.h"
#import "WatchDataCommunicateManager.h"


@interface NetworkInterfaceController()
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *resultLabel;
- (IBAction)doAction;

@end


@implementation NetworkInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
        
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)doAction {
    
    [WatchDataCommunicateManager openParentApplicationReply:^(id reply, NSError *error) {
        
        NSDictionary *replyDic = (NSDictionary *)reply;
        if (error) {
            
            [self.resultLabel setText:replyDic[@"key"]];
            
        } else {
            
            [self.resultLabel setText:replyDic[@"data"]];
            
        }
    }];

}
@end



