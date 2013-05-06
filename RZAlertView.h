//
//  RZAlertView.h
//

#import <UIKit/UIKit.h>

@interface RZAlertView : UIAlertView <UIAlertViewDelegate>

- (void)showWithDismissBlock:(void (^)(RZAlertView *alertView, int dismissButtonIndex))dismissBlock;

@end
