//
//  UIView+SGAppKit.h
//  SGAppKitExample
//
//  Created by kingsic on 2019/6/1.
//  Copyright © 2019年 kingsic. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

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
+ (instancetype)SG_loadViewFromXib;
/** 获取当前视图所在的控制器 */
- (UIViewController *)SG_getViewController;
/** 给视图添加 UITapGestureRecognizer 手势 */
- (void)SG_addTapGestureRecognizerWithTarget:(id)target action:(SEL)action;

@end

NS_ASSUME_NONNULL_END
