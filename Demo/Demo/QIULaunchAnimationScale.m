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
    
    [UIView animateWithDuration:self.animationDuration animations:^{
        self.launchView.transform = CGAffineTransformMakeScale(3, 3);
        self.launchView.alpha = 0;
    } completion:^(BOOL finished) {
        [super finishAnimaion];
    }];
}

@end
