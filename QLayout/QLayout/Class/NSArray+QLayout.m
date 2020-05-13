//
//  NSArray+QLayout.m
//  QLayout
//
//  Created by OFweek01 on 2020/5/13.
//  Copyright © 2020 OFweek01. All rights reserved.
//

#import "NSArray+QLayout.h"
#import "UIView+QLayout.h"

@implementation NSArray (QLayout)

- (NSArray <NSLayoutConstraint *> *)q_viewsAlignToEdge:(QEdge)edge {
    NSAssert([self q_containsMinimumNumberOfViews:2], @"This array must contain at least 2 views.");
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    UIView *previousView = nil;
    for (id object in self) {
        if ([object isKindOfClass:[UIView class]]) {
            UIView *view = (UIView *)object;
            view.translatesAutoresizingMaskIntoConstraints = NO;
            if (previousView) {
                [constraints addObject:[view q_pinEdge:edge toEdge:edge ofView:previousView withOffset:0]];
            }
            previousView = view;
        }
    }
    return constraints;
}

- (NSArray <NSLayoutConstraint *> *)q_viewsAlignToAxis:(QAxis)axis {
    NSAssert([self q_containsMinimumNumberOfViews:2], @"This array must contain at least 2 views.");
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    UIView *previousView = nil;
    for (id object in self) {
        if ([object isKindOfClass:[UIView class]]) {
            UIView *view = (UIView *)object;
            view.translatesAutoresizingMaskIntoConstraints = NO;
            if (previousView) {
                switch (axis) {
                    case QAxisVertical: {
                        [constraints addObject:[view q_centerXEqualXAxisAnchor:previousView.centerXAnchor constant:0]];
                        break;
                    }
                    case QAxisHorizontal: {
                        [constraints addObject:[view q_centerYEqualYAxisAnchor:previousView.centerYAnchor constant:0]];
                        break;
                    }
                }
            }
            previousView = view;
        }
    }
    return constraints;
}

- (NSArray <NSLayoutConstraint *> *)q_viewsWidthEqual {
    NSAssert([self q_containsMinimumNumberOfViews:2], @"This array must contain at least 2 views.");
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    UIView *previousView = nil;
    for (id object in self) {
        if ([object isKindOfClass:[UIView class]]) {
            UIView *view = (UIView *)object;
            view.translatesAutoresizingMaskIntoConstraints = NO;
            if (previousView) {
                [constraints addObject:[view q_widthEqualDimension:previousView.widthAnchor multiplier:1.0 constant:0 relation:NSLayoutRelationEqual]];
            }
            previousView = view;
        }
    }
    return constraints;
}

- (NSArray <NSLayoutConstraint *> *)q_viewsHeightEqual {
    NSAssert([self q_containsMinimumNumberOfViews:2], @"This array must contain at least 2 views.");
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    UIView *previousView = nil;
    for (id object in self) {
        if ([object isKindOfClass:[UIView class]]) {
            UIView *view = (UIView *)object;
            view.translatesAutoresizingMaskIntoConstraints = NO;
            if (previousView) {
                [constraints addObject:[view q_heightEqualDimension:previousView.heightAnchor multiplier:1.0 constant:0 relation:NSLayoutRelationEqual]];
            }
            previousView = view;
        }
    }
    return constraints;
}


#pragma mark - Private methods
- (BOOL)q_containsMinimumNumberOfViews:(NSUInteger)minimumNumberOfViews
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
