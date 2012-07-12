//
//  FacebookViewController.h
//  Facebook Integration
//
//  Created by bhuvan khanna on 12/07/12.
//  Copyright (c) 2012 webonise software solutions pvt ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FBConnect.h"

@interface FacebookViewController : UIViewController<FBDialogDelegate,FBLoginDialogDelegate,FBRequestDelegate,FBSessionDelegate> {
    NSArray *permissions;
}

@property (nonatomic, retain) NSArray *permissions;

@end
