//
//  ViewController.m
//  QLayout
//
//  Created by OFweek01 on 2020/5/11.
//  Copyright © 2020 OFweek01. All rights reserved.
//

#import "ViewController.h"
#import "QLayout.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *readView = [[UIView alloc]init];
    readView.backgroundColor = [UIColor redColor];
    [self.view addSubview:readView];
    
    UIView *greenView = [[UIView alloc]init];
    greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:greenView];
    
    //[@[readView, greenView] q_viewsAlignToEdge:QEdgeTop];
    //[@[readView, greenView] q_viewsAlignToEdge:QEdgeBottom];
    [@[readView, greenView] q_viewsAlignToAxis:QAxisHorizontal];
    [@[readView, greenView] q_viewsWidthEqual];
    [@[readView, greenView] q_viewsHeightEqual];
    
    [readView q_sizeEqual:CGSizeMake(50, 100)];
    [readView q_pinEdgeToSuperViewEdge:QEdgeTop withInset:100];
    [greenView q_pinEdge:QEdgeLeft toEdge:QEdgeRight ofView:readView];
    [readView q_pinEdgeToSuperViewEdge:QEdgeTop withInset:100];

    /*
    for (UIView *view in @[readView, greenView]) {
        [view removeAllConstants];
    }
     */
    
    //[self test1:readView];
    //[self test2:readView];
    //[self test3:readView];
    //[self test4:readView];
    
}

- (void) test1: (UIView *) view {
    [view removeAllConstants];
    [view q_pinEdge:QEdgeTop toEdge:QEdgeTop ofView:self.view];
    [view q_pinEdge:QEdgeLeft toEdge:QEdgeLeft ofView:self.view];
    [view q_pinEdge:QEdgeRight toEdge:QEdgeRight ofView:self.view];
    [view q_pinEdge:QEdgeBottom toEdge:QEdgeBottom ofViewSafeArea:self.view];
}


- (void) test2: (UIView *) view {
    [view removeAllConstants];
    [view q_pinEdgesEqualSuperViewSafeArea];
}

- (void) test3: (UIView *) view {
    [view removeAllConstants];
    [view q_centerXEqualSuperView];
    [view q_centerYEqualSuperView];
    [view q_sizeEqual:CGSizeMake(100, 100)];
}

- (void) test4: (UIView *) view {
    [view removeAllConstants];
    [view q_pinEdgesEqualSuperView:UIEdgeInsetsMake(50, 0, -50, 0)];
}



@end
