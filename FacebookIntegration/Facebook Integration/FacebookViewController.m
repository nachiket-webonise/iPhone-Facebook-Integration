//
//  FacebookViewController.m
//  Facebook Integration
//
//  Created by bhuvan khanna on 12/07/12.
//  Copyright (c) 2012 webonise software solutions pvt ltd. All rights reserved.
//

#import "FacebookViewController.h"
#import "FacebookAppDelegate.h"

@interface FacebookViewController ()

@end

@implementation FacebookViewController
@synthesize permissions;

- (void)viewDidLoad
{
    permissions = [[NSArray alloc] initWithObjects:@"publish_stream",@"offline_access", nil];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)facebookLogin:(id)sender {
    FacebookAppDelegate *delegate = (FacebookAppDelegate *)[[UIApplication sharedApplication] delegate];
    if (![[delegate facebook] isSessionValid]) {
        [[delegate facebook] authorize:permissions];
    } else {
        [[delegate facebook] authorize:nil];
    }
}

- (void)fbDidLogin {
    [self ShowAlertMsg:@"" withArg2:@"Facebook Successfully logged in"];
}

-(void)ShowAlertMsg:(NSString*)Msg withArg2:(NSString *)Title {
    
    UIAlertView *alert;
    
    alert = [[UIAlertView alloc] initWithTitle:Title message:Msg delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alert show];
}

- (void)fbDidNotLogin:(BOOL)cancelled {
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
