//
//  UITableView+SGAppKit.h
//  SGAppKitExample
//
//  Created by kingsic on 2019/7/13.
//  Copyright © 2019年 kingsic. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (SGAppKit)
/** 从 XIB 中注册 Cell */
- (void)SG_registerNib:(Class)aClass reuseIdentifier:(NSString *)identifier;
/** 注册 Cell */
- (void)SG_registerClass:(Class)aClass reuseIdentifier:(NSString *)identifier;

@end

NS_ASSUME_NONNULL_END
