//
//  QLayoutInline.h
//  MutipleCells
//
//  Created by OFweek01 on 2020/5/11.
//  Copyright © 2020 la0fu. All rights reserved.
//

#ifndef QLayoutInline_h
#define QLayoutInline_h

NS_INLINE UIEdgeInsets q_safeAreaInset(UIView *view) {
    if (@available(iOS 11.0, *)) {
        return view.safeAreaInsets;
    }
    return UIEdgeInsetsZero;
}

#endif /* QLayoutInline_h */
