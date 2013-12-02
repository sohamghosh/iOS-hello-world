#import "AppDelegate.h"

#import "ViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    CGRect bounds = [[UIScreen mainScreen] bounds];
    
    // Canvas (Window)
    self.window = [[UIWindow alloc] initWithFrame: bounds];
    
    // Paint Brush (ViewController)
    self.viewController = [[ViewController alloc] init];
    
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
