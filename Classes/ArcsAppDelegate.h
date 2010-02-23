#import <UIKit/UIKit.h>

@class ArcsViewController;

@interface ArcsAppDelegate : NSObject <UIApplicationDelegate> 
{
    UIWindow *window;
    ArcsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ArcsViewController *viewController;

@end

