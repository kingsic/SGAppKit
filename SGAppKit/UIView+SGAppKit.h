//
//  UIView+SGAppKit.h
//  SGAppKitExample
//
//  Created by kingsic on 2019/6/1.
//  Copyright © 2019年 kingsic. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^UITapActionBlock)(void);

@interface UIView (SGAppKit)
@property (nonatomic, assign) CGFloat SG_x;
@property (nonatomic, assign) CGFloat SG_y;
@property (nonatomic, assign) CGFloat SG_width;
@property (nonatomic, assign) CGFloat SG_height;
@property (nonatomic, assign) CGFloat SG_centerX;
@property (nonatomic, assign) CGFloat SG_centerY;
@property (nonatomic, assign) CGPoint SG_origin;
@property (nonatomic, assign) CGSize  SG_size;
@property (nonatomic, assign) CGFloat SG_top;
@property (nonatomic, assign) CGFloat SG_bottom;

/** 从 XIB 中加载视图 */
+ (instancetype)SG_loadFromXib;

/** 将视图添加到 KeyWindow 上 */
- (void)SG_addToKeyWindow;

/** 移除视图上的所有子视图 */
- (void)SG_removeAllSubviews;
/** 移除视图上指定成员子视图 */
- (void)SG_removeAllSubviewsIsMemberOfClass:(Class)aClass;

/** 获取当前视图所在的控制器 */
- (UIViewController *)SG_getController;

/** 给视图添加 UITapGestureRecognizer 手势 */
- (void)SG_addTapActionWithBlock:(UITapActionBlock)block;

/** 给视图画条虚线 */
- (void)SG_drawDottedLineWithStartPoint:(CGPoint)point color:(UIColor *)color width:(CGFloat)width length:(NSNumber *)length space:(NSNumber *)space size:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
