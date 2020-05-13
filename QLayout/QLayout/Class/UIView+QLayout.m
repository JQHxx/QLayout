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

#pragma mark - Pin Edges to Superview
- (NSLayoutConstraint *)q_pinEdgeToSuperViewEdge:(QEdge)edge {
    return [self q_pinEdgeToSuperViewEdge:edge withInset:0];
}

- (NSLayoutConstraint *)q_pinEdgeToSuperViewEdge:(QEdge)edge withInset:(CGFloat)inset {
    return [self q_pinEdgeToSuperViewEdge:edge withInset:inset relation:NSLayoutRelationEqual];
}

- (NSLayoutConstraint *)q_pinEdgeToSuperViewEdge:(QEdge)edge withInset:(CGFloat)inset relation:(NSLayoutRelation)relation {
    UIView *superview = self.superview;
    return [self q_pinEdge:edge toEdge:edge ofView:superview withOffset:inset relation:relation isSafeArea: NO];
}

- (NSLayoutConstraint *)q_pinEdgeToSuperviewSafeAreaEdge:(QEdge)edge {
    return [self q_pinEdgeToSuperviewSafeAreaEdge:edge withInset:0];
}

- (NSLayoutConstraint *)q_pinEdgeToSuperviewSafeAreaEdge:(QEdge)edge withInset:(CGFloat)inset {
    return [self q_pinEdgeToSuperviewSafeAreaEdge:edge withInset:inset relation:NSLayoutRelationEqual];
}

- (NSLayoutConstraint *)q_pinEdgeToSuperviewSafeAreaEdge:(QEdge)edge withInset:(CGFloat)inset relation:(NSLayoutRelation)relation {
    UIView *superview = self.superview;
    return [self q_pinEdge:edge toEdge:edge ofView:superview withOffset:inset relation:relation isSafeArea: YES];
}

#pragma mark - Pin Edges
- (NSLayoutConstraint *)q_pinEdge:(QEdge)edge toEdge:(QEdge)toEdge ofView:(UIView *)otherView {
    return [self q_pinEdge:edge toEdge:toEdge ofView:otherView withOffset:0];
}
- (NSLayoutConstraint *)q_pinEdge:(QEdge)edge toEdge:(QEdge)toEdge ofView:(UIView *)otherView withOffset:(CGFloat)offset {
    return [self q_pinEdge:edge toEdge:toEdge ofView:otherView withOffset:offset relation:NSLayoutRelationEqual];
}

- (NSLayoutConstraint *)q_pinEdge:(QEdge)edge toEdge:(QEdge)toEdge ofView:(UIView *)otherView withOffset:(CGFloat)offset relation:(NSLayoutRelation)relation {
    return [self q_pinEdge:edge toEdge:toEdge ofView:otherView withOffset:(CGFloat)offset relation:relation isSafeArea: NO];
}

- (NSLayoutConstraint *)q_pinEdge:(QEdge)edge toEdge:(QEdge)toEdge ofViewSafeArea:(UIView *)otherView {
    return [self q_pinEdge:edge toEdge:toEdge ofViewSafeArea:otherView withOffset:0];
}

- (NSLayoutConstraint *)q_pinEdge:(QEdge)edge toEdge:(QEdge)toEdge ofViewSafeArea:(UIView *)otherView withOffset:(CGFloat)offset {
    return [self q_pinEdge:edge toEdge:toEdge ofViewSafeArea:otherView withOffset:offset relation:NSLayoutRelationEqual];
}

- (NSLayoutConstraint *)q_pinEdge:(QEdge)edge toEdge:(QEdge)toEdge ofViewSafeArea:(UIView *)otherView withOffset:(CGFloat)offset relation:(NSLayoutRelation)relation {
    return [self q_pinEdge:edge toEdge:toEdge ofView:otherView withOffset:offset relation:relation isSafeArea: YES];
}

#pragma mark - width
- (NSLayoutConstraint *)q_widthEqualSuperView {
    UIView *superview = self.superview;
    return [self q_widthEqualDimension:superview.widthAnchor multiplier:1.0 constant:0 relation:NSLayoutRelationEqual];
}

- (NSLayoutConstraint *)q_widthEqualConstant:(CGFloat)constant {
    return [self q_widthEqualConstant:constant relation:NSLayoutRelationEqual];
}

- (NSLayoutConstraint *)q_widthEqualConstant:(CGFloat)constant relation:(NSLayoutRelation)relation {
    [self setWidthConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons;
    switch (relation) {
        case NSLayoutRelationEqual: {
            cons = [self.widthAnchor constraintEqualToConstant:constant];
            break;
        }
        case NSLayoutRelationLessThanOrEqual: {
            cons = [self.widthAnchor constraintLessThanOrEqualToConstant:constant];
            break;
        }
        case NSLayoutRelationGreaterThanOrEqual: {
            cons = [self.widthAnchor constraintGreaterThanOrEqualToConstant:constant];
            break;
        }
    }
    cons.active = YES;
    self.qq_widthCons = cons;
    return cons;
}

- (NSLayoutConstraint *)q_widthEqualDimension:(NSLayoutDimension *)otherDimension multiplier: (CGFloat)multiplier constant:(CGFloat)constant relation:(NSLayoutRelation)relation {
    NSAssert(otherDimension != nil, @"superViewLayoutAnchor must not be nil.\nView: %@", self);
    [self setWidthConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons;
    switch (relation) {
        case NSLayoutRelationEqual: {
            cons = [self.widthAnchor constraintEqualToAnchor:otherDimension multiplier:multiplier constant:constant];
            break;
        }
        case NSLayoutRelationLessThanOrEqual: {
            cons = [self.widthAnchor constraintLessThanOrEqualToAnchor:otherDimension multiplier:multiplier constant:constant];
            break;
        }
        case NSLayoutRelationGreaterThanOrEqual: {
            cons = [self.widthAnchor constraintGreaterThanOrEqualToAnchor:otherDimension multiplier:multiplier constant:constant];
            break;
        }
    }
    cons.active = YES;
    self.qq_widthCons = cons;
    return cons;
}

#pragma mark - height
- (NSLayoutConstraint *)q_heightEqualSuperView {
    UIView *superview = self.superview;
    return [self q_heightEqualDimension:superview.heightAnchor multiplier:1.0 constant:0 relation:NSLayoutRelationEqual];
}

- (NSLayoutConstraint *)q_heightEqualConstant:(CGFloat)constant {
    return [self q_heightEqualConstant:constant relation:NSLayoutRelationEqual];
}

- (NSLayoutConstraint *)q_heightEqualConstant:(CGFloat)constant relation:(NSLayoutRelation)relation {
    [self setHeightConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons;
    switch (relation) {
        case NSLayoutRelationEqual: {
            cons = [self.heightAnchor constraintEqualToConstant:constant];
            break;
        }
        case NSLayoutRelationLessThanOrEqual: {
            cons = [self.heightAnchor constraintLessThanOrEqualToConstant:constant];
            break;
        }
        case NSLayoutRelationGreaterThanOrEqual: {
            cons = [self.heightAnchor constraintGreaterThanOrEqualToConstant:constant];
            break;
        }
    }
    cons.active = YES;
    self.qq_heightCons = cons;
    return cons;
}

- (NSLayoutConstraint *)q_heightEqualDimension:(NSLayoutDimension *)otherDimension multiplier: (CGFloat)multiplier constant:(CGFloat)constant relation:(NSLayoutRelation)relation {
    NSAssert(otherDimension != nil, @"superViewLayoutAnchor must not be nil.\nView: %@", self);
    [self setHeightConsNoActive];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons;
    switch (relation) {
        case NSLayoutRelationEqual: {
            cons = [self.heightAnchor constraintEqualToAnchor:otherDimension multiplier:multiplier constant:constant];
            break;
        }
        case NSLayoutRelationLessThanOrEqual: {
            cons = [self.heightAnchor constraintLessThanOrEqualToAnchor:otherDimension multiplier:multiplier constant:constant];
            break;
        }
        case NSLayoutRelationGreaterThanOrEqual: {
            cons = [self.heightAnchor constraintGreaterThanOrEqualToAnchor:otherDimension multiplier:multiplier constant:constant];
            break;
        }
    }
    cons.active = YES;
    self.qq_heightCons = cons;
    return cons;
}

#pragma mark - size
- (NSArray *)q_sizeEqualSize:(CGSize)size {
    NSLayoutConstraint *widthCons = [self q_widthEqualConstant:size.width];
    NSLayoutConstraint *heightCons = [self q_heightEqualConstant:size.height];
    NSMutableArray *cons = [NSMutableArray array];
    [cons addObject:widthCons];
    [cons addObject:heightCons];
    return cons;
}

#pragma mark - centerX
- (NSLayoutConstraint *)q_centerXEqualSuperView {
    return [self q_centerXEqualSuperViewConstant:0];
}

- (NSLayoutConstraint *)q_centerXEqualSuperViewConstant: (CGFloat) constant {
    UIView *superview = self.superview;
    return [self q_centerXEqualXAxisAnchor:superview.centerXAnchor constant:constant];
}

- (NSLayoutConstraint *)q_centerXEqualXAxisAnchor:(NSLayoutAnchor *)otherAnchor constant:(CGFloat)constant {
    [self setCenterXConsNoActive];
    NSAssert(otherAnchor != nil, @"superViewLayoutAnchor centerX must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.centerXAnchor constraintEqualToAnchor:otherAnchor constant:constant];
    cons.active = YES;
    self.qq_centerXCons = cons;
    return cons;
}

#pragma mark - centerY
- (NSLayoutConstraint *)q_centerYEqualSuperView {
    return [self q_centerYEqualSuperViewConstant: 0];
}

- (NSLayoutConstraint *)q_centerYEqualSuperViewConstant:(CGFloat)constant {
    UIView *superview = self.superview;
    return [self q_centerYEqualYAxisAnchor:superview.centerYAnchor constant:constant];
}

- (NSLayoutConstraint *)q_centerYEqualYAxisAnchor:(NSLayoutYAxisAnchor *)otherAnchor constant:(CGFloat)constant {
    [self setCenterYConsNoActive];
    NSAssert(otherAnchor != nil, @"superViewLayoutAnchor centerY must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.centerYAnchor constraintEqualToAnchor:otherAnchor constant:constant];
    cons.active = YES;
    self.qq_centerYCons = cons;
    return cons;
}

#pragma mark - center
- (NSArray <NSLayoutConstraint *> *)q_centerEqualSuperView {
    NSLayoutConstraint *centerXCons = [self q_centerXEqualSuperView];
    NSLayoutConstraint *centerYCons = [self q_centerYEqualSuperView];
    NSMutableArray *cons = [NSMutableArray array];
    [cons addObject:centerXCons];
    [cons addObject:centerYCons];
    return cons;
}

#pragma mark - edge
- (NSArray <NSLayoutConstraint *> *)q_pinEdgesEqualSuperView {
    return [self q_pinEdgesEqualSuperViewInsets:UIEdgeInsetsZero];
}

- (NSArray <NSLayoutConstraint *> *)q_pinEdgesEqualSuperViewInsets:(UIEdgeInsets)insets {
    return [self q_pinEdgesEqualSuperViewInsets:insets isSafeArea:NO];
}

- (NSArray <NSLayoutConstraint *> *)q_pinEdgesEqualSuperViewSafeArea {
    return [self q_pinEdgesEqualSuperViewSafeAreaInsets:UIEdgeInsetsZero];
}

- (NSArray <NSLayoutConstraint *> *)q_pinEdgesEqualSuperViewSafeAreaInsets:(UIEdgeInsets)insets {
    return [self q_pinEdgesEqualSuperViewInsets:insets isSafeArea:YES];
}

#pragma mark - remove
- (void)removeAllConstants {
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

#pragma mark - Private methods
- (NSLayoutConstraint *)q_pinEdge:(QEdge)edge toEdge:(QEdge)toEdge ofView:(UIView *)otherView withOffset:(CGFloat)offset relation:(NSLayoutRelation)relation isSafeArea: (BOOL) isSafeArea {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSAssert(otherView != nil, @"otherView must not be nil.\nView: %@", self);
    NSLayoutAnchor *selfAnchor = [self getSelfLayoutAnchorWithEdge:edge];
    NSLayoutAnchor *toAnchor = [self getOtherViewLayoutAnchorWithEdge:toEdge ofOtherView:otherView isSafeArea:isSafeArea];
    NSLayoutConstraint *cons = [self getConstraint:selfAnchor toAnchor:toAnchor withInset:offset relation:relation];
    [self setConstraint:cons withEdge:edge];
    cons.active = YES;
    return cons;
}

- (NSLayoutAnchor *)getSelfLayoutAnchorWithEdge:(QEdge)edge {
    NSLayoutAnchor *anchor;
    switch (edge) {
        case QEdgeTop: {
            anchor = self.topAnchor;
            break;
        }
        case QEdgeLeft: {
            anchor = self.leftAnchor;
            break;
        }
        case QEdgeLeading: {
            anchor = self.leadingAnchor;
            break;
        }
        case QEdgeBottom: {
            anchor = self.bottomAnchor;
            break;
        }
        case QEdgeRight: {
            anchor = self.rightAnchor;
            break;
        }
        case QEdgeTrailing: {
            anchor = self.trailingAnchor;
            break;
        }
    }
    return anchor;
}

- (NSLayoutConstraint *)getConstraint:(NSLayoutAnchor *)selfAnchor toAnchor:(NSLayoutAnchor *)toAnchor withInset:(CGFloat)inset relation:(NSLayoutRelation)relation {
    NSLayoutConstraint *cons;
    switch (relation) {
        case NSLayoutRelationEqual: {
            cons = [selfAnchor constraintEqualToAnchor:toAnchor constant:inset];
            break;
        }
        case NSLayoutRelationLessThanOrEqual: {
            cons = [selfAnchor constraintLessThanOrEqualToAnchor:toAnchor constant:inset];
            break;
        }
        case NSLayoutRelationGreaterThanOrEqual: {
            cons = [selfAnchor constraintGreaterThanOrEqualToAnchor:toAnchor constant:inset];
            break;
        }
    }
    return cons;
}

- (void)setConstraint:(NSLayoutConstraint *)cons withEdge:(QEdge)edge {
    switch (edge) {
        case QEdgeTop: {
            [self setTopConsNoActive];
            self.qq_topCons = cons;
            break;
        }
        case QEdgeLeft: {
            [self setLeftConsNoActive];
            self.qq_leftCons = cons;
            break;
        }
        case QEdgeLeading: {
            [self setLeftConsNoActive];
            self.qq_leadingCons = cons;
            break;
        }
        case QEdgeBottom: {
            [self setBottomConsNoActive];
            self.qq_bottomCons = cons;
            break;
        }
        case QEdgeRight: {
            [self setRightConsNoActive];
            self.qq_rightCons = cons;
            break;
        }
        case QEdgeTrailing: {
            [self setTrailingConsNoActive];
            self.qq_trailingCons = cons;
            break;
        }
    }
}

- (NSLayoutAnchor *)getOtherViewLayoutAnchorWithEdge:(QEdge)edge ofOtherView:(UIView *)otherView isSafeArea:(BOOL)isSafeArea {
    NSLayoutAnchor *anchor;
    switch (edge) {
        case QEdgeTop: {
            if (@available(iOS 11.0, *)) {
                anchor = isSafeArea ? otherView.safeAreaLayoutGuide.topAnchor : otherView.topAnchor;
            } else {
                anchor = otherView.topAnchor;
            }
            break;
        }
        case QEdgeLeft: {
            if (@available(iOS 11.0, *)) {
                anchor = isSafeArea ? otherView.safeAreaLayoutGuide.leftAnchor : otherView.leftAnchor;
            } else {
                anchor = otherView.leftAnchor;
            }
            break;
        }
        case QEdgeLeading: {
            if (@available(iOS 11.0, *)) {
                anchor = isSafeArea ? otherView.safeAreaLayoutGuide.leadingAnchor : otherView.leadingAnchor;
            } else {
                anchor = otherView.leadingAnchor;
            }
            break;
        }
        case QEdgeBottom: {
            if (@available(iOS 11.0, *)) {
                anchor = isSafeArea ? otherView.safeAreaLayoutGuide.bottomAnchor : otherView.bottomAnchor;
            } else {
                anchor = otherView.bottomAnchor;
            }
            break;
        }
        case QEdgeRight: {
            if (@available(iOS 11.0, *)) {
                anchor = isSafeArea ? otherView.safeAreaLayoutGuide.rightAnchor : otherView.rightAnchor;
            } else {
                anchor = otherView.rightAnchor;
            }
            break;
        }
        case QEdgeTrailing: {
            if (@available(iOS 11.0, *)) {
                anchor = isSafeArea ? otherView.safeAreaLayoutGuide.trailingAnchor : otherView.trailingAnchor;
            } else {
                anchor = otherView.trailingAnchor;
            }
            break;
        }
    }
    return anchor;
}

- (NSArray <NSLayoutConstraint *> *)q_pinEdgesEqualSuperViewInsets:(UIEdgeInsets)insets isSafeArea:(BOOL)isSafeArea {
    NSLayoutConstraint *topCons;
    NSLayoutConstraint *leftCons;
    NSLayoutConstraint *bottomCons;
    NSLayoutConstraint *rightCons;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    if (@available(iOS 11.0, *)) {
        if (isSafeArea) {
            topCons = [self q_pinEdge:QEdgeTop toEdge:QEdgeTop ofViewSafeArea:superview withOffset:insets.top];
            leftCons = [self q_pinEdge:QEdgeLeft toEdge:QEdgeLeft ofViewSafeArea:superview withOffset:insets.left];
            bottomCons = [self q_pinEdge:QEdgeBottom toEdge:QEdgeBottom ofViewSafeArea:superview withOffset:insets.bottom];
            rightCons = [self q_pinEdge:QEdgeRight toEdge:QEdgeRight ofViewSafeArea:superview withOffset:insets.right];
        } else {
            topCons = [self q_pinEdge:QEdgeTop toEdge:QEdgeTop ofView:superview withOffset:insets.top];
            leftCons = [self q_pinEdge:QEdgeLeft toEdge:QEdgeLeft ofView:superview withOffset:insets.left];
            bottomCons = [self q_pinEdge:QEdgeBottom toEdge:QEdgeBottom ofView:superview withOffset:insets.bottom];
            rightCons = [self q_pinEdge:QEdgeRight toEdge:QEdgeRight ofView:superview withOffset:insets.right];
        }
    } else {
        topCons = [self q_pinEdge:QEdgeTop toEdge:QEdgeTop ofView:superview withOffset:insets.top];
        leftCons = [self q_pinEdge:QEdgeLeft toEdge:QEdgeLeft ofView:superview withOffset:insets.left];
        bottomCons = [self q_pinEdge:QEdgeBottom toEdge:QEdgeBottom ofView:superview withOffset:insets.bottom];
        rightCons = [self q_pinEdge:QEdgeRight toEdge:QEdgeRight ofView:superview withOffset:insets.right];
    }
    NSMutableArray *cons = [NSMutableArray array];
    [cons addObject:topCons];
    [cons addObject:leftCons];
    [cons addObject:bottomCons];
    [cons addObject:rightCons];
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
- (void)setTopConsNoActive {
    if (self.qq_topCons) {
        self.qq_topCons.active = NO;
        self.qq_topCons = nil;
    }
}

- (void)setLeadingConsNoActive {
    if (self.qq_leadingCons) {
        self.qq_leadingCons.active = NO;
        self.qq_leadingCons = nil;
    }
}

- (void)setRightConsNoActive {
    if (self.qq_rightCons) {
        self.qq_rightCons.active = NO;
        self.qq_rightCons = nil;
    }
}

- (void)setTrailingConsNoActive {
    if (self.qq_trailingCons) {
        self.qq_trailingCons.active = NO;
        self.qq_trailingCons = nil;
    }
}

- (void)setBottomConsNoActive {
    if (self.qq_bottomCons) {
        self.qq_bottomCons.active = NO;
        self.qq_bottomCons = nil;
    }
}

- (void)setLeftConsNoActive {
    if (self.qq_leftCons) {
        self.qq_leftCons.active = NO;
        self.qq_leftCons = nil;
    }
}

- (void)setWidthConsNoActive {
    if (self.qq_widthCons) {
        self.qq_widthCons.active = NO;
        self.qq_widthCons = nil;
    }
}

- (void)setHeightConsNoActive {
    if (self.qq_heightCons) {
        self.qq_heightCons.active = NO;
        self.qq_heightCons = nil;
    }
}

- (void)setCenterXConsNoActive {
    if (self.qq_centerXCons) {
        self.qq_centerXCons.active = NO;
        self.qq_centerXCons = nil;
    }
}

- (void)setCenterYConsNoActive {
    if (self.qq_centerYCons) {
        self.qq_centerYCons.active = NO;
        self.qq_centerYCons = nil;
    }
}

@end
