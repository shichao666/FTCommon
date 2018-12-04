//
//  UIButton+SCButton.h
//  FTTemplate
//
//  Created by 史超 on 2018/11/19.
//  Copyright © 2018年 史超. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^buttonClicked)(UIButton *btn);

@interface UIButton (FTButton)

//根据文字创建按钮  默认文字 字体颜色黑色
+ (UIButton *)buttonWithTitle:(NSString *)title andAction:(buttonClicked)action;

//根据文字创建按钮
+ (UIButton *)buttonWithTitle:(NSString *)title andTitleColor:(UIColor *)titleColor andAction:(buttonClicked)action;


//根据文字创建按钮  默认文字 字体颜色黑色
+ (UIButton *)buttonWithTitle:(NSString *)title andTarget:(id)target andAction:(SEL)action;

//根据文字创建按钮  默认文字 字体颜色黑色
+ (UIButton *)buttonWithTitle:(NSString *)title andTitleColor:(UIColor *)titleColor andTarget:(id)target andAction:(SEL)action;


//根据图片创建按钮
//+ (UIButton *)buttonWithImageName:(NSString *)imageName andBackgroundImageName:(NSString *)backImageName andAction:(buttonClicked)action;

//根据图片创建按钮
//+ (UIButton *)buttonWithImageName:(NSString *)imageName andBackgroundImageName:(NSString *)backImageName andTarget:(id)target andAction:(SEL)action;


@end
