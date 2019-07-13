//
//  UIButton+SGAppKit.h
//  SGAppKitExample
//
//  Created by kingsic on 2019/6/1.
//  Copyright © 2019年 kingsic. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    /// 图片在左，文字在右
    SGImagePositionStyleLeft,
    /// 图片在右，文字在左
    SGImagePositionStyleRight,
    /// 图片在上，文字在下
    SGImagePositionStyleTop,
    /// 图片在下，文字在上
    SGImagePositionStyleBottom,
} SGImagePositionStyle;

typedef void(^SGCountdownCompletionBlock)(void);

@interface UIButton (SGAppKit)

/** 倒计时，s倒计 */
- (void)SG_countdownWithSec:(NSInteger)time;
/** 倒计时，秒字倒计 */
- (void)SG_countdownWithSecond:(NSInteger)second;
/** 倒计时，s倒计,带有回调 */
- (void)SG_countdownWithSec:(NSInteger)sec completion:(SGCountdownCompletionBlock)block;
/** 倒计时,秒字倒计，带有回调 */
- (void)SG_countdownWithSecond:(NSInteger)second completion:(SGCountdownCompletionBlock)block;

/**
 *  设置图片与文字样式
 *
 *  @param imagePositionStyle     图片位置样式
 *  @param spacing                图片与文字之间的间距
 */
- (void)SG_imagePositionStyle:(SGImagePositionStyle)imagePositionStyle spacing:(CGFloat)spacing;
/**
 *  设置图片与文字样式（推荐使用）
 *
 *  @param imagePositionStyle     图片位置样式
 *  @param spacing                图片与文字之间的间距
 *  @param imagePositionBlock     在此 Block 中设置按钮的图片、文字以及 contentHorizontalAlignment 属性
 */
- (void)SG_imagePositionStyle:(SGImagePositionStyle)imagePositionStyle spacing:(CGFloat)spacing imagePositionBlock:(void (^)(UIButton *button))imagePositionBlock;

@end

NS_ASSUME_NONNULL_END
