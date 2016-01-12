//
//  SUILaunchAnimationStrategy.m
//  scorpion
//
//  Created by QiuFeng on 1/8/16.
//  Copyright © 2016 www.sui.me. All rights reserved.
//

#import "SUILaunchAnimationCustom.h"
#import "SUILaunchView.h"

@implementation SUILaunchAnimationCustom

- (void)startAnimation:(SUILaunchView *)launchView {
    [super startAnimation:launchView];
    
    NSTimeInterval scaleDownAnimation = self.animationDuration > 0.3 ? 0.3 : 0;
    [UIView animateWithDuration:scaleDownAnimation delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
                launchView.iconImageView.transform = CGAffineTransformMakeScale(0.6, 0.6);
    } completion:^(BOOL finished) {
    }];
    
    [UIView animateWithDuration:self.animationDuration - scaleDownAnimation delay:scaleDownAnimation - 0.01 options:UIViewAnimationOptionCurveEaseIn animations:^{
        CGAffineTransform scaleTransform = CGAffineTransformMakeScale(3, 3);
        launchView.iconImageView.transform = scaleTransform;
        launchView.alpha = 0;
    } completion:^(BOOL finished) {
        [self finishAnimaion];
    }];
}

@end
