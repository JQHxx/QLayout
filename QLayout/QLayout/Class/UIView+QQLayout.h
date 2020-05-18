//
//  UIView+QLayout.h
//  MutipleCells
//
//  Created by OFweek01 on 2020/5/11.
//  Copyright © 2020 la0fu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QQLayoutDefines.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIView (QQLayout)

/// property
@property (nonatomic, strong, nullable) NSLayoutConstraint * qq_topCons;
@property (nonatomic, strong, nullable) NSLayoutConstraint * qq_rightCons;
@property (nonatomic, strong, nullable) NSLayoutConstraint * qq_trailingCons;
@property (nonatomic, strong, nullable) NSLayoutConstraint * qq_bottomCons;
@property (nonatomic, strong, nullable) NSLayoutConstraint * qq_leftCons;
@property (nonatomic, strong, nullable) NSLayoutConstraint * qq_leadingCons;
@property (nonatomic, strong, nullable) NSLayoutConstraint * qq_widthCons;
@property (nonatomic, strong, nullable) NSLayoutConstraint * qq_heightCons;
@property (nonatomic, strong, nullable) NSLayoutConstraint * qq_centerXCons;
@property (nonatomic, strong, nullable) NSLayoutConstraint * qq_centerYCons;

#pragma mark - Pin Edges to Superview
- (NSLayoutConstraint *)qq_pinEdgeToSuperViewEdge:(QQEdge)edge;
- (NSLayoutConstraint *)qq_pinEdgeToSuperViewEdge:(QQEdge)edge withInset:(CGFloat)inset;
- (NSLayoutConstraint *)qq_pinEdgeToSuperViewEdge:(QQEdge)edge withInset:(CGFloat)inset relation:(NSLayoutRelation)relation;
- (NSLayoutConstraint *)qq_pinEdgeToSuperviewSafeAreaEdge:(QQEdge)edge;
- (NSLayoutConstraint *)qq_pinEdgeToSuperviewSafeAreaEdge:(QQEdge)edge withInset:(CGFloat)inset;
- (NSLayoutConstraint *)qq_pinEdgeToSuperviewSafeAreaEdge:(QQEdge)edge withInset:(CGFloat)inset relation:(NSLayoutRelation)relation;

#pragma mark - Pin Edges
- (NSLayoutConstraint *)qq_pinEdge:(QQEdge)edge toEdge:(QQEdge)toEdge ofView:(UIView *)otherView;
- (NSLayoutConstraint *)qq_pinEdge:(QQEdge)edge toEdge:(QQEdge)toEdge ofView:(UIView *)otherView withOffset:(CGFloat)offset;
- (NSLayoutConstraint *)qq_pinEdge:(QQEdge)edge toEdge:(QQEdge)toEdge ofView:(UIView *)otherView withOffset:(CGFloat)offset relation:(NSLayoutRelation)relation;
- (NSLayoutConstraint *)qq_pinEdge:(QQEdge)edge toEdge:(QQEdge)toEdge ofViewSafeArea:(UIView *)otherView;
- (NSLayoutConstraint *)qq_pinEdge:(QQEdge)edge toEdge:(QQEdge)toEdge ofViewSafeArea:(UIView *)otherView withOffset:(CGFloat)offset;
- (NSLayoutConstraint *)qq_pinEdge:(QQEdge)edge toEdge:(QQEdge)toEdge ofViewSafeArea:(UIView *)otherView withOffset:(CGFloat)offset relation:(NSLayoutRelation)relation;

#pragma mark - Width
- (NSLayoutConstraint *)qq_widthEqualSuperView;
- (NSLayoutConstraint *)qq_widthEqualConstant:(CGFloat)constant;
- (NSLayoutConstraint *)qq_widthEqualConstant:(CGFloat)constant relation:(NSLayoutRelation)relation;
- (NSLayoutConstraint *)qq_widthEqualDimension:(NSLayoutDimension *)otherDimension multiplier:(CGFloat)multiplier constant:(CGFloat)constant relation:(NSLayoutRelation)relation;

#pragma mark - Height
- (NSLayoutConstraint *)qq_heightEqualSuperView;
- (NSLayoutConstraint *)qq_heightEqualConstant:(CGFloat)constant;
- (NSLayoutConstraint *)qq_heightEqualConstant:(CGFloat)constant relation:(NSLayoutRelation)relation;
- (NSLayoutConstraint *)qq_heightEqualDimension:(NSLayoutDimension *)otherDimension multiplier:(CGFloat)multiplier constant:(CGFloat)constant relation:(NSLayoutRelation)relation;

#pragma mark - Size
- (NSArray *)qq_sizeEqualSize:(CGSize)size;

#pragma mark - CenterX
- (NSLayoutConstraint *)qq_centerXEqualSuperView;
- (NSLayoutConstraint *)qq_centerXEqualSuperViewConstant:(CGFloat)constant;
- (NSLayoutConstraint *)qq_centerXEqualXAxisAnchor:(NSLayoutXAxisAnchor *)otherAnchor constant:(CGFloat)constant;

#pragma mark - CenterY
- (NSLayoutConstraint *)qq_centerYEqualSuperView;
- (NSLayoutConstraint *)qq_centerYEqualSuperViewConstant:(CGFloat)constant;
- (NSLayoutConstraint *)qq_centerYEqualYAxisAnchor:(NSLayoutYAxisAnchor *)otherAnchor constant:(CGFloat)constant;

#pragma mark - Center
- (NSArray <NSLayoutConstraint *> *)qq_centerEqualSuperView;

#pragma mark - Edges
- (NSArray <NSLayoutConstraint *> *)qq_pinEdgesEqualSuperView;
- (NSArray <NSLayoutConstraint *> *)qq_pinEdgesEqualSuperViewSafeArea;
// insets top, left, bottom, right
- (NSArray <NSLayoutConstraint *> *)qq_pinEdgesEqualSuperViewInsets:(UIEdgeInsets)insets;
- (NSArray <NSLayoutConstraint *> *)qq_pinEdgesEqualSuperViewSafeAreaInsets:(UIEdgeInsets)insets;

/// remove
- (void)removeAllConstants;

@end

NS_ASSUME_NONNULL_END
