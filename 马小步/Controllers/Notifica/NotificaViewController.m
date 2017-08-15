//
//  NotificaViewController.m
//  马小步
//
//  Created by 孙春磊 on 2016/11/21.
//  Copyright © 2016年 mine. All rights reserved.
//

#import "NotificaViewController.h"

@interface NotificaViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textF;
@property (weak, nonatomic) IBOutlet UIButton *notificaBtn;

@end

@implementation NotificaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.notificaBtn addTarget:self action:@selector(notificaToBack) forControlEvents:UIControlEventTouchUpInside];
    
}
-(void)notificaToBack{
    dispatch_async(dispatch_get_main_queue(), ^{
        [[NSNotificationCenter defaultCenter] postNotificationName:@"setText" object:_textF.text];
    });
    [self.navigationController popViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
