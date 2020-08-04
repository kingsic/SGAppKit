//
//  UITableView+SGAppKit.m
//  SGAppKitExample
//
//  Created by kingsic on 2019/7/13.
//  Copyright © 2019年 kingsic. All rights reserved.
//

#import "UITableView+SGAppKit.h"

@implementation UITableView (SGAppKit)
// 从 XIB 中注册 Cell
- (void)SG_registerNib:(Class)aClass reuseIdentifier:(NSString *)identifier {
    [self registerNib:[UINib nibWithNibName:NSStringFromClass(aClass) bundle:nil] forCellReuseIdentifier:identifier];
}
// 注册 Cell
- (void)SG_registerClass:(Class)aClass reuseIdentifier:(NSString *)identifier {
    [self registerClass:aClass forCellReuseIdentifier:identifier];
}

@end
