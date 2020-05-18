//
//  QLayoutDefines.h
//  QLayout
//
//  Created by OFweek01 on 2020/5/13.
//  Copyright © 2020 OFweek01. All rights reserved.
//

#ifndef QQLayoutDefines_h
#define QQLayoutDefines_h

/** Constants that represent edges of a view. */
typedef NS_ENUM(NSInteger, QQEdge) {
    /** The left edge of the view. */
    QQEdgeLeft = NSLayoutAttributeLeft,
    /** The right edge of the view. */
    QQEdgeRight = NSLayoutAttributeRight,
    /** The top edge of the view. */
    QQEdgeTop = NSLayoutAttributeTop,
    /** The bottom edge of the view. */
    QQEdgeBottom = NSLayoutAttributeBottom,
    /** The leading edge of the view (left edge for left-to-right languages like English, right edge for right-to-left languages like Arabic). */
    QQEdgeLeading = NSLayoutAttributeLeading,
    /** The trailing edge of the view (right edge for left-to-right languages like English, left edge for right-to-left languages like Arabic). */
    QQEdgeTrailing = NSLayoutAttributeTrailing
};

/** Constants that represent axes of a view. */
typedef NS_ENUM(NSInteger, QQAxis) {
    /** A vertical line equidistant from the view's left and right edges. */
    QQAxisVertical = NSLayoutAttributeCenterX,
    /** A horizontal line equidistant from the view's top and bottom edges. */
    QQAxisHorizontal = NSLayoutAttributeCenterY,
};

#endif /* QLayoutDefines_h */
