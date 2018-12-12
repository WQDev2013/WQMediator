//
//  WQTargets.m
//  WQMediator
//
//  Created by chenweiqiang on 2018/12/11.
//  Copyright © 2018年 chenweiqiang. All rights reserved.
//

#import "WQTargets.h"
#import "FileListViewController.h"
#import "MeetingViewController.h"

@implementation Target_FileModule

- (id)Action_gotoFileListViewController:(NSDictionary *)params
{
    // 因为action是从属于ModuleA的，所以action直接可以使用ModuleA里的所有声明
    FileListViewController *vc = [[FileListViewController alloc] init];
    vc.urlstring = params[@"urlstring"];
    return vc;
}

@end

@implementation Target_VideoMeeting

- (id)Action_gotoMeetingViewController:(NSDictionary *)params
{
    MeetingViewController *vc = [[MeetingViewController alloc] init];
    vc.members = params[@"members"];
    return vc;
}

@end

