//
//  UserDefaultViewController.m
//  马小步
//
//  Created by 孙春磊 on 2016/11/21.
//  Copyright © 2016年 mine. All rights reserved.
//

#import "UserDefaultViewController.h"

@interface UserDefaultViewController ()
@property (weak, nonatomic) IBOutlet UIButton *backBtn;
@property (weak, nonatomic) IBOutlet UITextField *textF;

@end

@implementation UserDefaultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.backBtn addTarget:self action:@selector(userDefaultToBack) forControlEvents:UIControlEventTouchUpInside];
}


-(void)userDefaultToBack{
    [[NSUserDefaults standardUserDefaults] setObject:_textF.text forKey:@"textF_text"];
    [[NSUserDefaults  standardUserDefaults] synchronize];
    [self.navigationController popToRootViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
