//
//  UIViewController+SGAppKit.h
//  SGAppKitExample
//
//  Created by kingsic on 2019/7/13.
//  Copyright © 2019年 kingsic. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (SGAppKit)
/** 返回到指定控制器 */
- (void)SG_popToViewControllerName:(NSString *)viewControllerName;

@end

NS_ASSUME_NONNULL_END
