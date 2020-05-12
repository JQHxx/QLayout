# QLayout
autoLayout NSLayoutAnchor 封装

##### 1、使用示例
```
- (void) test1: (UIView *) view {
    [view q_topEqualYAxisAnchor:self.view.topAnchor constant:0];
    [view q_leftEqualXAxisAnchor:self.view.leftAnchor constant:0];
    [view q_rightEqualXAxisAnchor:self.view.rightAnchor constant:0];
    if (@available(iOS 11.0, *)) {
        [view q_bottomEqualYAxisAnchor:self.view.safeAreaLayoutGuide.bottomAnchor constant:0];
    } else {
        [view q_bottomEqualYAxisAnchor:self.view.bottomAnchor constant:0];
    }
}


- (void) test2: (UIView *) view {
    [view q_edgeEqualSuperView];
}

- (void) test3: (UIView *) view {
    [view q_centerXEqualSuperView];
    [view q_centerYEqualSuperView];
    [view q_sizeEqual:CGSizeMake(100, 100)];
}

- (void) test4: (UIView *) view {
    [view q_edgeEqualSuperView:UIEdgeInsetsMake(10, 0, -10, 0)];
}
```
#### 2、安装方式
最低支持版本 iOS 9 及以上
