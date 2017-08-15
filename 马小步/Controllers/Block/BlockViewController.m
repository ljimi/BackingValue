//
//  BlockViewController.m
//  马小步
//
//  Created by 孙春磊 on 2016/11/20.
//  Copyright © 2016年 mine. All rights reserved.
//

#import "BlockViewController.h"

@interface BlockViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textF;
@property (weak, nonatomic) IBOutlet UIButton *backBtn;

@end

@implementation BlockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.backBtn addTarget:self action:@selector(blockToBack) forControlEvents:UIControlEventTouchUpInside];

}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self.textF resignFirstResponder];
    
}
-(void)setText:(MYblock)block{
    if (block) {
        self.testBlock = block;
}}

-(void)blockToBack{
    self.testBlock(_textF.text);
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
