//
//  BlockViewController.h
//  马小步
//
//  Created by 孙春磊 on 2016/11/20.
//  Copyright © 2016年 mine. All rights reserved.
//

#import <UIKit/UIKit.h>
//@class BlockViewController;

typedef void (^MYblock)(NSString *text);
@interface BlockViewController : UIViewController
@property (nonatomic , copy) MYblock testBlock;
-(void)setText:(MYblock )block;

@end
