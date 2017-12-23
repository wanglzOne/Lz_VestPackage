//
//  ZWBmobManager.m
//  VestProgect
//
//  Created by Tom on 2017/12/23.
//  Copyright © 2017年 Tom. All rights reserved.
//

#import "ZWBmobManager.h"

@implementation ZWBmobManager

+ (void)compareSwitchStatus:(void(^)(NSInteger switch_, NSURL * link,NSString *appid))completionHandler {
    BmobQuery   *bquery = [BmobQuery queryWithClassName:TabName];
    [bquery getObjectInBackgroundWithId:objectId block:^(BmobObject *object, NSError *error) {
        if(error){
            completionHandler (0, nil,nil);
            return;
        }
        //0 是关闭
        //1 是打开
        NSString * switch_ = [object objectForKey:switchKey];
        NSString * url     = [object objectForKey:urlKey];
        NSString * appid     = [object objectForKey:appIDKey];

        NSInteger status = switch_.integerValue;
        NSURL * link = [NSURL URLWithString:url];
        if(completionHandler){
            completionHandler (status, link, appid);
        }
    }];
}

@end
