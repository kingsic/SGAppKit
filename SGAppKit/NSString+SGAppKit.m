//
//  NSString+SGAppKit.m
//  SGAppKitExample
//
//  Created by kingsic on 2019/7/13.
//  Copyright © 2019年 kingsic. All rights reserved.
//

#import "NSString+SGAppKit.h"

@implementation NSString (SGAppKit)
/** 判断是否是手机号码 */
- (BOOL)SG_isPhoneNumber {
    NSString *tempStr = [self stringByReplacingOccurrencesOfString:@" " withString:@""];
    if (tempStr.length != 11) {
        return NO;
    } else {
        NSString *mobileRegex = @"[1][34578][0-9]{9}";
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileRegex];
        BOOL isMatch = [predicate evaluateWithObject:tempStr];
        
        if (isMatch) {
            return YES;
        } else {
            return NO;
        }
    }
}
/** 判断字符串是否为空 */
- (BOOL)SG_isEmpty {
    return (([self isKindOfClass:[NSNull class]]) || [self isEqual:[NSNull null]] || (self.length == 0) || (self == nil) || ([self isEqualToString:@"(null)"]) || ([self isEqualToString:@"<null>"]));
}

/**
 *  设置特定文字相关属性
 *
 *  @param color      颜色
 *  @param font       字体字号
 *  @param range      字体位置
 */
- (NSMutableAttributedString *)SG_color:(UIColor *)color font:(UIFont *)font range:(NSRange)range {
    NSMutableAttributedString *attriStr = [[NSMutableAttributedString alloc] initWithString:self];
    [attriStr addAttribute:NSForegroundColorAttributeName value:color range:range];
    [attriStr addAttribute:NSFontAttributeName value:font range:range];
    return attriStr;
}

@end
