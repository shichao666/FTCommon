//
//  UIButton+SCButton.m
//  FTTemplate
//
//  Created by 史超 on 2018/11/19.
//  Copyright © 2018年 史超. All rights reserved.
//

#import "UIButton+FTButton.h"
#import <objc/runtime.h>

@implementation UIButton (FTButton)

//根据文字创建按钮  默认文字 字体颜色黑色
+ (UIButton *)buttonWithTitle:(NSString *)title andAction:(buttonClicked)action {
    return [UIButton buttonWithTitle:title andTitleColor:[UIColor blackColor] andAction:action];
}

//根据文字创建按钮
+ (UIButton *)buttonWithTitle:(NSString *)title andTitleColor:(UIColor *)titleColor andAction:(buttonClicked)action {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    if (action) {
        objc_setAssociatedObject(btn,@selector(buttonWithTitle:andTitleColor:andAction:), action, OBJC_ASSOCIATION_COPY_NONATOMIC);
    }
    [btn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    return btn;
}

//根据文字创建按钮  默认文字 字体颜色黑色
+ (UIButton *)buttonWithTitle:(NSString *)title andTarget:(id)target andAction:(SEL)action{
    return [UIButton buttonWithTitle:title andTitleColor:[UIColor blackColor] andTarget:target andAction:action];
}

//根据文字创建按钮
+ (UIButton *)buttonWithTitle:(NSString *)title andTitleColor:(UIColor *)titleColor andTarget:(id)target andAction:(SEL)action {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return btn;
}


+ (void)btnClicked:(UIButton *)btn {
    buttonClicked action = (buttonClicked)objc_getAssociatedObject(btn, @selector(buttonWithTitle:andTitleColor:andAction:));
    if (action) {
        action(btn);
    }
}


@end
