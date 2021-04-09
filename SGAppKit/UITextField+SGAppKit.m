//
//  UITextField+SGAppKit.m
//  SGAppKitExample
//
//  Created by kingsic on 2017/8/7.
//  Copyright © 2017年 kingsic. All rights reserved.
//

#import "UITextField+SGAppKit.h"

@implementation UITextField (SGAppKit)
/** 占位文字颜色 */
- (void)SG_setPlaceholderColor:(UIColor *)color {
    NSDictionary *dict = @{NSForegroundColorAttributeName : color};
    NSAttributedString *attribute = [[NSAttributedString alloc] initWithString:self.placeholder attributes:dict];
    [self setAttributedPlaceholder:attribute];
}

@end
