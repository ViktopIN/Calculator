//
//  AppDelegate.m
//  Calculator
//
//  Created by Виктор on 23.07.2023.
//

#import "AppDelegate.h"
#import "MainViewController.h"

@interface AppDelegate ()

@property (strong, nonatomic) MainViewController *viewController;

@end

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.viewController = [[MainViewController alloc] init];
    
    self.window = [[UIWindow alloc] initWithFrame: UIScreen.mainScreen.bounds];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
