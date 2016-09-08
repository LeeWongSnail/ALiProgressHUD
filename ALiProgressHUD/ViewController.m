//
//  ViewController.m
//  ALiProgressHUD
//
//  Created by LeeWong on 16/9/8.
//  Copyright © 2016年 LeeWong. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+ALiHUD.h"

@interface ViewController ()
@property (nonatomic, assign) CGFloat percent;
@property (nonatomic, strong) NSTimer *timer;
@end

@implementation ViewController

- (IBAction)loadingAction:(UIButton *)sender {
    [self showLoading];
}

- (IBAction)normalTextAction:(UIButton *)sender {
    [self showText:sender.currentTitle];
}

- (IBAction)failureAction:(UIButton *)sender {
    [self showErrorText:sender.currentTitle];
}

- (IBAction)successAction:(UIButton *)sender {
    [self showSuccessText:sender.currentTitle];
}

- (IBAction)percentAction:(UIButton *)sender {
    self.timer = [NSTimer timerWithTimeInterval:0.1 target:self selector:@selector(showPercent) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
    
}
- (IBAction)imageAction:(UIButton *)sender {
    [self showImage:[UIImage imageNamed:@"emj"] text:sender.currentTitle];
}


- (void)showPercent
{
    self.percent += 5;
    [self showProgress:self.percent];
    
    if (self.percent == 100) {
        [self.timer invalidate];
        self.timer = nil;
    }
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
