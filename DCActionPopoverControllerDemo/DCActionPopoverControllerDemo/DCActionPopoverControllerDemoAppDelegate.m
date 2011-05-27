//
//  DCActionPopoverControllerDemoAppDelegate.m
//  DCActionPopoverControllerDemo
//
//  Created by Patrick Richards on 27/05/11.
//  Copyright 2011 Domsetic Cat Software. All rights reserved.
//

#import "DCActionPopoverControllerDemoAppDelegate.h"
#import "DCActionPopoverControllerDemoViewController.h"

@implementation DCActionPopoverControllerDemoAppDelegate

@synthesize window;
@synthesize viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	self.window.rootViewController = self.viewController;
	[self.window makeKeyAndVisible];
	return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

- (void)dealloc
{
	[window release];
	[viewController release];
	[super dealloc];
}

@end
