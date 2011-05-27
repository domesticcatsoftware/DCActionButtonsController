//
//  DCActionPopoverControllerDemoViewController.h
//  DCActionPopoverControllerDemo
//
//  Created by Patrick Richards on 27/05/11.
//  Copyright 2011 Domestic Cat Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DCActionPopoverControllerDemoViewController : UIViewController

@property (nonatomic, retain) UIPopoverController *popoverController;

/////////////
// Actions //
/////////////

- (IBAction)showPopover:(id)sender;

@end
