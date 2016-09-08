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

/**
 *  显示纯文本 加一个转圈
 *
 *  @param aText 要显示的文本
 */
- (void)showText:(NSString *)aText;

/**
 *  显示错误信息
 *
 *  @param aText 错误信息文本
 */
- (void)showErrorText:(NSString *)aText;

/**
 *  显示成功信息
 *
 *  @param aText 成功信息文本
 */
- (void)showSuccessText:(NSString *)aText;

/**
 *  只显示一个加载框
 */
- (void)showLoading;

/**
 *  隐藏加载框（所有类型的加载框 都可以通过这个方法 隐藏）
 */
- (void)dismissLoading;

/**
 *  显示百分比
 *
 *  @param progress 百分比（整型 100 = 100%）
 */
- (void)showProgress:(NSInteger)progress;

/**
 *  显示图文提示
 *
 *  @param image 自定义的图片
 *  @param aText 要显示的文本
 */
- (void)showImage:(UIImage*)image text:(NSString*)aText;
@end
