//
//  DelegateViewController.m
//  马小步
//
//  Created by 孙春磊 on 2016/11/20.
//  Copyright © 2016年 mine. All rights reserved.
//

#import "DelegateViewController.h"

@interface DelegateViewController ()
@property (weak, nonatomic) IBOutlet UIButton *delegateBtn;
@property (weak, nonatomic) IBOutlet UITextField *textF;

@end

@implementation DelegateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.delegateBtn addTarget:self action:@selector(delegateToBack) forControlEvents:UIControlEventTouchUpInside];

}
-(void)delegateToBack{
    dispatch_async(dispatch_get_main_queue(), ^{
        if ([self.delegate respondsToSelector:@selector(DelegateViewController:)]) {
            [self.delegate DelegateViewController:_textF.text];
        }
    });
    
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
