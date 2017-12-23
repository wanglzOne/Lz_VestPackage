//
//  ZWBmobManager.h
//  VestProgect
//
//  Created by Tom on 2017/12/23.
//  Copyright © 2017年 Tom. All rights reserved.
//

#import <Foundation/Foundation.h>

#define TabName @"Switch" //里面只有一条数据
#define BmobApplicationID @"f3cceb4c1d89464760af2c5b37335868" //这个有用
#define SecretKey     @"fa85604410d57c58"
#define MasterKey     @"aea1d606d21468a45bdfa806034c8c10"

#define objectId @"AfVlZZZ9" //根据ID来获取数据

static NSString * const appIDKey     = @"appid"; //appid
static NSString * const urlKey         = @"url";     //链接的Key
static NSString * const switchKey      = @"switch";  //开关的Key

@interface ZWBmobManager : NSObject
+ (void)compareSwitchStatus:(void(^)(NSInteger switch_, NSURL * link,NSString *appid))completionHandler; //开关状态
@end
