DCActionButtonsController
==========

Twitter: [@patr](http://twitter.com/patr)

Our commercial apps: [domesticcat.com.au](http://domesticcat.com.au/apps)

DCActionButtonsController provides an easy way to create view controllers to sit inside a UIPopoverController with styled buttons.

![DCActionButtonsController Demo Image](http://domesticcat.com.au/projects/dcactionbuttonscontroller/dcactionbuttonscontroller-demo.png)

To use, add buttons using `addButtonWithTitle:style:style:target:action:`.  The buttons are GradientButtons by Jeff LaMarche, which you'll need to download from here: [https://github.com/baron/iPhone-Gradient-Buttons](https://github.com/baron/iPhone-Gradient-Buttons).

There are several button styles to choose from:

* GradientButtonStyleAlert
* GradientButtonStyleBlack
* GradientButtonStyleBlackActionSheet
* GradientButtonStyleGreenConfirm
* GradientButtonStyleRedDelete
* GradientButtonStyleSimpleOrange
* GradientButtonStyleWhite
* GradientButtonStyleWhiteActionSheet

To add to a popover controller just add set it as the content view and it will size itself accordingly.  See the demo project for an example.