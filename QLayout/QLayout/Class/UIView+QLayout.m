//
//  UIView+QLayout.m
//  MutipleCells
//
//  Created by OFweek01 on 2020/5/11.
//  Copyright © 2020 la0fu. All rights reserved.
//

#import "UIView+QLayout.h"
#import <objc/runtime.h>

@implementation UIView (QLayout)

#pragma mark - top
- (NSLayoutConstraint *) q_top {
    [self setTopConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.topAnchor constraintEqualToAnchor:superview.topAnchor constant:0];
    cons.active = YES;
    self.qq_topCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_topConstant: (CGFloat) constant {
    [self setTopConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.topAnchor constraintEqualToAnchor:superview.topAnchor constant:constant];
    cons.active = YES;
    self.qq_topCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_top: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setTopConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor top must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.topAnchor constraintEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_topCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_topLessThanOrEqual: (CGFloat) constant {
    [self setTopConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.topAnchor constraintLessThanOrEqualToAnchor:superview.topAnchor constant:constant];
    cons.active = YES;
    self.qq_topCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_topGreaterThanOrEqual: (CGFloat) constant {
    [self setTopConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.topAnchor constraintGreaterThanOrEqualToAnchor:superview.topAnchor constant:constant];
    cons.active = YES;
    self.qq_topCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_topLessThanOrEqual: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setTopConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor topLessThanOrEqual must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.topAnchor constraintLessThanOrEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_topCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_topGreaterThanOrEqual: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setTopConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor topGreaterThanOrEqual must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.topAnchor constraintGreaterThanOrEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_topCons = cons;
    return cons;
}

#pragma mark - left
- (NSLayoutConstraint *) q_left {
    [self setLeftConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.leftAnchor constraintEqualToAnchor:superview.leftAnchor constant:0];
    cons.active = YES;
    self.qq_leftCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_leftConstant: (CGFloat) constant {
    [self setLeftConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
     UIView *superview = self.superview;
     NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
     NSLayoutConstraint *cons = [self.leftAnchor constraintEqualToAnchor:superview.leftAnchor constant:constant];
     cons.active = YES;
    self.qq_leftCons = cons;
     return cons;
}

- (NSLayoutConstraint *) q_left: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setLeftConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor left must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.leftAnchor constraintEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_leftCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_leftLessThanOrEqual: (CGFloat) constant {
    [self setLeftConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.leftAnchor constraintLessThanOrEqualToAnchor:superview.leftAnchor constant:constant];
    cons.active = YES;
    self.qq_leftCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_leftGreaterThanOrEqual: (CGFloat) constant {
    [self setLeftConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.leftAnchor constraintGreaterThanOrEqualToAnchor:superview.leftAnchor constant:constant];
    cons.active = YES;
    self.qq_leftCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_leftLessThanOrEqual: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setLeftConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor leftLessThanOrEqual must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.leftAnchor constraintLessThanOrEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_leftCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_leftGreaterThanOrEqual: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setLeftConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor leftGreaterThanOrEqual must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.leftAnchor constraintGreaterThanOrEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_leftCons = cons;
    return cons;
}

#pragma mark - leading
- (NSLayoutConstraint *) q_leading {
    [self setLeadingConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.leadingAnchor constraintEqualToAnchor:superview.leadingAnchor constant:0];
    cons.active = YES;
    self.qq_leadingCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_leadingConstant: (CGFloat) constant {
    [self setLeadingConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.leadingAnchor constraintEqualToAnchor:superview.leadingAnchor constant:constant];
    cons.active = YES;
    self.qq_leadingCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_leading: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setLeadingConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor leading must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.leadingAnchor constraintEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_leadingCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_leadingLessThanOrEqual: (CGFloat) constant {
    [self setLeadingConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.leadingAnchor constraintLessThanOrEqualToAnchor:superview.leadingAnchor constant:constant];
    cons.active = YES;
    self.qq_leadingCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_leadingGreaterThanOrEqual: (CGFloat) constant {
    [self setLeadingConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.leadingAnchor constraintGreaterThanOrEqualToAnchor:superview.leadingAnchor constant:constant];
    cons.active = YES;
    self.qq_leadingCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_leadingLessThanOrEqual: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setLeadingConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor leadingLessThanOrEqual must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.leadingAnchor constraintLessThanOrEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_leadingCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_leadingGreaterThanOrEqual: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setLeadingConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor leadingGreaterThanOrEqual must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.leadingAnchor constraintGreaterThanOrEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_leadingCons = cons;
    return cons;
}

#pragma mark - bottom
- (NSLayoutConstraint *) q_bottom {
    [self setBottomConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.bottomAnchor constraintEqualToAnchor:superview.bottomAnchor constant:0];
    cons.active = YES;
    self.qq_bottomCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_bottomConstant: (CGFloat) constant {
    [self setBottomConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
     UIView *superview = self.superview;
     NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
     NSLayoutConstraint *cons = [self.bottomAnchor constraintEqualToAnchor:superview.bottomAnchor constant:constant];
     cons.active = YES;
    self.qq_bottomCons = cons;
     return cons;
}

- (NSLayoutConstraint *) q_bottom: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setBottomConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor bottom must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.bottomAnchor constraintEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_bottomCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_bottomLessThanOrEqual: (CGFloat) constant {
    [self setBottomConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.bottomAnchor constraintLessThanOrEqualToAnchor:superview.bottomAnchor constant:constant];
    cons.active = YES;
    self.qq_bottomCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_bottomGreaterThanOrEqual: (CGFloat) constant {
    [self setBottomConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.bottomAnchor constraintGreaterThanOrEqualToAnchor:superview.bottomAnchor constant:constant];
    cons.active = YES;
    self.qq_bottomCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_bottomLessThanOrEqual: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setBottomConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor bottomLessThanOrEqual must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.bottomAnchor constraintLessThanOrEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_bottomCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_bottomGreaterThanOrEqual: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setBottomConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor bottomGreaterThanOrEqual must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.bottomAnchor constraintGreaterThanOrEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_bottomCons = cons;
    return cons;
}


#pragma mark - right
- (NSLayoutConstraint *) q_right {
    [self setRightConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.rightAnchor constraintEqualToAnchor:superview.rightAnchor constant:0];
    cons.active = YES;
    self.qq_rightCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_rightConstant: (CGFloat) constant {
    [self setRightConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.rightAnchor constraintEqualToAnchor:superview.rightAnchor constant:constant];
    cons.active = YES;
    self.qq_rightCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_right: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setRightConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor right must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.rightAnchor constraintEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_rightCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_rightLessThanOrEqual: (CGFloat) constant {
    [self setRightConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.rightAnchor constraintLessThanOrEqualToAnchor:superview.rightAnchor constant:constant];
    cons.active = YES;
    self.qq_rightCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_rightGreaterThanOrEqual: (CGFloat) constant {
    [self setRightConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.rightAnchor constraintGreaterThanOrEqualToAnchor:superview.rightAnchor constant:constant];
    cons.active = YES;
    self.qq_rightCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_rightLessThanOrEqual: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setRightConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor rightLessThanOrEqual must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.rightAnchor constraintLessThanOrEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_rightCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_rightGreaterThanOrEqual: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setRightConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor rightGreaterThanOrEqual must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.rightAnchor constraintGreaterThanOrEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_rightCons = cons;
    return cons;
}

#pragma mark - trailing
- (NSLayoutConstraint *) q_trailing {
    [self setTrailingConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.trailingAnchor constraintEqualToAnchor:superview.trailingAnchor constant:0];
    cons.active = YES;
    self.qq_trailingCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_trailingConstant: (CGFloat) constant {
    [self setTrailingConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.trailingAnchor constraintEqualToAnchor:superview.trailingAnchor constant:constant];
    cons.active = YES;
    self.qq_trailingCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_trailing: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setTrailingConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor trailing must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.trailingAnchor constraintEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_trailingCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_trailingLessThanOrEqual: (CGFloat) constant {
    [self setTrailingConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.trailingAnchor constraintLessThanOrEqualToAnchor:superview.trailingAnchor constant:constant];
    cons.active = YES;
    self.qq_trailingCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_trailingGreaterThanOrEqual: (CGFloat) constant {
    [self setTrailingConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.trailingAnchor constraintGreaterThanOrEqualToAnchor:superview.trailingAnchor constant:constant];
    cons.active = YES;
    self.qq_trailingCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_trailingLessThanOrEqual: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setTrailingConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor trailingLessThanOrEqual must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.trailingAnchor constraintLessThanOrEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_trailingCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_trailingGreaterThanOrEqual: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setTrailingConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor trailingGreaterThanOrEqual must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.trailingAnchor constraintGreaterThanOrEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_trailingCons = cons;
    return cons;
}

#pragma mark - width
- (NSLayoutConstraint *) q_width {
    [self setWidthConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.widthAnchor constraintEqualToAnchor:superview.widthAnchor constant:0];
    cons.active = YES;
    self.qq_widthCons = cons;
    return cons;
}
- (NSLayoutConstraint *) q_widthConstant: (CGFloat) constant {
    [self setWidthConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.widthAnchor constraintEqualToAnchor:superview.widthAnchor constant:constant];
    cons.active = YES;
    self.qq_widthCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_width: (NSLayoutDimension *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setWidthConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor width must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.widthAnchor constraintEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_widthCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_width: (NSLayoutDimension *) superViewLayoutAnchor multiplier: (CGFloat)multiplier constant: (CGFloat) constant {
    [self setWidthConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor widthAnchor multiplier must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.widthAnchor constraintEqualToAnchor:superViewLayoutAnchor multiplier:multiplier constant:constant];
    cons.active = YES;
    self.qq_widthCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_widthLessThanOrEqual: (CGFloat) constant {
    [self setWidthConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.widthAnchor constraintLessThanOrEqualToConstant:constant];
    cons.active = YES;
    self.qq_widthCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_widthGreaterThanOrEqual: (CGFloat) constant {
    [self setWidthConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.widthAnchor constraintGreaterThanOrEqualToConstant:constant];
    cons.active = YES;
    self.qq_widthCons = cons;
    return cons;
}

#pragma mark - height
- (NSLayoutConstraint *) q_height {
    [self setHeightConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.heightAnchor constraintEqualToAnchor:superview.heightAnchor constant:0];
    cons.active = YES;
    self.qq_heightCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_heightConstant: (CGFloat) constant {
    [self setHeightConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.heightAnchor constraintEqualToAnchor:superview.heightAnchor constant:constant];
    cons.active = YES;
    self.qq_heightCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_height: (NSLayoutDimension *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setHeightConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor heightAnchor must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.heightAnchor constraintEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_heightCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_height: (NSLayoutDimension *) superViewLayoutAnchor multiplier: (CGFloat)multiplier constant: (CGFloat) constant {
    [self setHeightConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor heightAnchor multiplier must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.heightAnchor constraintEqualToAnchor:superViewLayoutAnchor multiplier:multiplier constant:constant];
    cons.active = YES;
    self.qq_heightCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_heightLessThanOrEqual: (CGFloat) constant {
    [self setHeightConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.heightAnchor constraintLessThanOrEqualToConstant:constant];
    cons.active = YES;
    self.qq_widthCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_heightGreaterThanOrEqual: (CGFloat) constant {
    [self setHeightConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.heightAnchor constraintGreaterThanOrEqualToConstant:constant];
    cons.active = YES;
    self.qq_widthCons = cons;
    return cons;
}

#pragma mark - centerX
- (NSLayoutConstraint *) q_centerX {
    [self setCenterXConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.centerXAnchor constraintEqualToAnchor:superview.centerXAnchor constant:0];
    cons.active = YES;
    self.qq_centerXCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_centerXConstant: (CGFloat) constant {
    [self setCenterXConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
     UIView *superview = self.superview;
     NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
     NSLayoutConstraint *cons = [self.centerXAnchor constraintEqualToAnchor:superview.centerXAnchor constant:constant];
     cons.active = YES;
    self.qq_centerXCons = cons;
     return cons;
}

- (NSLayoutConstraint *) q_centerX: (NSLayoutAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setCenterXConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor centerX must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.centerXAnchor constraintEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_centerXCons = cons;
    return cons;
}

#pragma mark - centerY
- (NSLayoutConstraint *) q_centerY {
    [self setCenterYConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.centerYAnchor constraintEqualToAnchor:superview.centerYAnchor constant:0];
    cons.active = YES;
    self.qq_centerYCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_centerYConstant: (CGFloat) constant {
    [self setCenterYConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.centerYAnchor constraintEqualToAnchor:superview.centerYAnchor constant:constant];
    cons.active = YES;
    self.qq_centerYCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_centerY: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setCenterYConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor centerY must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.centerYAnchor constraintEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_centerYCons = cons;
    return cons;
}

#pragma mark - edge
- (NSArray <NSLayoutConstraint *> *) q_edge {
    NSLayoutConstraint *topCons = [self q_top];
    NSLayoutConstraint *leftCons = [self q_left];
    NSLayoutConstraint *bottomCons = [self q_bottom];
    NSLayoutConstraint *rightCons = [self q_right];
    NSMutableArray *cons = [NSMutableArray array];
    [cons addObject:topCons];
    [cons addObject:leftCons];
    [cons addObject:bottomCons];
    [cons addObject:rightCons];
    self.qq_edgeCons = cons;
    return cons;
}

- (NSArray <NSLayoutConstraint *> *) q_edge: (UIEdgeInsets) insets {
    NSLayoutConstraint *topCons = [self q_topConstant:insets.top];
    NSLayoutConstraint *leftCons = [self q_leftConstant:insets.left];
    NSLayoutConstraint *bottomCons = [self q_bottomConstant:insets.bottom];
    NSLayoutConstraint *rightCons = [self q_rightConstant:insets.right];
    NSMutableArray *cons = [NSMutableArray array];
    [cons addObject:topCons];
    [cons addObject:leftCons];
    [cons addObject:bottomCons];
    [cons addObject:rightCons];
    self.qq_edgeCons = cons;
    return cons;
}

#pragma mark - Getter & Setter
static void *kUIViewLayoutMethodPropertyTop = &kUIViewLayoutMethodPropertyTop;
static void *kUIViewLayoutMethodPropertyRight = &kUIViewLayoutMethodPropertyRight;
static void *kUIViewLayoutMethodPropertyTrailing = &kUIViewLayoutMethodPropertyTrailing;
static void *kUIViewLayoutMethodPropertyBottom = &kUIViewLayoutMethodPropertyBottom;
static void *kUIViewLayoutMethodPropertyLeft = &kUIViewLayoutMethodPropertyLeft;
static void *kUIViewLayoutMethodPropertyLeading = &kUIViewLayoutMethodPropertyLeading;
static void *kUIViewLayoutMethodPropertyWidth = &kUIViewLayoutMethodPropertyWidth;
static void *kUIViewLayoutMethodPropertyHeight = &kUIViewLayoutMethodPropertyHeight;
static void *kUIViewLayoutMethodPropertyCenterX = &kUIViewLayoutMethodPropertyCenterX;
static void *kUIViewLayoutMethodPropertyCenterY = &kUIViewLayoutMethodPropertyCenterY;
static void *kUIViewLayoutMethodPropertyEdge = &kUIViewLayoutMethodPropertyEdge;


- (void)setQq_topCons:(NSLayoutConstraint *)qq_topCons {
    objc_setAssociatedObject(self, kUIViewLayoutMethodPropertyTop, qq_topCons, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSLayoutConstraint *)qq_topCons {
    return objc_getAssociatedObject(self, kUIViewLayoutMethodPropertyTop);
}

- (void)setQq_rightCons:(NSLayoutConstraint *)qq_rightCons {
    objc_setAssociatedObject(self, kUIViewLayoutMethodPropertyRight, qq_rightCons, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSLayoutConstraint *)qq_rightCons {
    return objc_getAssociatedObject(self, kUIViewLayoutMethodPropertyRight);
}

- (void)setQq_trailingCons:(NSLayoutConstraint *)qq_trailingCons {
    objc_setAssociatedObject(self, kUIViewLayoutMethodPropertyTrailing, qq_trailingCons, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSLayoutConstraint *)qq_trailingCons {
    return objc_getAssociatedObject(self, kUIViewLayoutMethodPropertyTrailing);
}

- (void)setQq_bottomCons:(NSLayoutConstraint *)qq_bottomCons {
    objc_setAssociatedObject(self, kUIViewLayoutMethodPropertyBottom, qq_bottomCons, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSLayoutConstraint *)qq_bottomCons {
    return objc_getAssociatedObject(self, kUIViewLayoutMethodPropertyBottom);
}

- (void)setQq_leftCons:(NSLayoutConstraint *)qq_leftCons {
    objc_setAssociatedObject(self, kUIViewLayoutMethodPropertyLeft, qq_leftCons, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSLayoutConstraint *)qq_leftCons {
    return objc_getAssociatedObject(self, kUIViewLayoutMethodPropertyLeft);
}

- (void)setQq_leadingCons:(NSLayoutConstraint *)qq_leadingCons {
    objc_setAssociatedObject(self, kUIViewLayoutMethodPropertyLeading, qq_leadingCons, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSLayoutConstraint *)qq_leadingCons {
    return objc_getAssociatedObject(self, kUIViewLayoutMethodPropertyLeading);
}

- (void)setQq_widthCons:(NSLayoutConstraint *)qq_widthCons {
    objc_setAssociatedObject(self, kUIViewLayoutMethodPropertyWidth, qq_widthCons, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSLayoutConstraint *)qq_widthCons {
    return objc_getAssociatedObject(self, kUIViewLayoutMethodPropertyLeading);
}

- (void)setQq_heightCons:(NSLayoutConstraint *)qq_heightCons {
    objc_setAssociatedObject(self, kUIViewLayoutMethodPropertyHeight, qq_heightCons, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSLayoutConstraint *)qq_heightCons {
    return objc_getAssociatedObject(self, kUIViewLayoutMethodPropertyHeight);
}

- (void)setQq_centerXCons:(NSLayoutConstraint *)qq_centerXCons {
    objc_setAssociatedObject(self, kUIViewLayoutMethodPropertyCenterX, qq_centerXCons, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSLayoutConstraint *)qq_centerXCons {
    return objc_getAssociatedObject(self, kUIViewLayoutMethodPropertyCenterX);
}

- (void)setQq_centerYCons:(NSLayoutConstraint *)qq_centerYCons {
    objc_setAssociatedObject(self, kUIViewLayoutMethodPropertyCenterY, qq_centerYCons, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSLayoutConstraint *)qq_centerYCons {
    return objc_getAssociatedObject(self, kUIViewLayoutMethodPropertyCenterY);
}

- (void)setQq_edgeCons:(NSMutableArray<NSLayoutConstraint *> *)qq_edgeCons {
    objc_setAssociatedObject(self, kUIViewLayoutMethodPropertyEdge, qq_edgeCons, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSMutableArray<NSLayoutConstraint *> *)qq_edgeCons {
    return [NSMutableArray arrayWithArray:objc_getAssociatedObject(self, kUIViewLayoutMethodPropertyEdge)];
}

#pragma mark - Private methods
- (void) setTopConsNoActive {
    if (self.qq_topCons) {
        self.qq_topCons.active = NO;
    }
}

- (void) setLeadingConsNoActive {
    if (self.qq_leadingCons) {
        self.qq_leadingCons.active = NO;
    }
}

- (void) setRightConsNoActive {
    if (self.qq_rightCons) {
        self.qq_rightCons.active = NO;
    }
}

- (void) setTrailingConsNoActive {
    if (self.qq_trailingCons) {
        self.qq_trailingCons.active = NO;
    }
}

- (void) setBottomConsNoActive {
    if (self.qq_bottomCons) {
        self.qq_bottomCons.active = NO;
    }
}

- (void) setLeftConsNoActive {
    if (self.qq_leftCons) {
        self.qq_leftCons.active = NO;
    }
}

- (void) setWidthConsNoActive {
    if (self.qq_widthCons) {
        self.qq_widthCons.active = NO;
    }
}

- (void) setHeightConsNoActive {
    if (self.qq_heightCons) {
        self.qq_heightCons.active = NO;
    }
}

- (void) setCenterXConsNoActive {
    if (self.qq_centerXCons) {
        self.qq_centerXCons.active = NO;
    }
}

- (void) setCenterYConsNoActive {
    if (self.qq_centerYCons) {
        self.qq_centerYCons.active = NO;
    }
}

@end
