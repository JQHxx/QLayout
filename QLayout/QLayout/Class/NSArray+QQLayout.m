//
//  NSArray+QLayout.m
//  QLayout
//
//  Created by OFweek01 on 2020/5/13.
//  Copyright © 2020 OFweek01. All rights reserved.
//

#import "NSArray+QQLayout.h"
#import "UIView+QQLayout.h"

@implementation NSArray (QQLayout)

- (NSArray <NSLayoutConstraint *> *)qq_viewsAlignToEdge:(QQEdge)edge {
    NSAssert([self qq_containsMinimumNumberOfViews:2], @"This array must contain at least 2 views.");
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    UIView *previousView = nil;
    for (id object in self) {
        if ([object isKindOfClass:[UIView class]]) {
            UIView *view = (UIView *)object;
            view.translatesAutoresizingMaskIntoConstraints = NO;
            if (previousView) {
                [constraints addObject:[view qq_pinEdge:edge toEdge:edge ofView:previousView withOffset:0]];
            }
            previousView = view;
        }
    }
    return constraints;
}

- (NSArray <NSLayoutConstraint *> *)qq_viewsAlignToAxis:(QQAxis)axis {
    NSAssert([self qq_containsMinimumNumberOfViews:2], @"This array must contain at least 2 views.");
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    UIView *previousView = nil;
    for (id object in self) {
        if ([object isKindOfClass:[UIView class]]) {
            UIView *view = (UIView *)object;
            view.translatesAutoresizingMaskIntoConstraints = NO;
            if (previousView) {
                switch (axis) {
                    case QQAxisVertical: {
                        [constraints addObject:[view qq_centerXEqualXAxisAnchor:previousView.centerXAnchor constant:0]];
                        break;
                    }
                    case QQAxisHorizontal: {
                        [constraints addObject:[view qq_centerYEqualYAxisAnchor:previousView.centerYAnchor constant:0]];
                        break;
                    }
                }
            }
            previousView = view;
        }
    }
    return constraints;
}

- (NSArray <NSLayoutConstraint *> *)qq_viewsWidthEqual {
    NSAssert([self qq_containsMinimumNumberOfViews:2], @"This array must contain at least 2 views.");
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    UIView *previousView = nil;
    for (id object in self) {
        if ([object isKindOfClass:[UIView class]]) {
            UIView *view = (UIView *)object;
            view.translatesAutoresizingMaskIntoConstraints = NO;
            if (previousView) {
                [constraints addObject:[view qq_widthEqualDimension:previousView.widthAnchor multiplier:1.0 constant:0 relation:NSLayoutRelationEqual]];
            }
            previousView = view;
        }
    }
    return constraints;
}

- (NSArray <NSLayoutConstraint *> *)qq_viewsHeightEqual {
    NSAssert([self qq_containsMinimumNumberOfViews:2], @"This array must contain at least 2 views.");
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    UIView *previousView = nil;
    for (id object in self) {
        if ([object isKindOfClass:[UIView class]]) {
            UIView *view = (UIView *)object;
            view.translatesAutoresizingMaskIntoConstraints = NO;
            if (previousView) {
                [constraints addObject:[view qq_heightEqualDimension:previousView.heightAnchor multiplier:1.0 constant:0 relation:NSLayoutRelationEqual]];
            }
            previousView = view;
        }
    }
    return constraints;
}


#pragma mark - Private methods
- (BOOL)qq_containsMinimumNumberOfViews:(NSUInteger)minimumNumberOfViews
{
    NSUInteger numberOfViews = 0;
    for (id object in self) {
        if ([object isKindOfClass:[UIView class]]) {
            numberOfViews++;
            if (numberOfViews >= minimumNumberOfViews) {
                return YES;
            }
        }
    }
    return numberOfViews >= minimumNumberOfViews;
}

@end
