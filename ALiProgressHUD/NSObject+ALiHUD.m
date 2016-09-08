//
//  NSObject+ALiHUD.m
//  ALiProgressHUD
//
//  Created by LeeWong on 16/9/8.
//  Copyright © 2016年 LeeWong. All rights reserved.
//

#import "NSObject+ALiHUD.h"
#import <SVProgressHUD.h>
#import "ALiProgressHUD.h"

@implementation NSObject (ALiHUD)

- (void)showText:(NSString *)aText
{
    [ALiProgressHUD showWithStatus:aText];
}


- (void)showErrorText:(NSString *)aText
{
    [ALiProgressHUD showErrorWithStatus:aText];
}

- (void)showSuccessText:(NSString *)aText
{
    [ALiProgressHUD showSuccessWithStatus:aText];
}

- (void)showLoading
{
    [ALiProgressHUD show];
}


- (void)dismissLoading
{
    [ALiProgressHUD dismiss];
}

- (void)showProgress:(NSInteger)progress
{
    [ALiProgressHUD showProgress:progress/100.0 status:[NSString stringWithFormat:@"%li%%",(long)progress]];
}

- (void)showImage:(UIImage*)image text:(NSString*)aText
{
    [ALiProgressHUD showImage:image status:aText];
}

@end
