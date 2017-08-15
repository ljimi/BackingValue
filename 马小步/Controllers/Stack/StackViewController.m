//
//  StackViewController.m
//  马小步
//
//  Created by 孙春磊 on 2016/11/21.
//  Copyright © 2016年 mine. All rights reserved.
//

#import "StackViewController.h"
#import "ViewController.h"
@interface StackViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textF;
@property (weak, nonatomic) IBOutlet UIButton *backBtn;

@end

@implementation StackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.backBtn addTarget:self action:@selector(stackToBack) forControlEvents:UIControlEventTouchUpInside];

}
-(void)stackToBack{
    ViewController *oneVC =nil;
    
    for(UIViewController* VC in self.navigationController.viewControllers){
        if([VC isKindOfClass:[ViewController class]]){
            
            oneVC =(ViewController *) VC;
            oneVC.testS.titleLabel.text = _textF.text;
            
            [self.navigationController popToViewController:oneVC animated:YES];}
    }
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
