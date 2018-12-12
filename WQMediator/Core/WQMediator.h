//
//  WQMediator.h
//  WQMediator
//
//  Created by chenweiqiang on 2018/12/11.
//  Copyright © 2018年 chenweiqiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WQMediator : NSObject

+ (instancetype)sharedInstance;
- (id)performTarget:(NSString *)targetName action:(NSString *)actionName params:(NSDictionary *)params;

@end
