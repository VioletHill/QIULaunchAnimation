//
//  SUILaunchView.h
//  scorpion
//
//  Created by QiuFeng on 1/8/16.
//  Copyright © 2016 www.sui.me. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SUILaunchView : UIView

@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;

+ (instancetype)getInstance;

@end

NS_ASSUME_NONNULL_END