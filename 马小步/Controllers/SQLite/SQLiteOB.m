//
//  SQLiteOB.m
//  马小步
//
//  Created by 孙春磊 on 2016/11/21.
//  Copyright © 2016年 mine. All rights reserved.
//

#import "SQLiteOB.h"
//#import "FMDB.h"
@implementation SQLiteOB

//static FMDatabase *_db;

//+(void)initialize{
//    // 获取数据的文路径
//    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
//    NSString *sqliteFilePath = [path stringByAppendingPathComponent:@"status.sqlite"];
//    
//    // 打开数据库
//    _db = [FMDatabase databaseWithPath:sqliteFilePath];
//    
//    // 创建表
//    if ([_db open]) {
//        NSLog(@"打开数据库成功");
//        // 在企业级开发中, 写sql语句最好先用图形工具编写测试之后拷贝到项目中
//        NSString *sql = @"CREATE TABLE IF NOT EXISTS t_status  (id INTEGER PRIMARY KEY AUTOINCREMENT,idr INTEGER TEXT NOT NULL, str CHAR TEXT NOT NULL);";
//        ;
//        if([_db executeUpdate:sql])
//        {
//            NSLog(@"创建表成功");
//        }
//    }
//}

//+ (BOOL)saveCacheStatus:(NSString  *)str
//{
//    int i = 0;
//    i += 1;
//    // 存储数据
//    BOOL success  = [_db executeUpdate:@"INSERT INTO t_status (idr, str) VALUES (?, ?);", i, str];
//    if (success) {
//        NSLog(@"保存数据成功");
//    }
//    return YES;
//}
//+ (NSString *)cacheStatus
//{
//    int i = 0;
//    i += 1;
//    FMResultSet *set = nil;
////    if (i){
////        set = [_db executeQuery:@"SELECT * FROM t_status WHERE idr <= ?  ORDER BY idr DESC LIMIT ?", i , 1];
////    }
////        
//    NSString *str = [set stringForColumnIndex:i];
//    
//    return str;
//}
//
@end
