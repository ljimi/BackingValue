//
//  DelegateViewController.h
//  马小步
//
//  Created by 孙春磊 on 2016/11/20.
//  Copyright © 2016年 mine. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DelegateViewController;
@protocol DelegateViewC <NSObject>
@optional
-(void)DelegateViewController:(NSString *)text;
@end


@interface DelegateViewController : UIViewController
@property (nonatomic , weak) id<DelegateViewC> delegate;
@end
