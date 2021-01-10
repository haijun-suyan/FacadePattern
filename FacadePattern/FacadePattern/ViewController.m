//
//  ViewController.m
//  FacadePattern
//
//  Created by haijunyan on 2019/2/27.
//  Copyright © 2019年 haijunyan. All rights reserved.
//

#import "ViewController.h"
#import "ShapeMaker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self FacadePatternMethod];
}

/**
 解耦(简化调用指令(具体封装于底层))
 */
- (void)FacadePatternMethod {
    //绘制圆
    [ShapeMaker drawCircleWithParas:@{@"radius":@(20.0)}];
    
    //绘制圆+矩形
    [ShapeMaker drawCircleAndRectangle:@{@"radius":@(20.0), @"rectangleWid" : @(15.0),@"rectangleHht":[NSNumber numberWithFloat:5.0f]}];

}

@end
