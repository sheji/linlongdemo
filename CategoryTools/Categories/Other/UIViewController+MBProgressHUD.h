/*
 *  UIViewController+MBProgressHUD.h
 *
 *  Created by Adam Duke on 10/20/11.
 *  Copyright 2015 Adam Duke All rights reserved.
 *
 */

#import "MBProgressHUD.h"
#import <UIKit/UIKit.h>

@interface UIViewController (MBProgressHUD) <MBProgressHUDDelegate>

typedef void (^HUDFinishedHandler)();

/*
 * Shows an MBProgressHUD with the default spinner
 * The HUD is added as a subview to this view
 * controller's parentViewController.view.
 */
- (void)showHUD;

/*
 * Shows an MBProgressHUD with the default spinner
 * and sets the label text beneath the spinner
 * to the given message. The HUD is added as a subview
 * to this view controller's parentViewController.view.
 */
- (void)showHUDWithMessage:(NSString *)message;

/*
 * Dismisses the currently displayed HUD.
 */
- (void)hideHUD;

/*
 * Changes the currently displayed HUD's label text to
 * the given message and then dismisses the HUD after a
 * short delay.
 */
- (void)hideHUDWithCompletionMessage:(NSString *)message;
- (void)hideHUDWithCompletionMessage:(NSString *)message delayTime:(NSTimeInterval)delayTime;

/*
 * Changes the currently displayed HUD's label text to
 * the given message and then dismisses the HUD after a
 * short delay. Additionally, runs the given completion
 * block after the HUD hides.
 */
- (void)hideHUDWithCompletionMessage:(NSString *)message finishedHandler:(HUDFinishedHandler)finishedHandler;

- (void)hideHUDWithCompletionMessage:(NSString *)message delayTime:(NSTimeInterval)delayTime finishedHandler:(HUDFinishedHandler)finishedHandler;

- (void)showHUDWithTipMessage:(NSString *)message;
- (void)showHUDWithTipMessage:(NSString *)message finishedHandler:(HUDFinishedHandler)finishedHandler;

@end
