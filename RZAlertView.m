//
//  RZAlertView.m
//

#import "RZAlertView.h"

@implementation RZAlertView {
    void (^_dismissBlock)(RZAlertView *alertView, int dismissButtonIndex);
}

- (void)showWithDismissBlock:(void (^)(RZAlertView *alertView, int dismissButtonIndex))dismissBlock
{
    self.delegate = self;
    _dismissBlock = [dismissBlock copy];
    [self show];
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if (_dismissBlock) {
        _dismissBlock(self, buttonIndex);
        _dismissBlock = nil;
    }
}

@end
