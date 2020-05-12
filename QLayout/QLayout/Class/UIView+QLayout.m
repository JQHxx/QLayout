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
- (NSLayoutConstraint *) q_topEqualSuperView {
    [self setTopConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.topAnchor constraintEqualToAnchor:superview.topAnchor constant:0];
    cons.active = YES;
    self.qq_topCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_topEqualSuperView: (CGFloat) constant {
    [self setTopConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.topAnchor constraintEqualToAnchor:superview.topAnchor constant:constant];
    cons.active = YES;
    self.qq_topCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_topEqualYAxisAnchor: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setTopConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor top must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.topAnchor constraintEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_topCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_topLessThanOrEqualSuperView: (CGFloat) constant {
    [self setTopConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.topAnchor constraintLessThanOrEqualToAnchor:superview.topAnchor constant:constant];
    cons.active = YES;
    self.qq_topCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_topGreaterThanOrEqualSuperView: (CGFloat) constant {
    [self setTopConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.topAnchor constraintGreaterThanOrEqualToAnchor:superview.topAnchor constant:constant];
    cons.active = YES;
    self.qq_topCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_topLessThanOrEqualYAxisAnchor: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setTopConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor topLessThanOrEqual must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.topAnchor constraintLessThanOrEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_topCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_topGreaterThanOrEqualYAxisAnchor: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setTopConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor topGreaterThanOrEqual must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.topAnchor constraintGreaterThanOrEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_topCons = cons;
    return cons;
}

#pragma mark - left
- (NSLayoutConstraint *) q_leftEqualSuperView {
    [self setLeftConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.leftAnchor constraintEqualToAnchor:superview.leftAnchor constant:0];
    cons.active = YES;
    self.qq_leftCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_leftEqualSuperView: (CGFloat) constant {
    [self setLeftConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.leftAnchor constraintEqualToAnchor:superview.leftAnchor constant:constant];
    cons.active = YES;
    self.qq_leftCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_leftEqualXAxisAnchor: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setLeftConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor left must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.leftAnchor constraintEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_leftCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_leftLessThanOrEqualSuperView: (CGFloat) constant {
    [self setLeftConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.leftAnchor constraintLessThanOrEqualToAnchor:superview.leftAnchor constant:constant];
    cons.active = YES;
    self.qq_leftCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_leftGreaterThanOrEqualSuperView: (CGFloat) constant {
    [self setLeftConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.leftAnchor constraintGreaterThanOrEqualToAnchor:superview.leftAnchor constant:constant];
    cons.active = YES;
    self.qq_leftCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_leftLessThanOrEqualXAxisAnchor: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setLeftConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor leftLessThanOrEqual must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.leftAnchor constraintLessThanOrEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_leftCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_leftGreaterThanOrEqualXAxisAnchor: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setLeftConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor leftGreaterThanOrEqual must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.leftAnchor constraintGreaterThanOrEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_leftCons = cons;
    return cons;
}

#pragma mark - leading
- (NSLayoutConstraint *) q_leadingEqualSuperView {
    [self setLeadingConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.leadingAnchor constraintEqualToAnchor:superview.leadingAnchor constant:0];
    cons.active = YES;
    self.qq_leadingCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_leadingEqualSuperView: (CGFloat) constant {
    [self setLeadingConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.leadingAnchor constraintEqualToAnchor:superview.leadingAnchor constant:constant];
    cons.active = YES;
    self.qq_leadingCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_leadingEqualXAxisAnchor: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setLeadingConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor leading must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.leadingAnchor constraintEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_leadingCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_leadingLessThanOrEqualSuperView: (CGFloat) constant {
    [self setLeadingConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.leadingAnchor constraintLessThanOrEqualToAnchor:superview.leadingAnchor constant:constant];
    cons.active = YES;
    self.qq_leadingCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_leadingGreaterThanOrEqualSuperView: (CGFloat) constant {
    [self setLeadingConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.leadingAnchor constraintGreaterThanOrEqualToAnchor:superview.leadingAnchor constant:constant];
    cons.active = YES;
    self.qq_leadingCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_leadingLessThanOrEqualXAxisAnchor: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setLeadingConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor leadingLessThanOrEqual must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.leadingAnchor constraintLessThanOrEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_leadingCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_leadingGreaterThanOrEqualXAxisAnchor: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setLeadingConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor leadingGreaterThanOrEqual must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.leadingAnchor constraintGreaterThanOrEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_leadingCons = cons;
    return cons;
}

#pragma mark - bottom
- (NSLayoutConstraint *) q_bottomEqualSuperView {
    [self setBottomConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.bottomAnchor constraintEqualToAnchor:superview.bottomAnchor constant:0];
    cons.active = YES;
    self.qq_bottomCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_bottomEqualSuperView: (CGFloat) constant {
    [self setBottomConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.bottomAnchor constraintEqualToAnchor:superview.bottomAnchor constant:constant];
    cons.active = YES;
    self.qq_bottomCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_bottomEqualYAxisAnchor: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setBottomConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor bottom must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.bottomAnchor constraintEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_bottomCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_bottomLessThanOrEqualSuperView: (CGFloat) constant {
    [self setBottomConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.bottomAnchor constraintLessThanOrEqualToAnchor:superview.bottomAnchor constant:constant];
    cons.active = YES;
    self.qq_bottomCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_bottomGreaterThanOrEqualSuperView: (CGFloat) constant {
    [self setBottomConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.bottomAnchor constraintGreaterThanOrEqualToAnchor:superview.bottomAnchor constant:constant];
    cons.active = YES;
    self.qq_bottomCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_bottomLessThanOrEqualYAxisAnchor: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setBottomConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor bottomLessThanOrEqual must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.bottomAnchor constraintLessThanOrEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_bottomCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_bottomGreaterThanOrEqualYAxisAnchor: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setBottomConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor bottomGreaterThanOrEqual must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.bottomAnchor constraintGreaterThanOrEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_bottomCons = cons;
    return cons;
}


#pragma mark - right
- (NSLayoutConstraint *) q_rightEqualSuperView {
    [self setRightConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.rightAnchor constraintEqualToAnchor:superview.rightAnchor constant:0];
    cons.active = YES;
    self.qq_rightCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_rightEqualSuperView: (CGFloat) constant {
    [self setRightConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.rightAnchor constraintEqualToAnchor:superview.rightAnchor constant:constant];
    cons.active = YES;
    self.qq_rightCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_rightEqualXAxisAnchor: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setRightConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor right must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.rightAnchor constraintEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_rightCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_rightLessThanOrEqualSuperView: (CGFloat) constant {
    [self setRightConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.rightAnchor constraintLessThanOrEqualToAnchor:superview.rightAnchor constant:constant];
    cons.active = YES;
    self.qq_rightCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_rightGreaterThanOrEqualSuperView: (CGFloat) constant {
    [self setRightConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.rightAnchor constraintGreaterThanOrEqualToAnchor:superview.rightAnchor constant:constant];
    cons.active = YES;
    self.qq_rightCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_rightLessThanOrEqualXAxisAnchor: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setRightConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor rightLessThanOrEqual must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.rightAnchor constraintLessThanOrEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_rightCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_rightGreaterThanOrEqualXAxisAnchor: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setRightConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor rightGreaterThanOrEqual must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.rightAnchor constraintGreaterThanOrEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_rightCons = cons;
    return cons;
}

#pragma mark - trailing
- (NSLayoutConstraint *) q_trailingEqualSuperView {
    [self setTrailingConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.trailingAnchor constraintEqualToAnchor:superview.trailingAnchor constant:0];
    cons.active = YES;
    self.qq_trailingCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_trailingEqualSuperView: (CGFloat) constant {
    [self setTrailingConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.trailingAnchor constraintEqualToAnchor:superview.trailingAnchor constant:constant];
    cons.active = YES;
    self.qq_trailingCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_trailingEqualXAxisAnchor: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setTrailingConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor trailing must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.trailingAnchor constraintEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_trailingCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_trailingLessThanOrEqualSuperView: (CGFloat) constant {
    [self setTrailingConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.trailingAnchor constraintLessThanOrEqualToAnchor:superview.trailingAnchor constant:constant];
    cons.active = YES;
    self.qq_trailingCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_trailingGreaterThanOrEqualSuperView: (CGFloat) constant {
    [self setTrailingConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.trailingAnchor constraintGreaterThanOrEqualToAnchor:superview.trailingAnchor constant:constant];
    cons.active = YES;
    self.qq_trailingCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_trailingLessThanOrEqualXAxisAnchor: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setTrailingConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor trailingLessThanOrEqual must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.trailingAnchor constraintLessThanOrEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_trailingCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_trailingGreaterThanOrEqualXAxisAnchor: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setTrailingConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor trailingGreaterThanOrEqual must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.trailingAnchor constraintGreaterThanOrEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_trailingCons = cons;
    return cons;
}

#pragma mark - width
- (NSLayoutConstraint *) q_widthEqualSuperView {
    [self setWidthConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.widthAnchor constraintEqualToAnchor:superview.widthAnchor constant:0];
    cons.active = YES;
    self.qq_widthCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_widthEqual: (CGFloat) constant {
    [self setWidthConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.widthAnchor constraintEqualToConstant:constant];
    cons.active = YES;
    self.qq_widthCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_widthEqualDimension: (NSLayoutDimension *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setWidthConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor width must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.widthAnchor constraintEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_widthCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_widthEqualDimension: (NSLayoutDimension *) superViewLayoutAnchor multiplier: (CGFloat)multiplier constant: (CGFloat) constant {
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
- (NSLayoutConstraint *) q_heightEqualSuperView {
    [self setHeightConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.heightAnchor constraintEqualToAnchor:superview.heightAnchor constant:0];
    cons.active = YES;
    self.qq_heightCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_heightEqual: (CGFloat) constant {
    [self setHeightConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.heightAnchor constraintEqualToConstant: constant];
    cons.active = YES;
    self.qq_heightCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_heightEqualDimension: (NSLayoutDimension *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setHeightConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor heightAnchor must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.heightAnchor constraintEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_heightCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_heightEqualDimension: (NSLayoutDimension *) superViewLayoutAnchor multiplier: (CGFloat)multiplier constant: (CGFloat) constant {
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
    self.qq_heightCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_heightGreaterThanOrEqual: (CGFloat) constant {
    [self setHeightConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.heightAnchor constraintGreaterThanOrEqualToConstant:constant];
    cons.active = YES;
    self.qq_heightCons = cons;
    return cons;
}

#pragma mark - size
- (NSArray *) q_sizeEqual: (CGSize) size {
    NSLayoutConstraint *widthCons = [self q_widthEqual:size.width];
    NSLayoutConstraint *heightCons = [self q_heightEqual:size.height];
    NSMutableArray *cons = [NSMutableArray array];
    [cons addObject:widthCons];
    [cons addObject:heightCons];
    return cons;
}

#pragma mark - centerX
- (NSLayoutConstraint *) q_centerXEqualSuperView {
    [self setCenterXConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.centerXAnchor constraintEqualToAnchor:superview.centerXAnchor constant:0];
    cons.active = YES;
    self.qq_centerXCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_centerXEqualSuperView: (CGFloat) constant {
    [self setCenterXConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.centerXAnchor constraintEqualToAnchor:superview.centerXAnchor constant:constant];
    cons.active = YES;
    self.qq_centerXCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_centerXEqualXAxisAnchor: (NSLayoutAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setCenterXConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor centerX must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.centerXAnchor constraintEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_centerXCons = cons;
    return cons;
}

#pragma mark - centerY
- (NSLayoutConstraint *) q_centerYEqualSuperView {
    [self setCenterYConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.centerYAnchor constraintEqualToAnchor:superview.centerYAnchor constant:0];
    cons.active = YES;
    self.qq_centerYCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_centerYEqualSuperView: (CGFloat) constant {
    [self setCenterYConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutConstraint *cons = [self.centerYAnchor constraintEqualToAnchor:superview.centerYAnchor constant:constant];
    cons.active = YES;
    self.qq_centerYCons = cons;
    return cons;
}

- (NSLayoutConstraint *) q_centerYEqualYAxisAnchor: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant {
    [self setCenterYConsNoActive];
    NSAssert(superViewLayoutAnchor != nil, @"superViewLayoutAnchor centerY must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.centerYAnchor constraintEqualToAnchor:superViewLayoutAnchor constant:constant];
    cons.active = YES;
    self.qq_centerYCons = cons;
    return cons;
}

#pragma mark - center
- (NSArray <NSLayoutConstraint *> *) q_centerEqualSuperView {
    NSLayoutConstraint *centerXCons = [self q_centerXEqualSuperView];
    NSLayoutConstraint *centerYCons = [self q_centerYEqualSuperView];
    NSMutableArray *cons = [NSMutableArray array];
    [cons addObject:centerXCons];
    [cons addObject:centerYCons];
    return cons;
}

#pragma mark - edge
- (NSArray <NSLayoutConstraint *> *) q_edgesEqualSuperView {
    NSLayoutConstraint *topCons = [self q_topEqualSuperView];
    NSLayoutConstraint *leftCons = [self q_leftEqualSuperView];
    NSLayoutConstraint *bottomCons = [self q_bottomEqualSuperView];
    NSLayoutConstraint *rightCons = [self q_rightEqualSuperView];
    NSMutableArray *cons = [NSMutableArray array];
    [cons addObject:topCons];
    [cons addObject:leftCons];
    [cons addObject:bottomCons];
    [cons addObject:rightCons];
    return cons;
}

- (NSArray <NSLayoutConstraint *> *) q_edgesEqualSuperViewSafeArea {
    NSLayoutConstraint *topCons;
    NSLayoutConstraint *leftCons;
    NSLayoutConstraint *bottomCons;
    NSLayoutConstraint *rightCons;
    if (@available(iOS 11.0, *)) {
        UIView *superview = self.superview;
        NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
        topCons = [self q_topEqualYAxisAnchor:superview.safeAreaLayoutGuide.topAnchor constant:0];
        leftCons = [self q_leftEqualXAxisAnchor:superview.safeAreaLayoutGuide.leftAnchor constant:0];
        bottomCons = [self q_bottomEqualYAxisAnchor:superview.safeAreaLayoutGuide.bottomAnchor constant:0];
        rightCons = [self q_rightEqualXAxisAnchor:superview.safeAreaLayoutGuide.rightAnchor constant:0];
    } else {
        topCons = [self q_topEqualSuperView];
        leftCons = [self q_leftEqualSuperView];
        bottomCons = [self q_bottomEqualSuperView];
        rightCons = [self q_rightEqualSuperView];
    }
    NSMutableArray *cons = [NSMutableArray array];
    [cons addObject:topCons];
    [cons addObject:leftCons];
    [cons addObject:bottomCons];
    [cons addObject:rightCons];
    return cons;
}

- (NSArray <NSLayoutConstraint *> *) q_edgesEqualSuperView: (UIEdgeInsets) insets {
    NSLayoutConstraint *topCons = [self q_topEqualSuperView:insets.top];
    NSLayoutConstraint *leftCons = [self q_leftEqualSuperView:insets.left];
    NSLayoutConstraint *bottomCons = [self q_bottomEqualSuperView:insets.bottom];
    NSLayoutConstraint *rightCons = [self q_rightEqualSuperView:insets.right];
    NSMutableArray *cons = [NSMutableArray array];
    [cons addObject:topCons];
    [cons addObject:leftCons];
    [cons addObject:bottomCons];
    [cons addObject:rightCons];
    return cons;
}

- (NSArray <NSLayoutConstraint *> *) q_edgesEqualSuperViewSafeArea: (UIEdgeInsets) insets {
    NSLayoutConstraint *topCons;
    NSLayoutConstraint *leftCons;
    NSLayoutConstraint *bottomCons;
    NSLayoutConstraint *rightCons;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    if (@available(iOS 11.0, *)) {
        topCons = [self q_topEqualYAxisAnchor:superview.safeAreaLayoutGuide.topAnchor constant:insets.top];
        leftCons = [self q_leftEqualXAxisAnchor:superview.safeAreaLayoutGuide.leftAnchor constant:insets.left];
        bottomCons = [self q_bottomEqualYAxisAnchor:superview.safeAreaLayoutGuide.bottomAnchor constant:insets.bottom];
        rightCons = [self q_rightEqualXAxisAnchor:superview.safeAreaLayoutGuide.rightAnchor constant:insets.right];
    } else {
        topCons = [self q_topEqualYAxisAnchor:superview.topAnchor constant:insets.top];
        leftCons = [self q_leftEqualXAxisAnchor:superview.leftAnchor constant:insets.left];
        bottomCons = [self q_bottomEqualYAxisAnchor:superview.bottomAnchor constant:insets.bottom];
        rightCons = [self q_rightEqualXAxisAnchor:superview.rightAnchor constant:insets.right];
    }
    NSMutableArray *cons = [NSMutableArray array];
    [cons addObject:topCons];
    [cons addObject:leftCons];
    [cons addObject:bottomCons];
    [cons addObject:rightCons];
    return cons;
}

- (NSArray <NSLayoutConstraint *> *) q_edgesToView: (UIView *) view withInsets: (UIEdgeInsets) insets {
    NSLayoutConstraint *topCons = [self q_topEqualYAxisAnchor:view.topAnchor constant:insets.top];
    NSLayoutConstraint *leftCons = [self q_leftEqualXAxisAnchor:view.leftAnchor constant:insets.left];
    NSLayoutConstraint *bottomCons = [self q_bottomEqualYAxisAnchor:view.bottomAnchor constant:insets.bottom];
    NSLayoutConstraint *rightCons = [self q_rightEqualXAxisAnchor:view.rightAnchor constant:insets.right];
    NSMutableArray *cons = [NSMutableArray array];
    [cons addObject:topCons];
    [cons addObject:leftCons];
    [cons addObject:bottomCons];
    [cons addObject:rightCons];
    return cons;
}

#pragma mark - remove
- (void) removeAllConstant {
    [self setTopConsNoActive];
    [self setLeftConsNoActive];
    [self setLeadingConsNoActive];
    [self setBottomConsNoActive];
    [self setRightConsNoActive];
    [self setTrailingConsNoActive];
    [self setWidthConsNoActive];
    [self setHeightConsNoActive];
    [self setCenterXConsNoActive];
    [self setCenterYConsNoActive];
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
    return objc_getAssociatedObject(self, kUIViewLayoutMethodPropertyWidth);
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

#pragma mark - Private methods
- (void) setTopConsNoActive {
    if (self.qq_topCons) {
        self.qq_topCons.active = NO;
        self.qq_topCons = nil;
    }
}

- (void) setLeadingConsNoActive {
    if (self.qq_leadingCons) {
        self.qq_leadingCons.active = NO;
        self.qq_leadingCons = nil;
    }
}

- (void) setRightConsNoActive {
    if (self.qq_rightCons) {
        self.qq_rightCons.active = NO;
        self.qq_rightCons = nil;
    }
}

- (void) setTrailingConsNoActive {
    if (self.qq_trailingCons) {
        self.qq_trailingCons.active = NO;
        self.qq_trailingCons = nil;
    }
}

- (void) setBottomConsNoActive {
    if (self.qq_bottomCons) {
        self.qq_bottomCons.active = NO;
        self.qq_bottomCons = nil;
    }
}

- (void) setLeftConsNoActive {
    if (self.qq_leftCons) {
        self.qq_leftCons.active = NO;
        self.qq_leftCons = nil;
    }
}

- (void) setWidthConsNoActive {
    if (self.qq_widthCons) {
        self.qq_widthCons.active = NO;
        self.qq_widthCons = nil;
    }
}

- (void) setHeightConsNoActive {
    if (self.qq_heightCons) {
        self.qq_heightCons.active = NO;
        self.qq_heightCons = nil;
    }
}

- (void) setCenterXConsNoActive {
    if (self.qq_centerXCons) {
        self.qq_centerXCons.active = NO;
        self.qq_centerXCons = nil;
    }
}

- (void) setCenterYConsNoActive {
    if (self.qq_centerYCons) {
        self.qq_centerYCons.active = NO;
        self.qq_centerYCons = nil;
    }
}

@end
