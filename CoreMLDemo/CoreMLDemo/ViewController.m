//
//  ViewController.m
//  CoreMLDemo
//
//  Created by xuzichao on 08/06/2017.
//  Copyright © 2017 xuzichao. All rights reserved.
//

#import "ViewController.h"
#import "GoogLeNetPlaces.h"

#import "UIImage+Utils.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()<AVCaptureVideoDataOutputSampleBufferDelegate>

@property (nonatomic,strong) UIView *realTimeView;   //实时显示的区域容器
@property (nonatomic,strong) AVCaptureVideoPreviewLayer* previewLayer; //实时显示摄像的区域
@property (nonatomic, strong) AVCaptureSession *session;
@property (nonatomic, strong) AVCaptureVideoDataOutput *videoOutPut;
@property (nonatomic, strong) AVCaptureConnection *videoConnection;
@property (nonatomic,strong) dispatch_queue_t videoQueue;
@property (nonatomic, strong) UILabel *googleLabel;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initAVCapturWritterConfig];
    [self setUpSubviews];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self startVideoCapture];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    [self stopVideoCapture];
    
}

- (void)initAVCapturWritterConfig
{
    self.session = [[AVCaptureSession alloc] init];
    
    //视频
    AVCaptureDevice *videoDevice = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    if (videoDevice.isFocusPointOfInterestSupported && [videoDevice isFocusModeSupported:AVCaptureFocusModeContinuousAutoFocus]) {
        [videoDevice lockForConfiguration:nil];
        [videoDevice setFocusMode:AVCaptureFocusModeContinuousAutoFocus];
        [videoDevice unlockForConfiguration];
    }
    
    AVCaptureDeviceInput *cameraDeviceInput = [[AVCaptureDeviceInput alloc] initWithDevice:videoDevice error:nil];
    
    
    if ([self.session canAddInput:cameraDeviceInput]) {
        [self.session addInput:cameraDeviceInput];
    }
    
    //视频
    self.videoOutPut = [[AVCaptureVideoDataOutput alloc] init];
    NSDictionary * outputSettings = [[NSDictionary alloc] initWithObjectsAndKeys:[NSNumber numberWithInt:kCVPixelFormatType_32BGRA],(id)kCVPixelBufferPixelFormatTypeKey, nil];
    [self.videoOutPut setVideoSettings:outputSettings];
    if ([self.session canAddOutput:self.videoOutPut]) {
        [self.session addOutput:self.videoOutPut];
    }
    self.videoConnection = [self.videoOutPut connectionWithMediaType:AVMediaTypeVideo];
    self.videoConnection.enabled = NO;
    [self.videoConnection setVideoOrientation:AVCaptureVideoOrientationPortrait];
    
    //初始化预览图层
    self.previewLayer = [[AVCaptureVideoPreviewLayer alloc] initWithSession:self.session];
    [self.previewLayer setVideoGravity:AVLayerVideoGravityResizeAspectFill];
}

- (void)setUpSubviews
{
    //容器
    self.realTimeView = [[UIView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.realTimeView];
    
    //实时图像预览
    self.previewLayer.frame = self.realTimeView.frame;
    [self.realTimeView.layer addSublayer:self.previewLayer];
    
    self.googleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height - 40, self.view.bounds.size.width, 40)];
    self.googleLabel.textAlignment = NSTextAlignmentCenter;
    self.googleLabel.font = [UIFont systemFontOfSize:20];
    self.googleLabel.textColor = [UIColor whiteColor];
    self.googleLabel.backgroundColor = [UIColor blackColor];
    [self.view addSubview:self.googleLabel];
    
}

- (void)startVideoCapture
{
    [self.session startRunning];
    self.videoConnection.enabled = YES;
    self.videoQueue = dispatch_queue_create("videoQueue", NULL);
    [self.videoOutPut setSampleBufferDelegate:self queue:self.videoQueue];
}

- (void)stopVideoCapture
{
    [self.videoOutPut setSampleBufferDelegate:nil queue:nil];
    self.videoConnection.enabled = NO;
    self.videoQueue = nil;
    [self.session stopRunning];
}

#pragma mark --AVCaptureVideoDataOutputSampleBufferDelegate
- (void)captureOutput:(AVCaptureOutput *)captureOutput didOutputSampleBuffer:(CMSampleBufferRef)sampleBuffer fromConnection:(AVCaptureConnection *)connection
{
    dispatch_queue_t queue = dispatch_queue_create("CMSampleBufferRef", NULL);
    dispatch_sync(queue, ^{
        UIImage *image = [UIImage imageFromSampleBuffer:sampleBuffer];
        UIImage *scaledImage = [image scaleToSize:CGSizeMake(224, 224)];
        CVPixelBufferRef buffer = [image pixelBufferFromCGImage:scaledImage];
        NSError *error;
        GoogLeNetPlaces *model = [[GoogLeNetPlaces alloc] init];
        GoogLeNetPlacesInput *input = [[GoogLeNetPlacesInput alloc] initWithSceneImage:buffer];
        GoogLeNetPlacesOutput *output = [model predictionFromFeatures:input error:&error];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            self.googleLabel.text = output.sceneLabel;
        });
    });
}

- (void)captureOutput:(AVCaptureOutput *)captureOutput didDropSampleBuffer:(CMSampleBufferRef)sampleBuffer fromConnection:(AVCaptureConnection *)connection
{
    
}


@end
