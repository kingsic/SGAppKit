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
/** 判断字符串是否为空 */
- (BOOL)SG_isEmpty;

/** 判断是否是手机号码 */
- (BOOL)SG_isPhoneNumber;

/** 根据字号大小计算出字符串的宽 */
- (CGFloat)SG_calculateStringWidthWithFont:(UIFont *)font;
/**
 *  根据字号大小及宽度计算出字符串的高
 *
 *  @param font         文字字号
 *  @param width        限制的宽度
 */
- (CGFloat)SG_calculateStringHeightWithFont:(UIFont *)font width:(CGFloat)width;

@end

NS_ASSUME_NONNULL_END
