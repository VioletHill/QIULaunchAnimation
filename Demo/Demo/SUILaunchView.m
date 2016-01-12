//
//  SUILaunchView.m
//  scorpion
//
//  Created by QiuFeng on 1/8/16.
//  Copyright © 2016 www.sui.me. All rights reserved.
//

#import "SUILaunchView.h"

@implementation SUILaunchView

+ (instancetype)getInstance {
    SUILaunchView *launchImageView = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil][0];
    return launchImageView;
}

@end
