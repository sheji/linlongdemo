//
//  WiFiMainController.m
//  linlongdemo
//
//  Created by 杜林隆 on 16/3/4.
//  Copyright © 2016年 dulinlong. All rights reserved.
//

#import "WiFiMainController.h"
#import <NetworkExtension/NEHotspotHelper.h>

@interface WiFiMainController ()

@end

@implementation WiFiMainController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary* options = [NSDictionary dictionaryWithObjectsAndKeys:@"Connect Here",kNEHotspotHelperOptionDisplayName, nil];
    dispatch_queue_t queue = dispatch_queue_create("com.du.linlongdemo", 0);
    
    BOOL returnType = [NEHotspotHelper registerWithOptions:options queue:queue handler: ^(NEHotspotHelperCommand * cmd) {
        
        if(cmd.network) {
            NEHotspotNetwork* network = cmd.network;
            if(cmd.commandType == kNEHotspotHelperCommandTypeEvaluate || cmd.commandType ==kNEHotspotHelperCommandTypeFilterScanList ){
                [network setConfidence:kNEHotspotHelperConfidenceHigh];
                    }
                }
               }];
    NSLog(@"result:%@",@(returnType));
    
}


@end
