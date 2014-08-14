//
//  UIImage+PFTint.h
//  UIImage+PFTint
//
//  Created by PFei_He on 14-8-14.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (PFTint)

/**
 *  @brief 图片着色
 *  @param blendMode: 着色方案
 *  @param alpha: 透明度
 */
- (UIImage *)imageWithTintColor:(UIColor *)tintColor blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;

/**
 *  @brief 图片着色
 *  @param blendMode: 着色方案
 *  @param opaque: 是否透明
 *  @param scale: 缩放比例
 *  @param alpha: 透明度
 */
- (UIImage *)imageWithTintColor:(UIColor *)tintColor blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha opaque:(BOOL)opaque scale:(CGFloat)scale;

@end
