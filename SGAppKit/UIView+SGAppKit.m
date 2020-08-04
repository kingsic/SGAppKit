//
//  UIView+SGAppKit.m
//  SGAppKitExample
//
//  Created by kingsic on 2019/6/1.
//  Copyright © 2019年 kingsic. All rights reserved.
//

#import "UIView+SGAppKit.h"
#import <objc/runtime.h>

static char SGActionHandlerTapGestureKey;
static char SGActionHandlerTapBlockKey;

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


#pragma mark - - method
/// 从 XIB 中加载视图
+ (instancetype)SG_loadFromXib {
    return [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil].lastObject;
}

/// 将视图添加到 KeyWindow 上
- (void)SG_addToKeyWindow {
    [[[UIApplication sharedApplication] keyWindow] addSubview:self];
}

/// 移除视图上的所有子视图
- (void)SG_removeAllSubviews {
    for(UIView *subv in [self subviews]) {
        [subv removeFromSuperview];
    }
}
/// 移除视图上指定成员子视图
- (void)SG_removeAllSubviewsIsMemberOfClass:(Class)aClass {
    for (UIView *subView in [self subviews]) {
        if ([subView isMemberOfClass:aClass]) {
            [subView removeFromSuperview];
        }
    }
}

/// 获取当前视图所在的控制器
- (UIViewController *)SG_getController {
    for (UIView *next = [self superview]; next; next = next.superview) {
        UIResponder *nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)nextResponder;
        }
    }
    return nil;
}

/// 给视图添加 UITapGestureRecognizer 手势
- (void)SG_addTapActionWithBlock:(UITapActionBlock)block {
    self.userInteractionEnabled = YES;
    UITapGestureRecognizer *gesture = objc_getAssociatedObject(self, &SGActionHandlerTapGestureKey);
    if (!gesture) {
        gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleActionForTapGesture:)];
        [self addGestureRecognizer:gesture];
        objc_setAssociatedObject(self, &SGActionHandlerTapGestureKey, gesture, OBJC_ASSOCIATION_RETAIN);
    }
    objc_setAssociatedObject(self, &SGActionHandlerTapBlockKey, block, OBJC_ASSOCIATION_COPY);
}
- (void)handleActionForTapGesture:(UITapGestureRecognizer *)gesture {
    if (gesture.state == UIGestureRecognizerStateRecognized) {
        UITapActionBlock block = objc_getAssociatedObject(self, &SGActionHandlerTapBlockKey);
        if (block) {
            block();
        }
    }
}

/**
 *  给视图画条虚线
 *
 *  @param point        起点
 *  @param color        虚线颜色
 *  @param width        虚线的宽度
 *  @param length       虚线的长度
 *  @param space        虚线之间的间距
 *  @param size         width 为 0 时垂直；height 为 0 时水平
 */
- (void)SG_drawDottedLineWithStartPoint:(CGPoint)point color:(UIColor *)color width:(CGFloat)width length:(NSNumber *)length space:(NSNumber *)space size:(CGSize)size {
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.position = point;
    shapeLayer.fillColor = nil;
    // 虚线颜色
    shapeLayer.strokeColor = color.CGColor;
    // 虚线的宽度
    shapeLayer.lineWidth = width;
    shapeLayer.lineJoin = kCALineJoinRound;
    // 第一个参数：线的长度；第二个参数：线间距
    shapeLayer.lineDashPattern = @[length, space];
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathMoveToPoint(path, NULL, 0, 0);
    CGPathAddLineToPoint(path, NULL, size.width, size.height);
    shapeLayer.path = path;
    CGPathRelease(path);
    [self.layer addSublayer:shapeLayer];
}

@end
