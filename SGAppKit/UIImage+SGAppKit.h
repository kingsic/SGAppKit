//
//  UIView+SGAppKit.h
//  SGAppKitExample
//
//  Created by kingsic on 2019/6/1.
//  Copyright © 2019年 kingsic. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (SGAppKit)
/** 返回一张处理过的圆角图片 */
- (instancetype)SG_circleImage;
/** 返回一张处理过的圆角图片 */
+ (instancetype)SG_circleImageNamed:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
