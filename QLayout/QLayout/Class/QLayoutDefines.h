//
//  QLayoutDefines.h
//  QLayout
//
//  Created by OFweek01 on 2020/5/13.
//  Copyright © 2020 OFweek01. All rights reserved.
//

#ifndef QLayoutDefines_h
#define QLayoutDefines_h

/** Constants that represent edges of a view. */
typedef NS_ENUM(NSInteger, QEdge) {
    /** The left edge of the view. */
    QEdgeLeft = NSLayoutAttributeLeft,
    /** The right edge of the view. */
    QEdgeRight = NSLayoutAttributeRight,
    /** The top edge of the view. */
    QEdgeTop = NSLayoutAttributeTop,
    /** The bottom edge of the view. */
    QEdgeBottom = NSLayoutAttributeBottom,
    /** The leading edge of the view (left edge for left-to-right languages like English, right edge for right-to-left languages like Arabic). */
    QEdgeLeading = NSLayoutAttributeLeading,
    /** The trailing edge of the view (right edge for left-to-right languages like English, left edge for right-to-left languages like Arabic). */
    QEdgeTrailing = NSLayoutAttributeTrailing
};

/** Constants that represent axes of a view. */
typedef NS_ENUM(NSInteger, QAxis) {
    /** A vertical line equidistant from the view's left and right edges. */
    QAxisVertical = NSLayoutAttributeCenterX,
    /** A horizontal line equidistant from the view's top and bottom edges. */
    QAxisHorizontal = NSLayoutAttributeCenterY,
};

#endif /* QLayoutDefines_h */
