//
//  UIView+SGAppKit.m
//  SGAppKitExample
//
//  Created by kingsic on 2019/6/1.
//  Copyright © 2019年 kingsic. All rights reserved.
//

#import "UIView+SGAppKit.h"

@implementation UIView (SGAppKit)
- (void)setSG_x:(CGFloat)SG_x {
    CGRect frame = self.frame;
    frame.origin.x = SG_x;
    self.frame = frame;
}
- (CGFloat)SG_x {
    return self.frame.origin.x;
}

- (void)setSG_y:(CGFloat)SG_y {
    CGRect frame = self.frame;
    frame.origin.y = SG_y;
    self.frame = frame;
}
- (CGFloat)SG_y {
    return self.frame.origin.y;
}

- (void)setSG_width:(CGFloat)SG_width {
    CGRect frame = self.frame;
    frame.size.width = SG_width;
    self.frame = frame;
}
- (CGFloat)SG_width {
    return self.frame.size.width;
}

- (void)setSG_height:(CGFloat)SG_height {
    CGRect frame = self.frame;
    frame.size.height = SG_height;
    self.frame = frame;
}
- (CGFloat)SG_height {
    return self.frame.size.height;
}

- (CGFloat)SG_centerX {
    return self.center.x;
}
- (void)setSG_centerX:(CGFloat)SG_centerX {
    CGPoint center = self.center;
    center.x = SG_centerX;
    self.center = center;
}

- (CGFloat)SG_centerY {
    return self.center.y;
}
- (void)setSG_centerY:(CGFloat)SG_centerY {
    CGPoint center = self.center;
    center.y = SG_centerY;
    self.center = center;
}

- (void)setSG_origin:(CGPoint)SG_origin {
    CGRect frame = self.frame;
    frame.origin = SG_origin;
    self.frame = frame;
}
- (CGPoint)SG_origin {
    return self.frame.origin;
}

- (void)setSG_size:(CGSize)SG_size {
    CGRect frame = self.frame;
    frame.size = SG_size;
    self.frame = frame;
}
- (CGSize)SG_size {
    return self.frame.size;
}

- (void)setSG_top:(CGFloat)SG_top {
    CGRect frame = self.frame;
    frame.origin.y = SG_top;
    self.frame = frame;
}
- (CGFloat)SG_top {
    return self.frame.origin.y;
}

- (void)setSG_bottom:(CGFloat)SG_bottom {
    CGRect frame = self.frame;
    frame.origin.x = SG_bottom - frame.size.width;
    self.frame = frame;
}
- (CGFloat)SG_bottom {
    return self.frame.origin.y + self.frame.size.height;
}

/// 从 XIB 中加载视图
+ (instancetype)SG_loadViewFromXib {
    return [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil].lastObject;
}
/// 获取当前视图所在的控制器
- (UIViewController *)SG_getViewController {
    for (UIView *next = [self superview]; next; next = next.superview) {
        UIResponder *nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)nextResponder;
        }
    }
    return nil;
}
/// 给视图添加 UITapGestureRecognizer 手势
- (void)SG_addTapGestureRecognizerWithTarget:(id)target action:(SEL)action {
    self.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:target action:action];
    [self addGestureRecognizer:tap];
}

@end
