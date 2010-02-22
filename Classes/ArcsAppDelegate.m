//
//  ArcsAppDelegate.m
//  Arcs
//
//  Created by Rune Madsen on 2/22/10.
//  Copyright New York University 2010. All rights reserved.
//

#import "ArcsAppDelegate.h"
#import "ArcsViewController.h"

@implementation ArcsAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
