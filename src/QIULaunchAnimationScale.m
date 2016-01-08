//
//  QIULaunchAnimationScale.m
//  scorpion
//
//  Created by QiuFeng on 1/8/16.
//  Copyright © 2016 www.sui.me. All rights reserved.
//

#import "QIULaunchAnimationScale.h"

@implementation QIULaunchAnimationScale

- (void)startAnimation:(UIView *)launchView {
    [super startAnimation:launchView];
    
    NSTimeInterval scaleDownAnimation = self.animationDuration > 0.3 ? 0.3 : 0;
    
    [UIView animateWithDuration:scaleDownAnimation animations:^{
        launchView.transform = CGAffineTransformMakeScale(0.6, 0.6);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:self.animationDuration - scaleDownAnimation animations:^{
            CGAffineTransform scaleTransform = CGAffineTransformMakeScale(3, 3);
            launchView.transform = scaleTransform;
            launchView.alpha = 0;
        } completion:^(BOOL finished) {
            [super finishAnimaion];
        }];
    }];
}

@end
