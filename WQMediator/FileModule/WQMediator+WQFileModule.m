//
//  WQMediator+WQFileModule.m
//  WQMediator
//
//  Created by chenweiqiang on 2018/12/11.
//  Copyright © 2018年 chenweiqiang. All rights reserved.
//

#import "WQMediator+WQFileModule.h"

@implementation WQMediator (WQFileModule)

- (UIViewController *)fileListViewController
{
    UIViewController *viewController = [self performTarget:@"FileModule"
                                                    action:@"gotoFileListViewController"
                                                    params:@{@"urlstring":@"http://www.baidu.com"}
                                        ];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return viewController;
    } else {
        // 这里处理异常场景，具体如何处理取决于产品
        return [[UIViewController alloc] init];
    }
}
@end
