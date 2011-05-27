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
//  Requires GradientButton by Jeffe Lemarche.  Download it here: https://github.com/baron/iPhone-Gradient-Buttons

typedef enum {
	GradientButtonStyleAlert = 0,
	GradientButtonStyleRedDelete,
	GradientButtonStyleWhite,
	GradientButtonStyleBlack,
	GradientButtonStyleWhiteActionSheet,
	GradientButtonStyleBlackActionSheet,
	GradientButtonStyleSimpleOrange,
	GradientButtonStyleGreenConfirm
} GradientButtonStyle;

@interface DCActionButtonsController : UIViewController

@property (nonatomic, retain) NSMutableArray *buttons;

- (void)addButtonWithTitle:(NSString *)title style:(GradientButtonStyle)style target:(id)target action:(SEL)selector;

@end
