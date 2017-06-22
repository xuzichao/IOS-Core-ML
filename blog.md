

> 2017年的WWDC大会苹果赋予了开发者们新能力，能够将机器学习应用在移动端上，着实是一次让人感到兴奋的事情，一颗赛艇！！积极开展的Session学习活动，在第一节和第二节引用了一些概念和背景来帮助理解，熟练工请忽略，跳至第三节直接开始操作,第五节开始有图片学习的demo可查看。 
	
###	本篇相关文档和Session有：

* document: [Core Ml FrameWork](https://developer.apple.com/documentation/coreml)

* Session: [WWDC 2017 Session 703 Introducing Core ML](https://developer.apple.com/videos/play/wwdc2017/703/)

* Session: [WWDC 2017 Session 710 Core ML in depth](https://developer.apple.com/videos/play/wwdc2017/710/)

## 一、AI.ML.DL
### 1、 人工智能
#### 1.1 定义：
让人工制造出来的系统或者机器，其运作行为看起来就像是人所表现出的智能行为一样，即机器“像人一样思考”、“像人一样行动”、“理性地思考”和“理性地行动”。人工智能的研究是高度技术性和专业的，比如机器学习就是属于学习方向的课题，让机器具有人一样的学习行为。
#### 1.2 研究课题：
演绎推理和解决问题、知识表示法、规划、学习、自然语言处理、运动和控制、知觉、社交、创造力、多元智能、伦理管理、经济冲击
### 2、机器学习
#### 2.1 定义：
通过在大量数据中寻找模式,从数据中自动分析获得规律，并利用规律对未知数据进行预测的算法.因为学习算法中涉及了大量的统计学理论，机器学习与推断统计学联系尤为密切，也被称为统计学习理论，涵盖一切有关数据训练的学习算法。
#### 2.2 方式分类：
* 监督学习：

从给定的训练数据集中学习出一个函数，当新的数据到来时，可以根据这个函数预测结果。监督学习的训练集要求是包括输入和输出，也可以说是特征和目标。训练集中的目标是由人标注的。类似概念还有半监督学习和无监督学习。

* 增强学习：

通过观察来学习做成如何的动作。每个动作都会对环境有所影响，学习对象根据观察到的周围环境的反馈来做出判断。

#### 2.3 使用算法：
* 构造间隔理论分布，聚类分析和模式识别：

人工神经网络、决策树、感知器、支持向量机、集成学习AdaBoost、降维与度量学习、聚类贝叶斯分类器

* 构造条件概率，回归分析和统计分类：	

 高斯过程回归、线性判别分析、最近邻居法、径向基函数核
	
* 通过再生模型构造概率密度函数，最大期望算法概率图模型：

	贝叶斯网、Markov随机场、Generative Topographic Mapping
	
* 近似推断技术：
	马尔可夫链、蒙特卡罗方法、变分法

### 3、深度学习
#### 3.1 定义：
深度学习是机器学习中一种基于对数据进行表征学习的方法，起源于人工神经网络，在前期机器学习并没有深度学习这样的学习模型。所以我们现在也认为它是属于深度学习属于机器学习范畴内。它试图使用包含复杂结构或由多重非线性变换构成的多个处理层对数据进行高层抽象的算法。

#### 3.2 关系图：
 <img src='https://wiki.bytedance.net/pages/viewpage.action?pageId=88682290&preview=/88682290/88682774/AIMLDL.jpg'>

## 二、机器学习的应用发展：
### 2.1 发展：
1956年，达特茅斯会议提出了“人工智能”的概念。其后，人工智能就一直萦绕于人们的脑海之中，并在科研实验室中慢慢孵化。之后的几十年，人工智能一直在两极反转，或被称作人类文明耀眼未来的预言；或者被当成技术疯子的狂想扔到垃圾堆里，直到2012年之前，这两种声音还在同时存在。主要问题来自于运算需求难以得到满足，即使是最基本的神经网络，也需要大量的运算。过去几年，尤其是2015年以来，人工智能开始大爆发，很大一部分是由于GPU的广泛应用，使得并行计算变得更快、更便宜、更有效。当然，无限拓展的存储能力和骤然爆发的数据洪流（大数据）的组合拳，也使得图像数据、文本数据、交易数据、映射数据全面海量爆发。
### 2.2 应用：
* 领域列举
机器学习已广泛应用于数据挖掘、计算机视觉、自然语言处理、生物特征识别、搜索引擎、医学诊断、检测信用卡欺诈、证券市场分析、DNA序列测序、语音和手写识别、战略游戏和机器人等等
* 场景举例
句子翻译、动态手势识别、个人化推荐、美化的图像处理、云歌曲推荐、无人机航拍的视频实时分类路况信息等等

### 2.3 大公司
* FaceBook
Facebook AI研究项目（FAIR）专注于基础科学以及长期研究,另外一个叫应用机器学习部门（AML）,将技术用于现有Facebook产品。
* Microsoft
微软1991年就已经开始涉足机器学习，有数百名科学家和工程师。
* Google
Google Assistant是谷歌深度学习研究的集大成者。
* Amazon
其CEO贝索斯称，已经悄悄研究了AI四年，目前在其语音识别生态系统上投入的人力有1000人。
* Baidu
2014年，百度重金挖来谷歌深度学习项目负责人Andrew Ng，发力AI研究。
* Apple
WWDC2017，苹果宣布面向开发者的机器学习框架Core ML ，加速在 iPhone、iPad、Apple Watch 上的人工智能任务。

## 三、在IOS中使用机器学习
> 使用Core ML，你可以将训练好的机器学习模型整合到你的应用中。

### 3.1 Core ML简介
Core ML是一个训练好的模型Model，一个机器学习算法应用到一个训练数据集之后所得到的结果。利用该模型可以基于新的输入数据而进行预测，也就是利用了机器学习的结果。比如，如果一个模型在一个地区的历史房价数据上进行了训练，那么它就可能能够根据房子的卧室和浴室数量来预测房价。
Core ML 为设备性能进行了优化，从而减少了内存占用和功耗。严格在设备上运行能够确保用户数据的隐私，并且能保证你的应用在没有网络连接时也能够工作和响应。
Core ML 框架本身构建于低层面的原语（primitives）之上，比如 Accelerate、BNNS 和 Metal Performance Shaders；
构建完成的Core Ml又作为其他更高级框架的基础，比如支持用于图像分析的 Vision 框架，用于自然语言处理的 Foundation类，以及用于评估已经学习到的决策树的 GameplayKit。结构图如下:

 <img src="https://wiki.bytedance.net/pages/viewpage.action?pageId=88682290&preview=/88682290/88682785/CoreMl.png">

### 3.2 支持的系统
* iOS 11.0+Beta
* macOS 10.13+Beta
* tvOS 11.0+Beta
* watchOS 4.0+Beta

### 3.3 如何获得CoreMl Model
从如上定义看出，CoreMl框架只是将机器学习后的成果拿来应用，本身并不涉及机器学习的运行环境和过程。获得这些结果的方式有两种。

* 苹果爸爸为你提供的现在model
根据自己的需要下载：https://developer.apple.com/machine-learning

* 自己创建model
苹果爸爸为开发者提供了生成方法，不满意官方或者使用不足的时候，可以自己去机器学习完成，在创建应用，即第四节的内容。

### 3.4 将CoreML模型用在你的应用中

* 新建demo工程，在工程target中在Build Phase的Link Binary With Libraries里，加上CoreML.framework系统框架。
* 将获得的 CoreMl Model 添加至工程中，我们以GoogLeNetPlaces.mlmodel为例:

 <img src="https://wiki.bytedance.net/pages/viewpage.action?pageId=88682290&preview=/88682290/88682796/CoreMLXcode.jpg">


* 注意中间有个Model Class ，点击查看api调用，有两点注意，输入参数为 CVPixelBufferRef 格式,图片需要是224X224像素的大小，所以需要自己写方法去转化为合适的参数。

 <img src="https://wiki.bytedance.net/pages/viewpage.action?pageId=88682290&preview=/88682290/88682811/GoogleAPI.jpg">
 
* 调用示例
```
GoogLeNetPlaces *model = [[GoogLeNetPlaces alloc] init];
UIImage *scaledImage = [self imageScaleToSize224:CGSizeMake(224, 224)];
CVPixelBufferRef buffer = [self pixelBufferFromImage:scaledImage];
GoogLeNetPlacesInput *input = [[GoogLeNetPlacesInput alloc] initWithSceneImage:buffer];
GoogLeNetPlacesOutput *output = [model predictionFromFeatures:input error:nil];
NSLog(@"Scene label is: %@", output.sceneLabel);
```

* 结论
百度搜索图片，下载常规的桌子、卧室图片，利用google此个model进行判断输出，正确。输入健身房的图片，判断输出为博物馆。由此可以看出，训练样本过少，当输入数据变复杂的时候就不能判断正确，侧面激励开发者们自己开展训练模型。
 
 
## 四、创建自己的Core Ml Model 

### 4.1 Apple支持的模型

苹果支持由第三方工具和框架训练出来的机器学习模型转化，我们可以只用苹果提供的转化工具,将个人已经训练好的数据模型转化为CoreML进行支持。工具为 Core ML Tools ，是基于Python开发的工具，需要自己安装配置，到这里，上面一二节的概念理解就有作用了，前面提到了机器学习所使用到的思想算法，这里工具有对应的类型支持转化。我从官网对照理解过来如下图：

| 学习模型 | 子算法类型 | 工具框架 |
| ------| ------ | ------ | ------ |
| 人工神经网络 | 多层向前反馈网络（Multilayer Feedforward Network）、CNN卷积神经网络（Convolution Neural Network、RNN递归神经网络（Recurrent Neural Networks） | Caffe、Keras 1.2.2 |
| 集成算法 | 随机森林（Random forests）、迭代树（boosted trees）、决策树（decision trees） | scikit-learn 0.18、XGBoost 0.6|
| 支持向量机 | 线性回归（Scalar regression）、多分类器（multiclass classification） | scikit-learn 0.18、LIBSVM 3.22 |
| 广义线性模型 | 线性回归（Linear regression）、多分类器（multiclass classification）、标量回归（Scalar regression）| scikit-learn 0.18|
| 特征工程 | 稀疏向量化（Sparse vectorization）、密集向量化（ dense vectorization）、分类处理（categorical processing）| scikit-learn 0.18|
| 机器学习流 | 马尔可夫链（Sequentially chained models）| scikit-learn 0.18|

### 4.2 转换你的学习模型

微信朋友圈常常被一些风格奇异的图片刷屏，app里上传自己的照片就能变成特定风格的画像，有油画、漫画等等，这些都是机器学习的结果，Neural Transfer Style。一般有两种实现：第一种是快速渲染，输入一张原图+一个某种固定画风的模型 = 输出结果，这个你只需要模型就OK；第二种方法是，输入一张原图+一张风格图 + 在线渲染 = 输出结果，需要一个原始模型就行。搜索查询都是基于python的训练实现，有基于tensorflow,也有基于torch的，没到已生成的model，因而这里还是拿一个已有的图像识别的例子来讲。

* 已下载材料
 	[bvlc_alexnet.caffemodel](http://dl.caffe.berkeleyvision.org/bvlc_alexnet.caffemodel)、
 	[deploy.prototxt](https://raw.githubusercontent.com/BVLC/caffe/master/models/bvlc_alexnet/deploy.prototxt)、
 	[class_labels.txt](https://raw.githubusercontent.com/torch/tutorials/master/7_imagenet_classification/synset_words.txt)

* 其他参考Caffe Model：

	[Caffe model](https://github.com/BVLC/caffe/wiki/Model-Zoo#models-for-age-and-gender-classification)



#### 4.2.1 pip安装Coremltools 
```
 >> sudo easy_install pip
 >> pip install -U coremltools
 
```

#### 4.2.2 打开mac终端
```
>> python
>> import coremltools
>> coreml_model = coremltools.converters.caffe.convert(('bvlc_alexnet.caffemodel', 'deploy.prototxt'),predicted_feature_name='class_labels.txt')
>> coreml_model.author = '徐子超'
>> coreml_model.license = '字节跳动'
>> coreml_model.short_description = 'Predicts the price of a house in the Seattle area.' 
>> coreml_model.save('BVLCObjectClassifier.mlmodel')                                     

```

#### 4.2.3 得到model结果
我下载的bvlc_alexnet.caffemodel大小有244M左右，在终端中转化为CoreMl却基本没有转化耗时，可见苹果在开发工具的创造上下了功夫。我们得到了CoreML的模型如下图：

 <img src="![](https://wiki.bytedance.net/pages/viewpage.action?pageId=88682290&preview=/88682290/88682842/CoreMLFile.jpg)">


直接在工程文件中，加入model,添加到对应的target

 <img src='![](https://wiki.bytedance.net/pages/viewpage.action?pageId=88682290&preview=/88682290/88682796/CoreMLXcode.jpg)' width = '300' height = '200' /> 



点击中间Model Class即可查看对应的定义，Model依旧244M大小，我在打开定义的过程中感受到了Xcode的明显延迟卡顿。

到这里，我们的model转化就完成了，在WWDC上也介绍了别的python工具，我这里没有使用，直接在终端里面完成即可。接下来，做个实测demo跑一下效果，本次转化的model过大，此处我们还是继续拿第三节的model来做。


## 五、相机即时画面的图像解析Demo

#### 4.1 新建一个相机demo
即时的图像识别，需要在摄像头打开后，实时的获取手机屏幕上展示的每一帧图像，所以通常的UIimageViewPicker是无法做到的，我们需要自己搭建UI并手写捕捉相机视图的代码来构建一个自己的相机，通过AVFoundationKit,我们可以拿到相机里面图像流动的每一帧，从而可以将图像传递给GoogleNet进行识别。来，继续改造第三节的demo工程，将viewController变成一个简化版本的相机。

相机启动在三个时机，viewDidLoad的时候直接建立好组件，主要涉及AVFoundationKit的类有：

* AVCaptureDevice：获取手机功能里的相机设备
* AVCaptureSession：连接相机device到输出数据流的会话层
* AVCaptureVideoPreviewLayer：用于展示图片的画布，也是我们常见的相机窗口
* AVCaptureVideoDataOutput：数据流
* AVCaptureConnection ：数据连接

```
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

```
然后，在viewDidAppear的开始捕捉画面，viewWillDisappear停止相机捕捉。在viewDidAppear的时候我们开始相机的录制，代码会在videooutput的协议里回调给我们相机设备录制到的每一帧图像，这个时候我们就可以开始处理了。关键代码如下：


```
- (void)startVideoCapture
{
    [self.session startRunning];
    self.videoConnection.enabled = YES;
    self.videoQueue = dispatch_queue_create("videoQueue", NULL);
    [self.videoOutPut setSampleBufferDelegate:self queue:self.videoQueue];
}

#pragma mark --AVCaptureVideoDataOutputSampleBufferDelegate
- (void)captureOutput:(AVCaptureOutput *)captureOutput didOutputSampleBuffer:(CMSampleBufferRef)sampleBuffer fromConnection:(AVCaptureConnection *)connection
{
    dispatch_queue_t queue = dispatch_queue_create("CMSampleBufferRef", NULL);
    dispatch_sync(queue, ^{
        CGImageRef cgImage = [UIImage imageFromSampleBuffer:sampleBuffer];
        NSString *text = [self predictImageScene:[UIImage imageWithCGImage:cgImage]];
        dispatch_async(dispatch_get_main_queue(), ^{
            self.googleLabel.text = text;
        });
    });
}

```
注意此处，相机给我们回传的是CMSampleBufferRef格式的数据，而我们在第三节需要传入的是CVPixelBufferRef，所以会有一步在UIImage+Utils里的转化,最后附上代码地址。

#### 4.2 实时显示效果
到官网下载安装配置，把手机升级到IOS11的beta版本后，将相机demo连上手机真机调试得到实时显示,当我移动手机对准不同画面时，相机底部会对应解析出识别结果:

![](https://wiki.bytedance.net/pages/viewpage.action?pageId=88682290&preview=/88682290/88682877/coremlgif.gif)

## 六、小结

从本次实践上，还是可以看出一些问题：

1、Core ML 框架只在IOS11以上才开始支持，现状是很多APP还在支持低版本。比如目前微信支持IOS8以上。

2、每一个机器学习模型引入的model都是很大，我们的demo使用偏小的model，但是数据却又不准确，model的引入会给IOS安装包带来包体积很大的增加。

3、机器学习的结果分析大量的运算，虽然目前iphone在不断的升级硬件GPUCPU，但是我测试过程中还是发现计算的延迟，就异步计算返回的。

4、对于非专业的机器学习人士来讲，IOS开发能拿到现在的model来使用，很多酷炫的效果都没有现成的model,这里也是一个门槛。

随着Core ML技术的引入，移动端上实现机器学习开始变得可能，这也让IOS开发者为之兴奋，然而在IOS上实践机器学习还是有较长的路要走，当然apple本身的布局正在推动这一发展，保持期待。本文不仅仅是对WWDC新技术的探索和分享，也是对机器学习的兴趣认识。

#### github代码:[IOS-Core ML](https://github.com/xuzichao/IOS-Core-ML)，有兴趣的同学可以下载在IOS11的设备上跑起来。