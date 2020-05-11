//
//  ViewController.m
//  QLayout
//
//  Created by OFweek01 on 2020/5/11.
//  Copyright © 2020 OFweek01. All rights reserved.
//

#import "ViewController.h"
#import "UIView+QLayout.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *readView = [[UIView alloc]init];
    readView.backgroundColor = [UIColor redColor];
    [self.view addSubview:readView];
    //[self test1:readView];
    //[self test2:readView];
    [self test3:readView];
    // [self test4:readView];

}

- (void) test1: (UIView *) view {
    [view q_top:self.view.topAnchor constant:0];
    [view q_left:self.view.leftAnchor constant:0];
    [view q_right:self.view.rightAnchor constant:0];
    if (@available(iOS 11.0, *)) {
        [view q_bottom:self.view.safeAreaLayoutGuide.bottomAnchor constant:0];
    } else {
        [view q_bottom:self.view.bottomAnchor constant:0];
    }
}


- (void) test2: (UIView *) view {
    [view q_edge];
}

- (void) test4: (UIView *) view {
    [view q_edge:UIEdgeInsetsMake(10, 0, -10, 0)];
}

- (void) test3: (UIView *) view {
    [view q_widthConstant:100];
    [view q_heightConstant:100];
    [view q_centerX];
    [view q_centerY];
}

@end
