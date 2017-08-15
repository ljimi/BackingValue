//
//  singleOB.h
//  马小步
//
//  Created by 孙春磊 on 2016/11/21.
//  Copyright © 2016年 mine. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface singleOB : NSObject
#define singleOB_H(name) + (instancetype)shared##name;
@end
