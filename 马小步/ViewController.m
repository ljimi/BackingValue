//
//  ViewController.m
//  马小步
//
//  Created by 孙春磊 on 2016/11/20.
//  Copyright © 2016年 mine. All rights reserved.
//

#import "ViewController.h"
#import "BlockViewController.h"
#import "DelegateViewController.h"
#import "NotificaViewController.h"
#import "StackViewController.h"
#import "SingleViewController.h"
#import "single.h"
#import "UserDefaultViewController.h"
#import "SQLiteViewController.h"
#import "SQLiteOB.h"
@interface ViewController ()<DelegateViewC>
@property (weak, nonatomic) IBOutlet UIButton *blockBtn;
@property (weak, nonatomic) IBOutlet UIButton *delegateBtn;
@property (weak, nonatomic) IBOutlet UIButton *notificaBtn;
@property (weak, nonatomic) IBOutlet UIButton *singleBtn;
@property (weak, nonatomic) IBOutlet UIButton *stackBtn;
@property (weak, nonatomic) IBOutlet UIButton *textBtn;
@property (weak, nonatomic) IBOutlet UIButton *userDefaultBtn;
@property (weak, nonatomic) IBOutlet UIButton *SQLiteBtn;

@property (nonatomic, strong) BlockViewController *blockController;
@property (nonatomic, strong) DelegateViewController *delegateController;
@property (nonatomic, strong) NotificaViewController *notificaController;
@property (nonatomic, strong) StackViewController *stackController;
@property (nonatomic, strong) SingleViewController *singleController;
@property (nonatomic, strong) UserDefaultViewController *userDefaultController;
@property (nonatomic, strong) SQLiteViewController *SQLiteController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.blockBtn addTarget:self action:@selector(blockBtnToViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.delegateBtn addTarget:self action:@selector(delegateBtnToViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.notificaBtn addTarget:self action:@selector(notificaBtnToViewController) forControlEvents:UIControlEventTouchUpInside];
     [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(lookNotifi:) name:@"setText" object: nil];
    
    [self.stackBtn addTarget:self action:@selector(stackBtnToViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.singleBtn addTarget:self action:@selector(singleBtnToViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.userDefaultBtn addTarget:self action:@selector(userDefaultBtnToViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.SQLiteBtn addTarget:self action:@selector(SQLiteBtnToViewController) forControlEvents:UIControlEventTouchUpInside];
    
    
}

#pragma mark block

-(void)blockBtnToViewController{
    self.blockController = [[BlockViewController alloc] init];
    __weak typeof(self) weakSelf = self;
    [self.blockController setText:^(NSString *text) {
        weakSelf.textBtn.titleLabel.text = text;
    }];
    [self.navigationController pushViewController:_blockController animated:YES];
}

#pragma mark delegate
//http://ww4.sinaimg.cn/or360/006vNguegw1faaadt0u2eg30d208pk3s.gif
-(void)delegateBtnToViewController{
    self.delegateController = [[DelegateViewController alloc] init];
    self.delegateController.delegate = self;
    [self.navigationController pushViewController:_delegateController animated:YES];
}
-(void)DelegateViewController:(NSString *)text{
    self.textBtn.titleLabel.text = text;
}

#pragma mark notifica

-(void)notificaBtnToViewController{
    self.notificaController = [[NotificaViewController alloc] init];
    [self.navigationController pushViewController:_notificaController animated:YES];
}

- (void)lookNotifi:(NSNotification *)notifi{
    self.notificaController = (NotificaViewController *)notifi.object;
    self.textBtn.titleLabel.text = (NSString *)notifi.object;
   
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark stack

- (void)stackBtnToViewController{
    self.stackController = [[StackViewController alloc] init];
    [self.navigationController pushViewController:_stackController animated:YES];
}

#pragma mark single

- (void)singleBtnToViewController{
    self.singleController = [[SingleViewController alloc] init];
    [self.navigationController pushViewController:_singleController animated:YES];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSUserDefaults *Default = [[NSUserDefaults standardUserDefaults] objectForKey:@"textF_text"];
    
//    self.testSQL.titleLabel.text = [SQLiteOB cacheStatus];
    self.testU.titleLabel.text = (NSString *)Default;
    self.testG.titleLabel.text = [single shareInstance].text;
}

#pragma mark UserDefault

- (void)userDefaultBtnToViewController{
    self.userDefaultController = [[UserDefaultViewController alloc] init];
    [self.navigationController pushViewController:_userDefaultController animated:YES];
}

#pragma mark SQLite

- (void)SQLiteBtnToViewController{
    self.SQLiteController = [[SQLiteViewController alloc] init];
    [self.navigationController pushViewController:_SQLiteController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
