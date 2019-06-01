//
//  UITextView+SGAppKit.h
//  SGAppKitExample
//
//  Created by kingsic on 2019/6/1.
//  Copyright © 2019年 kingsic. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextView (SGAppKit)
/**
 *  给 UITextView 添加 placeHolder 及其相关属性
 *
 *  @param placeHolder      placeHolderText
 *  @param color            placeHolderColor
 *  @param font             placeHolderFont
 */
- (void)SG_placeHolder:(NSString *)placeHolder color:(UIColor *)color font:(UIFont *)font;

@end

NS_ASSUME_NONNULL_END
