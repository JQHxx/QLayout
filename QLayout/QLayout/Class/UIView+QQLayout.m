//
//  UIView+QLayout.m
//  MutipleCells
//
//  Created by OFweek01 on 2020/5/11.
//  Copyright © 2020 la0fu. All rights reserved.
//

#import "UIView+QQLayout.h"
#import <objc/runtime.h>

@implementation UIView (QQLayout)

#pragma mark - Pin Edges to Superview
- (NSLayoutConstraint *)qq_pinEdgeToSuperViewEdge:(QQEdge)edge {
    return [self qq_pinEdgeToSuperViewEdge:edge withInset:0];
}

- (NSLayoutConstraint *)qq_pinEdgeToSuperViewEdge:(QQEdge)edge withInset:(CGFloat)inset {
    return [self qq_pinEdgeToSuperViewEdge:edge withInset:inset relation:NSLayoutRelationEqual];
}

- (NSLayoutConstraint *)qq_pinEdgeToSuperViewEdge:(QQEdge)edge withInset:(CGFloat)inset relation:(NSLayoutRelation)relation {
    UIView *superview = self.superview;
    return [self qq_pinEdge:edge toEdge:edge ofView:superview withOffset:inset relation:relation isSafeArea: NO];
}

#pragma mark - Pin Edges to Superview SafeArea
- (NSLayoutConstraint *)qq_pinEdgeToSuperviewSafeAreaEdge:(QQEdge)edge {
    return [self qq_pinEdgeToSuperviewSafeAreaEdge:edge withInset:0];
}

- (NSLayoutConstraint *)qq_pinEdgeToSuperviewSafeAreaEdge:(QQEdge)edge withInset:(CGFloat)inset {
    return [self qq_pinEdgeToSuperviewSafeAreaEdge:edge withInset:inset relation:NSLayoutRelationEqual];
}

- (NSLayoutConstraint *)qq_pinEdgeToSuperviewSafeAreaEdge:(QQEdge)edge withInset:(CGFloat)inset relation:(NSLayoutRelation)relation {
    UIView *superview = self.superview;
    return [self qq_pinEdge:edge toEdge:edge ofView:superview withOffset:inset relation:relation isSafeArea: YES];
}

#pragma mark - Pin Edges
- (NSLayoutConstraint *)qq_pinEdge:(QQEdge)edge toEdge:(QQEdge)toEdge ofView:(UIView *)otherView {
    return [self qq_pinEdge:edge toEdge:toEdge ofView:otherView withOffset:0];
}
- (NSLayoutConstraint *)qq_pinEdge:(QQEdge)edge toEdge:(QQEdge)toEdge ofView:(UIView *)otherView withOffset:(CGFloat)offset {
    return [self qq_pinEdge:edge toEdge:toEdge ofView:otherView withOffset:offset relation:NSLayoutRelationEqual];
}

- (NSLayoutConstraint *)qq_pinEdge:(QQEdge)edge toEdge:(QQEdge)toEdge ofView:(UIView *)otherView withOffset:(CGFloat)offset relation:(NSLayoutRelation)relation {
    return [self qq_pinEdge:edge toEdge:toEdge ofView:otherView withOffset:(CGFloat)offset relation:relation isSafeArea: NO];
}

#pragma mark - Pin Edges SafeArea
- (NSLayoutConstraint *)qq_pinEdge:(QQEdge)edge toEdge:(QQEdge)toEdge ofViewSafeArea:(UIView *)otherView {
    return [self qq_pinEdge:edge toEdge:toEdge ofViewSafeArea:otherView withOffset:0];
}

- (NSLayoutConstraint *)qq_pinEdge:(QQEdge)edge toEdge:(QQEdge)toEdge ofViewSafeArea:(UIView *)otherView withOffset:(CGFloat)offset {
    return [self qq_pinEdge:edge toEdge:toEdge ofViewSafeArea:otherView withOffset:offset relation:NSLayoutRelationEqual];
}

- (NSLayoutConstraint *)qq_pinEdge:(QQEdge)edge toEdge:(QQEdge)toEdge ofViewSafeArea:(UIView *)otherView withOffset:(CGFloat)offset relation:(NSLayoutRelation)relation {
    return [self qq_pinEdge:edge toEdge:toEdge ofView:otherView withOffset:offset relation:relation isSafeArea: YES];
}

#pragma mark - width
- (NSLayoutConstraint *)qq_widthEqualSuperView {
    UIView *superview = self.superview;
    return [self qq_widthEqualDimension:superview.widthAnchor multiplier:1.0 constant:0 relation:NSLayoutRelationEqual];
}

- (NSLayoutConstraint *)qq_widthEqualConstant:(CGFloat)constant {
    return [self qq_widthEqualConstant:constant relation:NSLayoutRelationEqual];
}

- (NSLayoutConstraint *)qq_widthEqualConstant:(CGFloat)constant relation:(NSLayoutRelation)relation {
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

- (NSLayoutConstraint *)qq_widthEqualDimension:(NSLayoutDimension *)otherDimension multiplier: (CGFloat)multiplier constant:(CGFloat)constant relation:(NSLayoutRelation)relation {
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
- (NSLayoutConstraint *)qq_heightEqualSuperView {
    UIView *superview = self.superview;
    return [self qq_heightEqualDimension:superview.heightAnchor multiplier:1.0 constant:0 relation:NSLayoutRelationEqual];
}

- (NSLayoutConstraint *)qq_heightEqualConstant:(CGFloat)constant {
    return [self qq_heightEqualConstant:constant relation:NSLayoutRelationEqual];
}

- (NSLayoutConstraint *)qq_heightEqualConstant:(CGFloat)constant relation:(NSLayoutRelation)relation {
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

- (NSLayoutConstraint *)qq_heightEqualDimension:(NSLayoutDimension *)otherDimension multiplier: (CGFloat)multiplier constant:(CGFloat)constant relation:(NSLayoutRelation)relation {
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
- (NSArray *)qq_sizeEqualSize:(CGSize)size {
    NSLayoutConstraint *widthCons = [self qq_widthEqualConstant:size.width];
    NSLayoutConstraint *heightCons = [self qq_heightEqualConstant:size.height];
    NSMutableArray *cons = [NSMutableArray array];
    [cons addObject:widthCons];
    [cons addObject:heightCons];
    return cons;
}

#pragma mark - centerX
- (NSLayoutConstraint *)qq_centerXEqualSuperView {
    return [self qq_centerXEqualSuperViewConstant:0];
}

- (NSLayoutConstraint *)qq_centerXEqualSuperViewConstant: (CGFloat) constant {
    UIView *superview = self.superview;
    return [self qq_centerXEqualXAxisAnchor:superview.centerXAnchor constant:constant];
}

- (NSLayoutConstraint *)qq_centerXEqualXAxisAnchor:(NSLayoutAnchor *)otherAnchor constant:(CGFloat)constant {
    [self setCenterXConsNoActive];
    NSAssert(otherAnchor != nil, @"superViewLayoutAnchor centerX must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.centerXAnchor constraintEqualToAnchor:otherAnchor constant:constant];
    cons.active = YES;
    self.qq_centerXCons = cons;
    return cons;
}

#pragma mark - centerY
- (NSLayoutConstraint *)qq_centerYEqualSuperView {
    return [self qq_centerYEqualSuperViewConstant: 0];
}

- (NSLayoutConstraint *)qq_centerYEqualSuperViewConstant:(CGFloat)constant {
    UIView *superview = self.superview;
    return [self qq_centerYEqualYAxisAnchor:superview.centerYAnchor constant:constant];
}

- (NSLayoutConstraint *)qq_centerYEqualYAxisAnchor:(NSLayoutYAxisAnchor *)otherAnchor constant:(CGFloat)constant {
    [self setCenterYConsNoActive];
    NSAssert(otherAnchor != nil, @"superViewLayoutAnchor centerY must not be nil.\nView: %@", self);
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *cons = [self.centerYAnchor constraintEqualToAnchor:otherAnchor constant:constant];
    cons.active = YES;
    self.qq_centerYCons = cons;
    return cons;
}

#pragma mark - center
- (NSArray <NSLayoutConstraint *> *)qq_centerEqualSuperView {
    NSLayoutConstraint *centerXCons = [self qq_centerXEqualSuperView];
    NSLayoutConstraint *centerYCons = [self qq_centerYEqualSuperView];
    NSMutableArray *cons = [NSMutableArray array];
    [cons addObject:centerXCons];
    [cons addObject:centerYCons];
    return cons;
}

#pragma mark - Edges
- (NSArray <NSLayoutConstraint *> *)qq_pinEdgesEqualSuperView {
    return [self qq_pinEdgesEqualSuperViewInsets:UIEdgeInsetsZero];
}

- (NSArray <NSLayoutConstraint *> *)qq_pinEdgesEqualSuperViewInsets:(UIEdgeInsets)insets {
    return [self qq_pinEdgesEqualSuperViewInsets:insets isSafeArea:NO];
}

- (NSArray <NSLayoutConstraint *> *)qq_pinEdgesEqualSuperViewSafeArea {
    return [self qq_pinEdgesEqualSuperViewSafeAreaInsets:UIEdgeInsetsZero];
}

- (NSArray <NSLayoutConstraint *> *)qq_pinEdgesEqualSuperViewSafeAreaInsets:(UIEdgeInsets)insets {
    return [self qq_pinEdgesEqualSuperViewInsets:insets isSafeArea:YES];
}

#pragma mark - Remove
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
- (NSLayoutConstraint *)qq_pinEdge:(QQEdge)edge toEdge:(QQEdge)toEdge ofView:(UIView *)otherView withOffset:(CGFloat)offset relation:(NSLayoutRelation)relation isSafeArea: (BOOL) isSafeArea {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSAssert(otherView != nil, @"otherView must not be nil.\nView: %@", self);
    NSLayoutAnchor *selfAnchor = [self getSelfLayoutAnchorWithEdge:edge];
    NSLayoutAnchor *toAnchor = [self getOtherViewLayoutAnchorWithEdge:toEdge ofOtherView:otherView isSafeArea:isSafeArea];
    NSLayoutConstraint *cons = [self getConstraintSelfAnchor:selfAnchor toAnchor:toAnchor withInset:offset relation:relation];
    [self setConstraint:cons withEdge:edge];
    cons.active = YES;
    return cons;
}

- (NSLayoutAnchor *)getSelfLayoutAnchorWithEdge:(QQEdge)edge {
    NSLayoutAnchor *anchor;
    switch (edge) {
        case QQEdgeTop: {
            anchor = self.topAnchor;
            break;
        }
        case QQEdgeLeft: {
            anchor = self.leftAnchor;
            break;
        }
        case QQEdgeLeading: {
            anchor = self.leadingAnchor;
            break;
        }
        case QQEdgeBottom: {
            anchor = self.bottomAnchor;
            break;
        }
        case QQEdgeRight: {
            anchor = self.rightAnchor;
            break;
        }
        case QQEdgeTrailing: {
            anchor = self.trailingAnchor;
            break;
        }
    }
    return anchor;
}

- (NSLayoutConstraint *)getConstraintSelfAnchor:(NSLayoutAnchor *)selfAnchor toAnchor:(NSLayoutAnchor *)toAnchor withInset:(CGFloat)inset relation:(NSLayoutRelation)relation {
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

- (void)setConstraint:(NSLayoutConstraint *)cons withEdge:(QQEdge)edge {
    switch (edge) {
        case QQEdgeTop: {
            [self setTopConsNoActive];
            self.qq_topCons = cons;
            break;
        }
        case QQEdgeLeft: {
            [self setLeftConsNoActive];
            self.qq_leftCons = cons;
            break;
        }
        case QQEdgeLeading: {
            [self setLeftConsNoActive];
            self.qq_leadingCons = cons;
            break;
        }
        case QQEdgeBottom: {
            [self setBottomConsNoActive];
            self.qq_bottomCons = cons;
            break;
        }
        case QQEdgeRight: {
            [self setRightConsNoActive];
            self.qq_rightCons = cons;
            break;
        }
        case QQEdgeTrailing: {
            [self setTrailingConsNoActive];
            self.qq_trailingCons = cons;
            break;
        }
    }
}

- (NSLayoutAnchor *)getOtherViewLayoutAnchorWithEdge:(QQEdge)edge ofOtherView:(UIView *)otherView isSafeArea:(BOOL)isSafeArea {
    NSLayoutAnchor *anchor;
    switch (edge) {
        case QQEdgeTop: {
            if (@available(iOS 11.0, *)) {
                anchor = isSafeArea ? otherView.safeAreaLayoutGuide.topAnchor : otherView.topAnchor;
            } else {
                anchor = otherView.topAnchor;
            }
            break;
        }
        case QQEdgeLeft: {
            if (@available(iOS 11.0, *)) {
                anchor = isSafeArea ? otherView.safeAreaLayoutGuide.leftAnchor : otherView.leftAnchor;
            } else {
                anchor = otherView.leftAnchor;
            }
            break;
        }
        case QQEdgeLeading: {
            if (@available(iOS 11.0, *)) {
                anchor = isSafeArea ? otherView.safeAreaLayoutGuide.leadingAnchor : otherView.leadingAnchor;
            } else {
                anchor = otherView.leadingAnchor;
            }
            break;
        }
        case QQEdgeBottom: {
            if (@available(iOS 11.0, *)) {
                anchor = isSafeArea ? otherView.safeAreaLayoutGuide.bottomAnchor : otherView.bottomAnchor;
            } else {
                anchor = otherView.bottomAnchor;
            }
            break;
        }
        case QQEdgeRight: {
            if (@available(iOS 11.0, *)) {
                anchor = isSafeArea ? otherView.safeAreaLayoutGuide.rightAnchor : otherView.rightAnchor;
            } else {
                anchor = otherView.rightAnchor;
            }
            break;
        }
        case QQEdgeTrailing: {
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

- (NSArray <NSLayoutConstraint *> *)qq_pinEdgesEqualSuperViewInsets:(UIEdgeInsets)insets isSafeArea:(BOOL)isSafeArea {
    NSLayoutConstraint *topCons;
    NSLayoutConstraint *leftCons;
    NSLayoutConstraint *bottomCons;
    NSLayoutConstraint *rightCons;
    UIView *superview = self.superview;
    NSAssert(superview != nil, @"View's superview must not be nil.\nView: %@", self);
    if (@available(iOS 11.0, *)) {
        if (isSafeArea) {
            topCons = [self qq_pinEdge:QQEdgeTop toEdge:QQEdgeTop ofViewSafeArea:superview withOffset:insets.top];
            leftCons = [self qq_pinEdge:QQEdgeLeft toEdge:QQEdgeLeft ofViewSafeArea:superview withOffset:insets.left];
            bottomCons = [self qq_pinEdge:QQEdgeBottom toEdge:QQEdgeBottom ofViewSafeArea:superview withOffset:insets.bottom];
            rightCons = [self qq_pinEdge:QQEdgeRight toEdge:QQEdgeRight ofViewSafeArea:superview withOffset:insets.right];
        } else {
            topCons = [self qq_pinEdge:QQEdgeTop toEdge:QQEdgeTop ofView:superview withOffset:insets.top];
            leftCons = [self qq_pinEdge:QQEdgeLeft toEdge:QQEdgeLeft ofView:superview withOffset:insets.left];
            bottomCons = [self qq_pinEdge:QQEdgeBottom toEdge:QQEdgeBottom ofView:superview withOffset:insets.bottom];
            rightCons = [self qq_pinEdge:QQEdgeRight toEdge:QQEdgeRight ofView:superview withOffset:insets.right];
        }
    } else {
        topCons = [self qq_pinEdge:QQEdgeTop toEdge:QQEdgeTop ofView:superview withOffset:insets.top];
        leftCons = [self qq_pinEdge:QQEdgeLeft toEdge:QQEdgeLeft ofView:superview withOffset:insets.left];
        bottomCons = [self qq_pinEdge:QQEdgeBottom toEdge:QQEdgeBottom ofView:superview withOffset:insets.bottom];
        rightCons = [self qq_pinEdge:QQEdgeRight toEdge:QQEdgeRight ofView:superview withOffset:insets.right];
    }
    NSMutableArray *cons = [NSMutableArray array];
    [cons addObject:topCons];
    [cons addObject:leftCons];
    [cons addObject:bottomCons];
    [cons addObject:rightCons];
    return cons;
}

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

@end
