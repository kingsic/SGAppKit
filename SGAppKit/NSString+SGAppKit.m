//
//  NSString+SGAppKit.m
//  SGAppKitExample
//
//  Created by kingsic on 2019/7/13.
//  Copyright © 2019年 kingsic. All rights reserved.
//

#import "NSString+SGAppKit.h"

@implementation NSString (SGAppKit)
/** 判断字符串是否为空 */
- (BOOL)SG_isEmpty {
    return (([self isKindOfClass:[NSNull class]]) || [self isEqual:[NSNull null]] || (self.length == 0) || (self == nil) || ([self isEqualToString:@"(null)"]) || ([self isEqualToString:@"<null>"]));
}

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

/**
 *  根据字号计算出字符串的宽
 *
 *  @param font      字体字号
 */
- (CGFloat)SG_calculatesStringWidthWithFont:(UIFont *)font {
    NSDictionary *attrs = @{NSFontAttributeName : font};
    return [self boundingRectWithSize:CGSizeMake(0, 0) options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size.width;
}

/**
 *  设置文本上下间距
 *
 *  @param space      上下文本之间的间距
*/
- (NSMutableAttributedString *)SG_setSpaceBetweenText:(CGFloat)space {
    NSMutableAttributedString *attributedStr = [[NSMutableAttributedString alloc] initWithString:self];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:space];
    [attributedStr addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [self length])];
    return attributedStr;
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
