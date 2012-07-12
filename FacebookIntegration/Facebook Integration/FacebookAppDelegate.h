//
//  FacebookAppDelegate.h
//  Facebook Integration
//
//  Created by bhuvan khanna on 12/07/12.
//  Copyright (c) 2012 webonise software solutions pvt ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FBConnect.h"

@class FacebookViewController;

@interface FacebookAppDelegate : UIResponder <UIApplicationDelegate,FBDialogDelegate,FBLoginDialogDelegate,FBRequestDelegate,FBSessionDelegate> {
    Facebook *facebook;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) FacebookViewController *viewController;
@property (nonatomic, retain) Facebook *facebook;

@end
