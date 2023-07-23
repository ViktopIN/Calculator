//
//  AppDelegate.m
//  Calculator
//
//  Created by Виктор on 23.07.2023.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@property (strong, nonatomic) ViewController *viewController;

@end

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.viewController = [[ViewController alloc] init];
    
    self.window = [[UIWindow alloc] initWithFrame: UIScreen.mainScreen.bounds];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
