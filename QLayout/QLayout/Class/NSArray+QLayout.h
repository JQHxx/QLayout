//
//  NSArray+QLayout.h
//  QLayout
//
//  Created by OFweek01 on 2020/5/13.
//  Copyright © 2020 OFweek01. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "QLayoutDefines.h"

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (QLayout)

// pinEdge align
- (NSArray <NSLayoutConstraint *> *)q_viewsAlignToEdge:(QEdge)edge;

// center align
- (NSArray <NSLayoutConstraint *> *)q_viewsAlignToAxis:(QAxis)axis;

// size equal
- (NSArray <NSLayoutConstraint *> *)q_viewsWidthEqual;
- (NSArray <NSLayoutConstraint *> *)q_viewsHeightEqual;

@end

NS_ASSUME_NONNULL_END
