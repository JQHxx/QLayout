//
//  UIView+QLayout.h
//  MutipleCells
//
//  Created by OFweek01 on 2020/5/11.
//  Copyright © 2020 la0fu. All rights reserved.
//

#import <UIKit/UIKit.h>

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

/// top constant
- (NSLayoutConstraint *) q_topEqualSuperView;
- (NSLayoutConstraint *) q_topEqualSuperView: (CGFloat) constant;
- (NSLayoutConstraint *) q_topLessThanOrEqualSuperView: (CGFloat) constant;
- (NSLayoutConstraint *) q_topGreaterThanOrEqualSuperView: (CGFloat) constant;
- (NSLayoutConstraint *) q_topEqualYAxisAnchor: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_topLessThanOrEqualYAxisAnchor: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_topGreaterThanOrEqualYAxisAnchor: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;

/// left
- (NSLayoutConstraint *) q_leftEqualSuperView;
- (NSLayoutConstraint *) q_leftEqualSuperView: (CGFloat) constant;
- (NSLayoutConstraint *) q_leftLessThanOrEqualSuperView: (CGFloat) constant;
- (NSLayoutConstraint *) q_leftGreaterThanOrEqualSuperView: (CGFloat) constant;
- (NSLayoutConstraint *) q_leftEqualXAxisAnchor: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_leftLessThanOrEqualXAxisAnchor: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_leftGreaterThanOrEqualXAxisAnchor: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;

/// leading constant
- (NSLayoutConstraint *) q_leadingEqualSuperView;
- (NSLayoutConstraint *) q_leadingEqualSuperView: (CGFloat) constant;
- (NSLayoutConstraint *) q_leadingLessThanOrEqualSuperView: (CGFloat) constant;
- (NSLayoutConstraint *) q_leadingGreaterThanOrEqualSuperView: (CGFloat) constant;
- (NSLayoutConstraint *) q_leadingEqualXAxisAnchor: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_leadingLessThanOrEqualXAxisAnchor: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_leadingGreaterThanOrEqualXAxisAnchor: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;

/// bottom constant
- (NSLayoutConstraint *) q_bottomEqualSuperView;
- (NSLayoutConstraint *) q_bottomEqualSuperView: (CGFloat) constant;
- (NSLayoutConstraint *) q_bottomLessThanOrEqualSuperView: (CGFloat) constant;
- (NSLayoutConstraint *) q_bottomGreaterThanOrEqualSuperView: (CGFloat) constant;
- (NSLayoutConstraint *) q_bottomEqualYAxisAnchor: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_bottomLessThanOrEqualYAxisAnchor: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_bottomGreaterThanOrEqualYAxisAnchor: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;

/// right constant
- (NSLayoutConstraint *) q_rightEqualSuperView;
- (NSLayoutConstraint *) q_rightEqualSuperView: (CGFloat) constant;
- (NSLayoutConstraint *) q_rightLessThanOrEqualSuperView: (CGFloat) constant;
- (NSLayoutConstraint *) q_rightGreaterThanOrEqualSuperView: (CGFloat) constant;
- (NSLayoutConstraint *) q_rightEqualXAxisAnchor: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_rightLessThanOrEqualXAxisAnchor: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_rightGreaterThanOrEqualXAxisAnchor: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;

/// trailing constant
- (NSLayoutConstraint *) q_trailingEqualSuperView;
- (NSLayoutConstraint *) q_trailingEqualSuperView: (CGFloat) constant;
- (NSLayoutConstraint *) q_trailingLessThanOrEqualSuperView: (CGFloat) constant;
- (NSLayoutConstraint *) q_trailingGreaterThanOrEqualSuperView: (CGFloat) constant;
- (NSLayoutConstraint *) q_trailingEqualXAxisAnchor: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_trailingLessThanOrEqualXAxisAnchor: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_trailingGreaterThanOrEqualXAxisAnchor: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;

/// width constant
- (NSLayoutConstraint *) q_widthEqualSuperView;
- (NSLayoutConstraint *) q_widthEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_widthLessThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_widthGreaterThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_widthEqualDimension: (NSLayoutDimension *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_widthEqualDimension: (NSLayoutDimension *) superViewLayoutAnchor multiplier: (CGFloat)multiplier constant: (CGFloat) constant;

/// height constant
- (NSLayoutConstraint *) q_heightEqualSuperView;
- (NSLayoutConstraint *) q_heightEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_heightLessThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_heightGreaterThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_heightEqualDimension: (NSLayoutDimension *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_heightEqualDimension: (NSLayoutDimension *) superViewLayoutAnchor multiplier: (CGFloat)multiplier constant: (CGFloat) constant;

/// size
- (NSArray *) q_sizeEqual: (CGSize) size;

/// centerX constant
- (NSLayoutConstraint *) q_centerXEqualSuperView;
- (NSLayoutConstraint *) q_centerXEqualSuperView: (CGFloat) constant;
- (NSLayoutConstraint *) q_centerXEqualXAxisAnchor: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;

/// centerY constant
- (NSLayoutConstraint *) q_centerYEqualSuperView;
- (NSLayoutConstraint *) q_centerYEqualSuperView: (CGFloat) constant;
- (NSLayoutConstraint *) q_centerYEqualYAxisAnchor: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;

/// center
- (NSArray <NSLayoutConstraint *> *) q_centerEqualSuperView;

/// edge constant
- (NSArray <NSLayoutConstraint *> *) q_edgesEqualSuperView;
- (NSArray <NSLayoutConstraint *> *) q_edgesEqualSuperViewSafeArea;
// insets top, left, bottom, right
- (NSArray <NSLayoutConstraint *> *) q_edgesEqualSuperView: (UIEdgeInsets) insets;
- (NSArray <NSLayoutConstraint *> *) q_edgesEqualSuperViewSafeArea: (UIEdgeInsets) insets;
- (NSArray <NSLayoutConstraint *> *) q_edgesToView: (UIView *) view withInsets: (UIEdgeInsets) insets;

/// remove
- (void) removeAllConstant;

@end

NS_ASSUME_NONNULL_END
