//
//  QIULaunchAnimationStrategy.m
//  scorpion
//
//  Created by QiuFeng on 1/8/16.
//  Copyright © 2016 www.sui.me. All rights reserved.
//

#import "QIULaunchAnimationStrategy.h"
#import <Foundation/Foundation.h>

@interface QIULaunchAnimationStrategy ()

@end

@implementation QIULaunchAnimationStrategy

- (NSTimeInterval)animationDuration {
    if (_animationDuration == 0) {
        _animationDuration = 0.8;
    }
    return _animationDuration;
}

- (void)startAnimation:(UIView *)launchView {
    if (launchView == nil) {
        UIStoryboard *launchStoryboard = [UIStoryboard storyboardWithName:@"LaunchScreen" bundle:nil];
        launchView = launchStoryboard.instantiateInitialViewController.view;
        NSAssert(launchView != nil, @"launch view cannot be nil");
    }
    
    self.launchView = launchView;
    
    if ([self.delegate respondsToSelector:@selector(launchAnimationStrategyWillStartAnimation:launchView:)]) {
        [self.delegate launchAnimationStrategyWillStartAnimation:self launchView:self.launchView];
    }
    
    UIView *superView = [UIApplication sharedApplication].windows[0];
    [superView addSubview:launchView];
    launchView.layer.zPosition = 999;
    [launchView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[launchView]-0-|" options:NSLayoutFormatAlignAllLeading metrics:nil views:NSDictionaryOfVariableBindings(launchView)]];
    [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[launchView]-0-|" options:NSLayoutFormatAlignAllLeading metrics:nil views:NSDictionaryOfVariableBindings(launchView)]];
}

- (void)finishAnimaion {
    [self.launchView removeFromSuperview];
    if ([self.delegate respondsToSelector:@selector(launchAnimationStrategyDidFinishAnimation:launchView:)]) {
        [self.delegate launchAnimationStrategyDidFinishAnimation:self launchView:self.launchView];
    }
}

@end
