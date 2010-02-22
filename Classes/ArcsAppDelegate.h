//
//  ArcsAppDelegate.h
//  Arcs
//
//  Created by Rune Madsen on 2/22/10.
//  Copyright New York University 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ArcsViewController;

@interface ArcsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ArcsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ArcsViewController *viewController;

@end

