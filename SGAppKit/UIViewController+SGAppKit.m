//
//  UIViewController+SGAppKit.m
//  SGAppKitExample
//
//  Created by kingsic on 2019/7/13.
//  Copyright © 2019年 kingsic. All rights reserved.
//

#import "UIViewController+SGAppKit.h"

@implementation UIViewController (SGAppKit)
/** 返回到指定控制器 */
- (void)SG_popToViewController:(Class)aClass {
    [self SG_popToViewController:aClass animated:YES];
}
/** 返回到指定控制器 */
- (void)SG_popToViewController:(Class)aClass animated:(BOOL)animated {
    for (UIViewController *vc in self.navigationController.viewControllers) {
        if ([vc isKindOfClass:aClass]) {
            [self.navigationController popToViewController:vc animated:animated];
        }
    }
}

@end
