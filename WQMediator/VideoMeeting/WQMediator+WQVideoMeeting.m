//
//  WQMediator+WQVideoMeeting.m
//  WQMediator
//
//  Created by chenweiqiang on 2018/12/11.
//  Copyright © 2018年 chenweiqiang. All rights reserved.
//

#import "WQMediator+WQVideoMeeting.h"

@implementation WQMediator (WQVideoMeeting)

- (UIViewController *)videoMeetingViewController
{
    UIViewController *viewController = [self performTarget:@"VideoMeeting"
                                                    action:@"gotoVideoViewController"
                                                    params:@{@"members":[NSMutableArray arrayWithObjects:@"1",@"2", nil]}
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
