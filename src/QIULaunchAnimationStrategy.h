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

- (void)launchAnimationStrategyWillStartAnimation:(QIULaunchAnimationStrategy *)strategy launchView:(UIView *)launchView;
- (void)launchAnimationStrategyDidFinishAnimation:(QIULaunchAnimationStrategy *)strategy launchView:(UIView *)launchView;

@end

@interface QIULaunchAnimationStrategy : NSObject

@property (nonatomic, assign) NSTimeInterval animationDuration;

@property (nonatomic, strong) id<QIULaunchAnimationDelegate> delegate;

- (void)startAnimation:(__kindof UIView *)launchView;

- (void)finishAnimaion;

@end

NS_ASSUME_NONNULL_END