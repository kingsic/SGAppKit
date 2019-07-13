//
//  NSString+SGAppKit.h
//  SGAppKitExample
//
//  Created by kingsic on 2019/7/13.
//  Copyright © 2019年 kingsic. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (SGAppKit)
/** 判断是否是手机号码 */
- (BOOL)SG_isPhoneNumber;
/** 判断字符串是否为空 */
- (BOOL)SG_isEmpty;

/**
 *  设置特定文字相关属性
 *
 *  @param color      颜色
 *  @param font       字体字号
 *  @param range      字体位置
 */
- (NSMutableAttributedString *)SG_color:(UIColor *)color font:(UIFont *)font range:(NSRange)range;

@end

NS_ASSUME_NONNULL_END
