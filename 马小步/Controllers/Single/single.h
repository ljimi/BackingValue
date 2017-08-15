//
//  single.h
//  马小步
//
//  Created by 孙春磊 on 2016/11/21.
//  Copyright © 2016年 mine. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface single : NSObject
@property(nonatomic, copy) NSString *text;

+(instancetype) shareInstance;
@end

