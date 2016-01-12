//
//  ViewController.m
//  Demo
//
//  Created by QiuFeng on 1/12/16.
//  Copyright © 2016 www.sui.me. All rights reserved.
//

#import "ViewController.h"
#import "QIULaunchAnimation.h"

#import "SUILaunchAnimationCustom.h"
#import "SUILaunchView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self customAnimation];
    
    //[self scaleAnimation];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)fadeAnimation {
    QIULaunchAnimationFade *fadeAnimation = [[QIULaunchAnimationFade alloc] init];
    //fadeAnimation.animationDuration = 5;
    [fadeAnimation startAnimation:nil];
}

- (void)scaleAnimation {
    QIULaunchAnimationScale *scaleAnimation = [[QIULaunchAnimationScale alloc] init];
    [scaleAnimation startAnimation:nil];
}

- (void)customAnimation {
    SUILaunchView *launchImageView = [SUILaunchView getInstance];
    SUILaunchAnimationCustom *customScale = [[SUILaunchAnimationCustom alloc] init];
    [customScale startAnimation:launchImageView];
}

@end
