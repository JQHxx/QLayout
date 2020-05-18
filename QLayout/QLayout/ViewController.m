//
//  ViewController.m
//  QLayout
//
//  Created by OFweek01 on 2020/5/11.
//  Copyright © 2020 OFweek01. All rights reserved.
//

#import "ViewController.h"
#import "QQLayout.h"

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
    
    //[@[readView, greenView] qq_viewsAlignToEdge:QEdgeTop];
    //[@[readView, greenView] qq_viewsAlignToEdge:QEdgeBottom];
    [@[readView, greenView] qq_viewsAlignToAxis:QQAxisHorizontal];
    [@[readView, greenView] qq_viewsWidthEqual];
    [@[readView, greenView] qq_viewsHeightEqual];
    
    [readView qq_sizeEqualSize:CGSizeMake(50, 100)];
    [readView qq_pinEdgeToSuperViewEdge:QQEdgeTop withInset:100];
    [greenView qq_pinEdge:QQEdgeLeft toEdge:QQEdgeRight ofView:readView];
    [readView qq_pinEdgeToSuperViewEdge:QQEdgeTop withInset:100];

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
    [view qq_pinEdge:QQEdgeTop toEdge:QQEdgeTop ofView:self.view];
    [view qq_pinEdge:QQEdgeLeft toEdge:QQEdgeLeft ofView:self.view];
    [view qq_pinEdge:QQEdgeRight toEdge:QQEdgeRight ofView:self.view];
    [view qq_pinEdge:QQEdgeBottom toEdge:QQEdgeBottom ofViewSafeArea:self.view];
}


- (void) test2: (UIView *) view {
    [view removeAllConstants];
    [view qq_pinEdgesEqualSuperViewSafeArea];
}

- (void) test3: (UIView *) view {
    [view removeAllConstants];
    [view qq_centerXEqualSuperView];
    [view qq_centerYEqualSuperView];
    [view qq_sizeEqualSize:CGSizeMake(100, 100)];
}

- (void) test4: (UIView *) view {
    [view removeAllConstants];
    [view qq_pinEdgesEqualSuperViewInsets:UIEdgeInsetsMake(50, 0, -50, 0)];
}



@end
