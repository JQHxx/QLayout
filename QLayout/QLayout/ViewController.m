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
    readView.frame = CGRectMake(0, 0, 300, 300);
    readView.backgroundColor = [UIColor redColor];
    [self.view addSubview:readView];
    
    UIView *greenView = [[UIView alloc]init];
    greenView.frame = CGRectMake(0, 0, 300, 300);
    greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:greenView];
    
    //[@[readView, greenView] q_viewsAlignToEdge:QEdgeTop];
    //[@[readView, greenView] q_viewsAlignToEdge:QEdgeBottom];
    [@[readView, greenView] q_viewsAlignToAxis:QAxisHorizontal];
    [@[readView, greenView] q_viewsWidthEqual];
    [@[readView, greenView] q_viewsHeightEqual];
    
    [readView q_sizeEqualSize:CGSizeMake(50, 100)];
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
    
    /*
    NSMapTable *mapTable = [[NSMapTable alloc]init];
    [mapTable setObject:@"test" forKey:@"key"];
    
    NSArray *ids = [mapTable keyEnumerator].allObjects;
    NSArray *objs = [mapTable objectEnumerator].allObjects;
     */

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
    [view q_sizeEqualSize:CGSizeMake(100, 100)];
}

- (void) test4: (UIView *) view {
    [view removeAllConstants];
    [view q_pinEdgesEqualSuperViewInsets:UIEdgeInsetsMake(50, 0, -50, 0)];
}



@end
