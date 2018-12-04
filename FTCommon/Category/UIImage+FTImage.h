//
//  UIImage+SCImage.h
//  QCMVVM
//
//  Created by 史超 on 2018/11/15.
//  Copyright © 2018年 BYX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (FTImage)


// 根据图片url获取图片尺寸
//+(CGSize)getImageSizeWithURL:(id)imageURL;

/* !对图片进行压缩
 *
 * @param scale 图片的压缩倍数
 * @return 压缩后的图片
 */
- (UIImage *)scale:(float)scale;
- (NSData *)scaleImage:(UIImage *)origImage toKB:(NSInteger)kb;
- (UIImage *)imageAtRect:(CGRect)rect;
- (UIImage *)imageByScalingProportionallyToMinimumSize:(CGSize)targetSize;
- (UIImage *)imageByScalingProportionallyToSize:(CGSize)targetSize;
- (UIImage *)imageByScalingToSize:(CGSize)targetSize;
- (UIImage *)imageRotatedByRadians:(CGFloat)radians;
- (UIImage *)imageRotatedByDegrees:(CGFloat)degrees;

/* 设置GRB为image */
+ (UIImage *)imageWithColor:(UIColor *)color;

@end
