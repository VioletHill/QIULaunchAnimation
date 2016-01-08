//
//  QIULaunchAnimationFade.m
//  scorpion
//
//  Created by QiuFeng on 1/8/16.
//  Copyright © 2016 www.sui.me. All rights reserved.
//

#import "QIULaunchAnimationFade.h"

@implementation QIULaunchAnimationFade

- (void)startAnimation:(UIView *)launchView {
    [super startAnimation:launchView];
    [UIView animateWithDuration:self.animationDuration animations:^{
        launchView.alpha = 0;
    } completion:^(BOOL finished) {
        [self finishAnimaion];
    }];
}

@end
