//
//  UIImage+Utils.h
//  CoreMLDemo
//
//  Created by xuzichao on 08/06/2017.
//  Copyright © 2017 xuzichao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMedia/CoreMedia.h>

@interface UIImage (Utils)

- (UIImage *)scaleToSize:(CGSize)size;
- (CVPixelBufferRef)pixelBufferFromCGImage:(UIImage *)image;
+ (UIImage*) imageFromSampleBuffer:(CMSampleBufferRef) sampleBuffer;
@end
