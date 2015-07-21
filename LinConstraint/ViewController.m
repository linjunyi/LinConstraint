//
//  ViewController.m
//  LinConstraint
//
//  Created by lin on 15/7/21.
//  Copyright (c) 2015年 lin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    UIImageView *imageView1;
    UIImageView *imageView2;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    imageView1 = [[UIImageView alloc] init];
    imageView1.backgroundColor = [UIColor greenColor];
    [self.view addSubview:imageView1];
    [imageView1 setTranslatesAutoresizingMaskIntoConstraints:NO]; //删除系统自动生成的约束，因为它们可能与自定义的约束冲突，从而导致自定义约束失效。
    NSLayoutConstraint  *constraint = [NSLayoutConstraint constraintWithItem:imageView1 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeHeight multiplier:0 constant:100];
    [self.view addConstraint:constraint];
    constraint = [NSLayoutConstraint constraintWithItem:imageView1 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeWidth multiplier:1.0 constant:0];
    [self.view addConstraint:constraint];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
