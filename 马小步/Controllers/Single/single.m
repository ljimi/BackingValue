//
//  single.m
//  马小步
//
//  Created by 孙春磊 on 2016/11/21.
//  Copyright © 2016年 mine. All rights reserved.
//

#import "single.h"

@implementation single
static single *_instance = nil;


+(id) allocWithZone:(struct _NSZone *)zone
{
    return [single shareInstance] ;
}

+(instancetype) shareInstance
{
    static dispatch_once_t onceToken ;
    dispatch_once(&onceToken, ^{
        _instance = [[super allocWithZone:NULL] init] ;
    }) ;
    return _instance ;
}
-(id) copyWithZone:(struct _NSZone *)zone
{
    return [single shareInstance] ;
}
@end
