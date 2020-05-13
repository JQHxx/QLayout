//
//  UIView+QLayout.h
//  MutipleCells
//
//  Created by OFweek01 on 2020/5/11.
//  Copyright © 2020 la0fu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QLayoutDefines.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIView (QLayout)

/// property
@property (nonatomic, strong) NSLayoutConstraint * _Nullable qq_topCons;
@property (nonatomic, strong) NSLayoutConstraint * _Nullable qq_rightCons;
@property (nonatomic, strong) NSLayoutConstraint * _Nullable qq_trailingCons;
@property (nonatomic, strong) NSLayoutConstraint * _Nullable qq_bottomCons;
@property (nonatomic, strong) NSLayoutConstraint * _Nullable qq_leftCons;
@property (nonatomic, strong) NSLayoutConstraint * _Nullable qq_leadingCons;
@property (nonatomic, strong) NSLayoutConstraint * _Nullable qq_widthCons;
@property (nonatomic, strong) NSLayoutConstraint * _Nullable qq_heightCons;
@property (nonatomic, strong) NSLayoutConstraint * _Nullable qq_centerXCons;
@property (nonatomic, strong) NSLayoutConstraint * _Nullable qq_centerYCons;

#pragma mark - Pin Edges to Superview
- (NSLayoutConstraint *)q_pinEdgeToSuperViewEdge:(QEdge)edge;
- (NSLayoutConstraint *)q_pinEdgeToSuperViewEdge:(QEdge)edge withInset:(CGFloat)inset;
- (NSLayoutConstraint *)q_pinEdgeToSuperViewEdge:(QEdge)edge withInset:(CGFloat)inset relation:(NSLayoutRelation)relation;
- (NSLayoutConstraint *)q_pinEdgeToSuperviewSafeArea:(QEdge)edge;
- (NSLayoutConstraint *)q_pinEdgeToSuperviewSafeArea:(QEdge)edge withInset:(CGFloat)inset;
- (NSLayoutConstraint *)q_pinEdgeToSuperviewSafeArea:(QEdge)edge withInset:(CGFloat)inset relation:(NSLayoutRelation)relation;

#pragma mark - Pin Edges
- (NSLayoutConstraint *)q_pinEdge:(QEdge)edge toEdge:(QEdge)toEdge ofView:(UIView *)otherView;
- (NSLayoutConstraint *)q_pinEdge:(QEdge)edge toEdge:(QEdge)toEdge ofView:(UIView *)otherView withOffset:(CGFloat)offset;
- (NSLayoutConstraint *)q_pinEdge:(QEdge)edge toEdge:(QEdge)toEdge ofView:(UIView *)otherView withOffset:(CGFloat)offset relation:(NSLayoutRelation)relation;
- (NSLayoutConstraint *)q_pinEdge:(QEdge)edge toEdge:(QEdge)toEdge ofViewSafeArea:(UIView *)otherView;
- (NSLayoutConstraint *)q_pinEdge:(QEdge)edge toEdge:(QEdge)toEdge ofViewSafeArea:(UIView *)otherView withOffset:(CGFloat)offset;
- (NSLayoutConstraint *)q_pinEdge:(QEdge)edge toEdge:(QEdge)toEdge ofViewSafeArea:(UIView *)otherView withOffset:(CGFloat)offset relation:(NSLayoutRelation)relation;

/// width constant
- (NSLayoutConstraint *)q_widthEqualSuperView;
- (NSLayoutConstraint *)q_widthEqual:(CGFloat)constant;
- (NSLayoutConstraint *)q_widthEqual:(CGFloat)constant relation:(NSLayoutRelation)relation;
- (NSLayoutConstraint *)q_widthEqualDimension:(NSLayoutDimension *)superViewLayoutAnchor multiplier:(CGFloat)multiplier constant:(CGFloat)constant relation:(NSLayoutRelation)relation;

/// height constant
- (NSLayoutConstraint *)q_heightEqualSuperView;
- (NSLayoutConstraint *)q_heightEqual:(CGFloat)constant;
- (NSLayoutConstraint *)q_heightEqual:(CGFloat)constant relation:(NSLayoutRelation)relation;
- (NSLayoutConstraint *)q_heightEqualDimension:(NSLayoutDimension *)superViewLayoutAnchor multiplier:(CGFloat)multiplier constant:(CGFloat)constant relation:(NSLayoutRelation)relation;

/// size
- (NSArray *)q_sizeEqual:(CGSize)size;

/// centerX constant
- (NSLayoutConstraint *)q_centerXEqualSuperView;
- (NSLayoutConstraint *)q_centerXEqualSuperView:(CGFloat)constant;
- (NSLayoutConstraint *)q_centerXEqualXAxisAnchor:(NSLayoutXAxisAnchor *)superViewLayoutAnchor constant:(CGFloat)constant;

/// centerY constant
- (NSLayoutConstraint *)q_centerYEqualSuperView;
- (NSLayoutConstraint *)q_centerYEqualSuperView:(CGFloat)constant;
- (NSLayoutConstraint *)q_centerYEqualYAxisAnchor:(NSLayoutYAxisAnchor *)superViewLayoutAnchor constant:(CGFloat)constant;

/// center
- (NSArray <NSLayoutConstraint *> *)q_centerEqualSuperView;

/// edge constant
- (NSArray <NSLayoutConstraint *> *)q_pinEdgesEqualSuperView;
- (NSArray <NSLayoutConstraint *> *)q_pinEdgesEqualSuperViewSafeArea;
// insets top, left, bottom, right
- (NSArray <NSLayoutConstraint *> *)q_pinEdgesEqualSuperView:(UIEdgeInsets)insets;
- (NSArray <NSLayoutConstraint *> *)q_pinEdgesEqualSuperViewSafeArea:(UIEdgeInsets)insets;

/// remove
- (void)removeAllConstants;

@end

NS_ASSUME_NONNULL_END
