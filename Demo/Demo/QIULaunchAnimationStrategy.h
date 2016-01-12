//
//  QIULaunchAnimationStrategy.h
//  scorpion
//
//  Created by QiuFeng on 1/8/16.
//  Copyright © 2016 www.sui.me. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class QIULaunchAnimationStrategy;

@protocol QIULaunchAnimationDelegate <NSObject>

@optional

- (void)launchAnimationStrategyWillStartAnimation:(QIULaunchAnimationStrategy *)strategy launchView:(__kindof UIView *)launchView;
- (void)launchAnimationStrategyDidFinishAnimation:(QIULaunchAnimationStrategy *)strategy launchView:(__kindof UIView *)launchView;

@end

@interface QIULaunchAnimationStrategy : NSObject

@property (nonatomic, assign) NSTimeInterval animationDuration;
@property (nonatomic, strong) UIView *launchView;

@property (nonatomic, strong) id<QIULaunchAnimationDelegate> delegate;

/**
 *  if you set launchView nil, it would load LaunchScreen.storyboard.instantiateInitialViewController.view
 *
 *  @param launchView animation of View
 */
- (void)startAnimation:(nullable __kindof UIView *)launchView;


/**
 *  if you want to custom animation, make sure to call this method after animation finish
 */
- (void)finishAnimaion;

@end

NS_ASSUME_NONNULL_END