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
- (NSLayoutConstraint *) q_top;
- (NSLayoutConstraint *) q_topConstant: (CGFloat) constant;
- (NSLayoutConstraint *) q_top: (NSLayoutAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_topLessThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_topGreaterThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_topLessThanOrEqual: (NSLayoutAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_topGreaterThanOrEqual: (NSLayoutAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;

/// leading constant
- (NSLayoutConstraint *) q_leading;
- (NSLayoutConstraint *) q_leadingConstant: (CGFloat) constant;
- (NSLayoutConstraint *) q_leading: (NSLayoutAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_leadingLessThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_leadingGreaterThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_leadingLessThanOrEqual: (NSLayoutAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_leadingGreaterThanOrEqual: (NSLayoutAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;

/// right constant
- (NSLayoutConstraint *) q_right;
- (NSLayoutConstraint *) q_rightConstant: (CGFloat) constant;
- (NSLayoutConstraint *) q_right: (NSLayoutAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_rightLessThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_rightGreaterThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_rightLessThanOrEqual: (NSLayoutAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_rightGreaterThanOrEqual: (NSLayoutAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;

/// bottom constant
- (NSLayoutConstraint *) q_bottom;
- (NSLayoutConstraint *) q_bottomConstant: (CGFloat) constant;
- (NSLayoutConstraint *) q_bottom: (NSLayoutAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_bottomLessThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_bottomGreaterThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_bottomLessThanOrEqual: (NSLayoutAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_bottomGreaterThanOrEqual: (NSLayoutAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;

/// trailing constant
- (NSLayoutConstraint *) q_trailing;
- (NSLayoutConstraint *) q_trailingConstant: (CGFloat) constant;
- (NSLayoutConstraint *) q_trailing: (NSLayoutAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_trailingLessThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_trailingGreaterThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_trailingLessThanOrEqual: (NSLayoutAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_trailingGreaterThanOrEqual: (NSLayoutAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;

/// left
- (NSLayoutConstraint *) q_left;
- (NSLayoutConstraint *) q_leftConstant: (CGFloat) constant;
- (NSLayoutConstraint *) q_left: (NSLayoutAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_leftLessThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_leftGreaterThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_leftLessThanOrEqual: (NSLayoutAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_leftGreaterThanOrEqual: (NSLayoutAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;

/// width constant
- (NSLayoutConstraint *) q_width;
- (NSLayoutConstraint *) q_widthConstant: (CGFloat) constant;
- (NSLayoutConstraint *) q_widthLessThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_widthGreaterThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_width: (NSLayoutAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_width: (NSLayoutDimension *) superViewLayoutAnchor multiplier: (CGFloat)multiplier constant: (CGFloat) constant;

/// height constant
- (NSLayoutConstraint *) q_height;
- (NSLayoutConstraint *) q_heightConstant: (CGFloat) constant;
- (NSLayoutConstraint *) q_heightLessThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_heightGreaterThanOrEqual: (CGFloat) constant;
- (NSLayoutConstraint *) q_height: (NSLayoutAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;
- (NSLayoutConstraint *) q_height: (NSLayoutDimension *) superViewLayoutAnchor multiplier: (CGFloat)multiplier constant: (CGFloat) constant;

/// centerX constant
- (NSLayoutConstraint *) q_centerX;
- (NSLayoutConstraint *) q_centerXConstant: (CGFloat) constant;
- (NSLayoutConstraint *) q_centerX: (NSLayoutAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;

/// centerY constant
- (NSLayoutConstraint *) q_centerY;
- (NSLayoutConstraint *) q_centerYConstant: (CGFloat) constant;
- (NSLayoutConstraint *) q_centerY: (NSLayoutAnchor *) superViewLayoutAnchor constant: (CGFloat) constant;

/// edge constant
- (NSArray <NSLayoutConstraint *> *) q_edge;
- (NSArray <NSLayoutConstraint *> *) q_edge: (UIEdgeInsets) insets;

@end

NS_ASSUME_NONNULL_END
