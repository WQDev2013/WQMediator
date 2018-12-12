//
//  WQTargets.h
//  WQMediator
//
//  Created by chenweiqiang on 2018/12/11.
//  Copyright © 2018年 chenweiqiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Target_FileModule : NSObject

- (id)Action_gotoFileListViewController:(NSDictionary *)params;

@end

@interface Target_VideoMeeting : NSObject

- (id)Action_gotoMeetingViewController:(NSDictionary *)params;

@end

