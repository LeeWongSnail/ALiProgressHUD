//
//  NSObject+ALiHUD.h
//  ALiProgressHUD
//
//  Created by LeeWong on 16/9/8.
//  Copyright © 2016年 LeeWong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSObject (ALiHUD)

- (void)showText:(NSString *)aText;
- (void)showErrorText:(NSString *)aText;
- (void)showSuccessText:(NSString *)aText;
- (void)showLoading;
- (void)dismissLoading;
- (void)showProgress:(NSInteger)progress;
- (void)showImage:(UIImage*)image text:(NSString*)aText;
@end
