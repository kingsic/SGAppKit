//
//  UITextField+SGAppKit.m
//  SGAppKitExample
//
//  Created by kingsic on 2019/6/1.
//  Copyright © 2019年 kingsic. All rights reserved.
//

#import "UITextField+SGAppKit.h"

@implementation UITextField (SGAppKit)

static NSString *const SGPlaceholderColorKey = @"placeholderLabel.textColor";

- (void)setSG_placeholderColor:(UIColor *)SG_placeholderColor {
    // 提前设置占位文字, 目的: 让它提前创建 placeholderLabel
    NSString *oldPlaceholder = self.placeholder;
    self.placeholder = @" ";
    self.placeholder = oldPlaceholder;
    
    // 恢复到默认的占位文字颜色
    if (SG_placeholderColor == nil) {
        SG_placeholderColor = [UIColor colorWithRed:0 green:0 blue:0.0980392 alpha:0.22];
    }
    
    // 设置占位文字颜色
    [self setValue:SG_placeholderColor forKeyPath:SGPlaceholderColorKey];
}

- (UIColor *)SG_placeholderColor {
    return [self valueForKeyPath:SGPlaceholderColorKey];
}

@end
