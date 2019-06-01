//
//  UITextView+SGAppKit.m
//  SGAppKitExample
//
//  Created by kingsic on 2019/6/1.
//  Copyright © 2019年 kingsic. All rights reserved.
//

#import "UITextView+SGAppKit.h"

@implementation UITextView (SGAppKit)

static NSString *const SG_placeholderLabel = @"_placeholderLabel";

- (void)SG_placeHolder:(NSString *)placeHolder color:(UIColor *)color font:(UIFont *)font {
    UILabel *placeHolderLabel = [[UILabel alloc] init];
    placeHolderLabel.text = placeHolder;
    placeHolderLabel.numberOfLines = 0;
    placeHolderLabel.textColor = color;
    placeHolderLabel.font = font;
    [placeHolderLabel sizeToFit];
    [self addSubview:placeHolderLabel];
    [self setValue:placeHolderLabel forKey:SG_placeholderLabel];
}

@end
