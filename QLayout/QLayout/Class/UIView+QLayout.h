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

@property (nonatomic, strong) NSLayoutConstraint *qq_topCons;
@property (nonatomic, strong) NSLayoutConstraint *qq_rightCons;
@property (nonatomic, strong) NSLayoutConstraint *qq_trailingCons;
@property (nonatomic, strong) NSLayoutConstraint *qq_bottomCons;
@property (nonatomic, strong) NSLayoutConstraint *qq_leftCons;
@property (nonatomic, strong) NSLayoutConstraint *qq_leadingCons;
@property (nonatomic, strong) NSLayoutConstraint *qq_widthCons;
@property (nonatomic, strong) NSLayoutConstraint *qq_heightCons;
@property (nonatomic, strong) NSLayoutConstraint *qq_centerXCons;
@property (nonatomic, strong) NSLayoutConstraint *qq_centerYCons;
@property (nonatomic, strong) NSMutableArray<NSLayoutConstraint *> *qq_edgeCons;

/// top constant
- (NSLayoutConstraint *) q_topEqualSuperView;
- (NSLayoutConstraint *) q_topConstant: (CGFloat) constant;
- (NSLayoutConstraint *) q_top: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_topLessThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_topGreaterThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_topLessThanOrEqual: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_topGreaterThanOrEqual: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;

/// left
- (NSLayoutConstraint *) q_leftEqualSuperView;
- (NSLayoutConstraint *) q_leftConstant: (CGFloat) constant;
- (NSLayoutConstraint *) q_left: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_leftLessThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_leftGreaterThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_leftLessThanOrEqual: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_leftGreaterThanOrEqual: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;

/// leading constant
- (NSLayoutConstraint *) q_leadingEqualSuperView;
- (NSLayoutConstraint *) q_leadingConstant: (CGFloat) constant;
- (NSLayoutConstraint *) q_leading: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_leadingLessThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_leadingGreaterThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_leadingLessThanOrEqual: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_leadingGreaterThanOrEqual: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;

/// bottom constant
- (NSLayoutConstraint *) q_bottomEqualSuperView;
- (NSLayoutConstraint *) q_bottomConstant: (CGFloat) constant;
- (NSLayoutConstraint *) q_bottom: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_bottomLessThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_bottomGreaterThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_bottomLessThanOrEqual: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_bottomGreaterThanOrEqual: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;

/// right constant
- (NSLayoutConstraint *) q_rightEqualSuperView;
- (NSLayoutConstraint *) q_rightConstant: (CGFloat) constant;
- (NSLayoutConstraint *) q_right: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_rightLessThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_rightGreaterThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_rightLessThanOrEqual: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_rightGreaterThanOrEqual: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;

/// trailing constant
- (NSLayoutConstraint *) q_trailingEqualSuperView;
- (NSLayoutConstraint *) q_trailingConstant: (CGFloat) constant;
- (NSLayoutConstraint *) q_trailing: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_trailingLessThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_trailingGreaterThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_trailingLessThanOrEqual: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_trailingGreaterThanOrEqual: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;

/// width constant
- (NSLayoutConstraint *) q_widthEqualSuperView;
- (NSLayoutConstraint *) q_widthConstant: (CGFloat) constant;
- (NSLayoutConstraint *) q_widthLessThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_widthGreaterThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_width: (NSLayoutDimension *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_width: (NSLayoutDimension *) superViewLayoutAnchor multiplier: (CGFloat)multiplier constant: (CGFloat) constant;

/// height constant
- (NSLayoutConstraint *) q_heightEqualSuperView;
- (NSLayoutConstraint *) q_heightConstant: (CGFloat) constant;
- (NSLayoutConstraint *) q_heightLessThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_heightGreaterThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_height: (NSLayoutDimension *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_height: (NSLayoutDimension *) superViewLayoutAnchor multiplier: (CGFloat)multiplier constant: (CGFloat) constant;

/// centerX constant
- (NSLayoutConstraint *) q_centerXEqualSuperView;
- (NSLayoutConstraint *) q_centerXConstant: (CGFloat) constant;
- (NSLayoutConstraint *) q_centerX: (NSLayoutXAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;

/// centerY constant
- (NSLayoutConstraint *) q_centerYEqualSuperView;
- (NSLayoutConstraint *) q_centerYConstant: (CGFloat) constant;
- (NSLayoutConstraint *) q_centerY: (NSLayoutYAxisAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;

/// edge constant
- (NSArray <NSLayoutConstraint *> *) q_edgeEqualSuperView;
// insets top, left, bottom, right
- (NSArray <NSLayoutConstraint *> *) q_edge: (UIEdgeInsets) insets;

@end

NS_ASSUME_NONNULL_END
