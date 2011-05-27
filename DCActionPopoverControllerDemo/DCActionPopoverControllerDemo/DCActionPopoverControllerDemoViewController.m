//
//  DCActionPopoverControllerDemoViewController.m
//  DCActionPopoverControllerDemo
//
//  Created by Patrick Richards on 27/05/11.
//  Copyright 2011 Domestic Cat Software. All rights reserved.
//

#import "DCActionPopoverControllerDemoViewController.h"
#import "DCActionButtonsController.h"

@implementation DCActionPopoverControllerDemoViewController
@synthesize popoverController;

- (void)dealloc
{
	[popoverController release];
	[super dealloc];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

#pragma mark Actions

- (IBAction)showPopover:(id)sender
{
	DCActionButtonsController *actionController = [[[DCActionButtonsController alloc] init] autorelease];

	[actionController addButtonWithTitle:@"Alert" style:GradientButtonStyleAlert target:self action:@selector(buttonPushed:)];
	[actionController addButtonWithTitle:@"Black" style:GradientButtonStyleBlack target:self action:@selector(buttonPushed:)];
	[actionController addButtonWithTitle:@"Black Action Sheet" style:GradientButtonStyleBlackActionSheet target:self action:@selector(buttonPushed:)];
	[actionController addButtonWithTitle:@"Green Confirm" style:GradientButtonStyleGreenConfirm target:self action:@selector(buttonPushed:)];
	[actionController addButtonWithTitle:@"Red Delete" style:GradientButtonStyleRedDelete target:self action:@selector(buttonPushed:)];
	[actionController addButtonWithTitle:@"Simple Orange" style:GradientButtonStyleSimpleOrange target:self action:@selector(buttonPushed:)];
	[actionController addButtonWithTitle:@"White" style:GradientButtonStyleWhite target:self action:@selector(buttonPushed:)];
	[actionController addButtonWithTitle:@"White Action Sheet" style:GradientButtonStyleWhiteActionSheet target:self action:@selector(buttonPushed:)];

	if (!popoverController)
		self.popoverController = [[[UIPopoverController alloc] initWithContentViewController:actionController] autorelease];
	else
		[self.popoverController setContentViewController:actionController];

	[self.popoverController presentPopoverFromBarButtonItem:(UIBarButtonItem *)sender permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
}

- (void)buttonPushed:(id)sender
{
	UIButton *button = (UIButton *)sender;
	NSLog(@"Button '%@' pushed.", button.titleLabel.text);

	[self.popoverController dismissPopoverAnimated:YES];
}

@end
