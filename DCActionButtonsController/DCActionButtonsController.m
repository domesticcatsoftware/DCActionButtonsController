//
//  DCActionButtonsController
//
//  Created by Patrick Richards on 27/05/11.
//  MIT License.
//
//  http://twitter.com/patr
//  http://domesticcat.com.au/projects
//  http://github.com/domesticcatsoftware/DCActionButtonsController
//

#import "DCActionButtonsController.h"

//  Requires GradientButton by Jeffe Lemarche.  Download it here: https://github.com/baron/iPhone-Gradient-Buttons
#import "GradientButton.h"

#define kDCActionPopoverControllerYPadding 6.0
#define kDCActionPopoverControllerButtonHeight 35.0
#define kDCActionPopoverControllerMinimumButtonWidth 200.0
#define kDCActionPopoverControllerFont [UIFont boldSystemFontOfSize:18]

@implementation DCActionButtonsController
@synthesize buttons;

- (void)dealloc
{
	[buttons release];
	[super dealloc];
}
	 
- (void)addButtonWithTitle:(NSString *)title style:(GradientButtonStyle)style target:(id)target action:(SEL)selector
{
	if (!self.buttons)
		self.buttons = [[[NSMutableArray alloc] init] autorelease];

	GradientButton *button = [GradientButton buttonWithType:UIButtonTypeCustom];

	switch (style)
	{
		case GradientButtonStyleAlert: [button useAlertStyle]; break;
		case GradientButtonStyleBlack: [button useBlackStyle]; break;
		case GradientButtonStyleBlackActionSheet: [button useBlackActionSheetStyle]; break;
		case GradientButtonStyleGreenConfirm: [button useGreenConfirmStyle]; break;
		case GradientButtonStyleRedDelete: [button useRedDeleteStyle]; break;
		case GradientButtonStyleSimpleOrange: [button useSimpleOrangeStyle]; break;
		case GradientButtonStyleWhite: [button useWhiteStyle]; break;
		case GradientButtonStyleWhiteActionSheet: [button useWhiteActionSheetStyle]; break;
		default: [button useWhiteStyle]; break;
	}

	[button setTitle:title forState:UIControlStateNormal];
	button.cornerRadius = 4.0;
	button.titleLabel.font = kDCActionPopoverControllerFont;
	[button addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
	[self.buttons addObject:button];
	button.tag = [self.buttons indexOfObject:button];
}

- (CGSize)contentSizeForViewInPopover
{
	// find the widest button
	CGFloat width = kDCActionPopoverControllerMinimumButtonWidth;

	for (UIButton *button in self.buttons)
	{
		NSString *buttonTitle = button.titleLabel.text;
		CGSize textSize = [buttonTitle sizeWithFont:kDCActionPopoverControllerFont];
		if (textSize.width > width)
			width = textSize.width;
	}

	return CGSizeMake(width + 16.0, self.buttons.count * (kDCActionPopoverControllerButtonHeight + kDCActionPopoverControllerYPadding) - kDCActionPopoverControllerYPadding);
}

- (void)viewWillAppear:(BOOL)animated
{
	CGFloat x = 0.0;
	CGFloat y = 0.0;

	for (UIButton *button in self.buttons)
	{
		button.frame = CGRectMake(x, y, [self contentSizeForViewInPopover].width, kDCActionPopoverControllerButtonHeight);
		[self.view addSubview:button];
		y += kDCActionPopoverControllerButtonHeight + kDCActionPopoverControllerYPadding;
	}
}

@end
