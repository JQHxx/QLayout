//
//  NSArray+QLayout.h
//  QLayout
//
//  Created by OFweek01 on 2020/5/13.
//  Copyright © 2020 OFweek01. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "QQLayoutDefines.h"

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (QQLayout)

// pinEdge align
- (NSArray <NSLayoutConstraint *> *)qq_viewsAlignToEdge:(QQEdge)edge;

// center align
- (NSArray <NSLayoutConstraint *> *)qq_viewsAlignToAxis:(QQAxis)axis;

// size equal
- (NSArray <NSLayoutConstraint *> *)qq_viewsWidthEqual;
- (NSArray <NSLayoutConstraint *> *)qq_viewsHeightEqual;

@end

NS_ASSUME_NONNULL_END
