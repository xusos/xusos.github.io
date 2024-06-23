---
layout: article
title:  "「VIDEO」 视频分类资源汇总"
date:   2019-05-14 11:06:40 +0800
key: video-classify-foundation-20190514
aside:
  toc: true
category: [AI, video, video_classification]
tags: 资源
---
<span id='head'></span>

关键字：`video understanding` · `video representations` · `video classification` · `action recognition` · `Action Recognition` | `untrimmed Video` · `trimmed Video`      
>知道这段视频在做什么：包括视频分类，动作识别/行为识别/行为分析；   
就是对时域预先分割好的序列判定其所属行为动作的类型；   

<!--more-->

# 1 综述
1. [Digital Video Processing](https://pdfs.semanticscholar.org/ecc2/3e5a7902460572d5144664acae27469cf79a.pdf?_ga=2.228334685.1153843306.1572339852-129004075.1557370518)    
*1995* [paper](https://pdfs.semanticscholar.org/ecc2/3e5a7902460572d5144664acae27469cf79a.pdf?_ga=2.228334685.1153843306.1572339852-129004075.1557370518)    
《数字视频处理》一书包含：    
去噪和恢复运动估计：图像形成；运动模型；       
运动估计：差分，匹配，优化和变换域方法，3D运动和形状估计；       
跟踪：   
分段：颜色和运动分段，变化检测，镜头边界检测，视频消光；    
视频过滤：视频质量图像过滤：梯度估计，边缘检测，缩放，多分辨率表示，增强；多帧过滤，运动补偿过滤，多帧标准转换，多帧噪声滤波；    
压缩：无损压缩，JPEG，小波和JPEG2000视频压缩；    

1. [Delving Deeper into Convolutional Networks for Learning Video Representations](http://cn.arxiv.org/abs/1511.06432)   
ICLR 2016 *2015-11-19* [paper](https://arxiv.org/abs/1511.06432)   

1. [The THUMOS Challenge on Action Recognition for Videos](http://cn.arxiv.org/abs/1604.06182)   
*2016-04-21* [paper](https://arxiv.org/abs/1604.06182)   

1. [Going Deeper into Action Recognition: A Survey](http://cn.arxiv.org/abs/1605.04988)   
*2016-05-16* [paper](https://arxiv.org/abs/1605.04988)   

1. [Deep Learning for Video Classification and Captioning](http://cn.arxiv.org/abs/1609.06782)   
*2016-09-22* [paper](https://arxiv.org/abs/1609.06782)   

1. [A Survey on Deep Learning Based Approaches for Action and Gesture Recognition in Image Sequences](https://hal.inria.fr/hal-01678006/file/deep_learning_action.pdf)   
*2018-01-08* [paper](https://hal.inria.fr/hal-01678006/file/deep_learning_action.pdf)    

1. [A Survey of Video Based Action Recognition in Sports](https://pdfs.semanticscholar.org/2bb7/6926af1af556e3fd1c32c6dd557826b8ee2a.pdf?_ga=2.53757928.1506702602.1557989902-129004075.1557370518)   
*2018-09* [paper](https://pdfs.semanticscholar.org/2bb7/6926af1af556e3fd1c32c6dd557826b8ee2a.pdf?_ga=2.53757928.1506702602.1557989902-129004075.1557370518)    

1. A study on deep learning spatiotemporal models and feature extraction techniques for video understanding       
*2020-01-24*    

# 2 理论
1. [On the Integration of Optical Flow and Action Recognition](http://cn.arxiv.org/abs/1712.08416)   
CVPR 2018 *2017-12-22* [paper](https://arxiv.org/abs/1712.08416) | [blog](https://zhuanlan.zhihu.com/p/32663227) | [blog](https://zhuanlan.zhihu.com/p/32443212)       
探讨了双流法中为什么光流有用；   
- 作者认为two-streams 的光流不是表示运动信息，而是表示外观不变性；   
- 用行为识别分类误差来训练（fine tune）光流比起用EPE误差来能获得更好的行为识别效果；   

# 3 经典

1. [StNet: Local and Global Spatial-Temporal Modeling for Action Recognition](http://cn.arxiv.org/abs/1811.01549)    
AAAI 2019 *2018-11-05* 百度 MIT [paper](https://arxiv.org/abs/1811.01549) | [pytorch](https://github.com/hyperfraise/Pytorch-StNet) | [pytorch](https://github.com/BigLazyPig/Pytorch-StNet-Full-Implement)-full | [paddlepaddle](https://github.com/PaddlePaddle/models/tree/971509fab5baebca2bfb6fdb32d9b6199197a82a/PaddleCV/video/models/stnet) | [机器之心](https://zhuanlan.zhihu.com/p/55901502) | [解读](/ai/video/video_classification/paper_reading/2019/05/23/StNet-Local-and-Global-Spatial-Temporal-Modeling-for-Action-Recognition.html)    

1. [Tiny Video Networks](http://cn.arxiv.org/abs/1910.06961)     
*2019-10-15* [paper](https://arxiv.org/abs/1910.06961)     
$\bullet \bullet \bullet$    
视频片段处理时间 cpu 37ms，gpu 10ms；     

# 4 通用
1. [A Variable Size Block Matching Based Descriptor for Human Action Recognition](https://pdfs.semanticscholar.org/66ef/b4d99d3dffac4d1da6525dbc9adcc86d488d.pdf?_ga=2.138762099.1970495203.1573369005-504939339.1571502740)     
*2015-11* [paper](https://pdfs.semanticscholar.org/66ef/b4d99d3dffac4d1da6525dbc9adcc86d488d.pdf?_ga=2.138762099.1970495203.1573369005-504939339.1571502740)     


1. [Deep Temporal Linear Encoding Networks](http://cn.arxiv.org/abs/1611.06678)   
CVPR 2017 *2016-11-21* [paper](https://arxiv.org/abs/1611.06678) | [zxcvbnm2333](https://blog.csdn.net/zxcvbnm2333/article/details/86489859)   
TLE:

1. [Non-local Neural Networks](http://cn.arxiv.org/abs/1711.07971)   
CVPR 2018 *2017-11-21* [paper](https://arxiv.org/abs/1711.07971) | [caffe2](https://github.com/facebookresearch/video-nonlocal-net) | [zhihu](https://www.zhihu.com/question/68473183)       

1. [ECO: Efficient Convolutional Network for Online Video Understanding](http://cn.arxiv.org/abs/1804.09066)   
ECCV 2018 *2018-04-24* [paper](https://arxiv.org/abs/1804.09066) | [caffe](https://github.com/mzolfaghari/ECO-efficient-video-understanding) | [pytorch](https://github.com/mzolfaghari/ECO-pytorch) | [林天威](https://zhuanlan.zhihu.com/p/36795554)        

1. [$A^2$ -Nets: Double Attention Networks](http://cn.arxiv.org/abs/1810.11579)   
NIPS 2018 *2018-10-27* [paper](https://arxiv.org/abs/1810.11579) | [Kivee123](https://blog.csdn.net/qq_37014750/article/details/83989334) | [zhihu](https://www.zhihu.com/question/321294274)

1. [Temporal Shift Module for Efficient Video Understanding](http://cn.arxiv.org/abs/1811.08383)   
*2018-11-20* [paper](https://arxiv.org/abs/1811.08383) | [pytorch](https://github.com/MIT-HAN-LAB/temporal-shift-module)-official | [pytorch](https://github.com/Pika7ma/Temporal-Shift-Module) | [琪瑞](https://zhuanlan.zhihu.com/p/64525610)        

1. [Convolutional sparse coding for capturing high speed video content](http://cn.arxiv.org/abs/1806.04935)   
*2018-06-13* [paper](https://arxiv.org/abs/1806.04935)   

1. [Learning Video Representations from Correspondence Proposals](http://cn.arxiv.org/abs/1905.07853)   
CVPR 2019 (Oral) *2019-05-20* [paper](https://arxiv.org/abs/1905.07853)   
CPNet:   

1. [Lightweight Network Architecture for Real-Time Action Recognition](http://cn.arxiv.org/abs/1905.08711)   
*2019-05-21* [paper](https://arxiv.org/abs/1905.08711)   
$\bullet \bullet$  

1. [DynCNN: An Effective Dynamic Architecture on Convolutional Neural Network for Surveillance Videos](https://pdfs.semanticscholar.org/d968/bf19d725d6f73fb5ecd7789e1e029bb07470.pdf)   
ICLR 2019 *2019* [paper](https://pdfs.semanticscholar.org/d968/bf19d725d6f73fb5ecd7789e1e029bb07470.pdf) | [openreview](https://openreview.net/forum?id=HyVxPsC9tm)     

1. [I Have Seen Enough: A Teacher Student Network for Video Classification Using Fewer Frames](http://cn.arxiv.org/abs/1805.04668)   
CVPR 2018 (BIVU)*2018-05-12* [paper](https://arxiv.org/abs/1805.04668)   

1. [TSM: Temporal Shift Module for Efficient Video Understanding](http://cn.arxiv.org/abs/1811.08383)   
ICCV 2019 *2018-11-20* [paper](https://arxiv.org/abs/1811.08383) | [pytorch](https://github.com/MIT-HAN-LAB/temporal-shift-module)-official      

# 5 基本网络
## 5.1 传统方法
1. [Dense Trajectories and Motion Boundary Descriptors for Action Recognition](https://hal.inria.fr/hal-00725627v2/document)   
*2013-01-25* [paper](https://hal.inria.fr/hal-00725627v2/document)   
iDT   

1. [Action recognition with improved trajectories](https://hal.inria.fr/hal-00873267v2/document)    
ICCV 2013 *2013-10-16* [paper](https://hal.inria.fr/hal-00873267v2/document)    
传统方法，密集轨迹算法(DT算法) iDT；     

## 5.2 单帧 CNN

## 5.3 扩展 CNN

## 5.4 双流法

1. [Two-Stream Convolutional Networks for Action Recognition in Videos](http://cn.arxiv.org/abs/1406.2199)   
NIPS 2014 *2014-06-09* VGG 团队 [paper](https://arxiv.org/abs/1406.2199) | [pytorch](https://github.com/jeffreyhuang1/two-stream-action-recognition) | [陈泰红](https://zhuanlan.zhihu.com/p/31841417)   
TSC    

1. [Convolutional Two-Stream Network Fusion for Video Action Recognition](http://cn.arxiv.org/abs/1604.06573)   
CVPR 2016 *2016-04-22* [paper](https://arxiv.org/abs/1604.06573) | [pytorch](https://github.com/tomar840/two-stream-fusion-for-action-recognition-in-videos) | [牛牛存](https://blog.csdn.net/weixin_42164269/article/details/80689653)    

1.  [Real-time Action Recognition with Enhanced Motion Vector CNNs](http://cn.arxiv.org/abs/1604.07669)   
CVPR 2016 *2016-04-26* [paper](https://arxiv.org/abs/1604.07669) | [caffe](https://github.com/handong1587/caffe_cuhk) | [caffe](https://github.com/zbwglory/MV-release)-test | [AUTO1993](https://blog.csdn.net/auto1993/article/details/78315175)   
为了提速，使用运动失量代替光流，这直接导致了准确度的下降，于是用迁移学习，把训练好的光流网络的信息迁移到运动矢量上，准确度显著提升；速度达到 390 fps，是光流法的 27 倍；  


1. [Temporal Segment Networks: Towards Good Practices for Deep Action Recognition](http://cn.arxiv.org/abs/1608.00859)   
ECCV 2016 *2016-08-02* 香港中文·汤晓鸥 [paper](https://arxiv.org/abs/1608.00859) | [caffe](https://github.com/yjxiong/temporal-segment-networks) | [pytorch](https://github.com/yjxiong/tsn-pytorch) | [pytorch](https://github.com/jeffreyhuang1/two-stream-action-recognition) | [AI之路](https://blog.csdn.net/u014380165/article/details/79029309)   
TSN，是双流网络的 benchmark 之一；为了解决 long-term 的问题，作者提出使用多个双流网络，分别捕捉不同时序位置的 short-term 信息，然后进行融合；        

1. [Spatiotemporal Residual Networks for Video Action Recognition](http://cn.arxiv.org/abs/1611.02155)   
NIPS 2016 *2016-11-07* [paper](https://arxiv.org/abs/1611.02155) | [matlab](https://github.com/feichtenhofer/st-resnet)   

1. [Deep Local Video Feature for Action Recognition](http://cn.arxiv.org/abs/1701.07368)   
CVPR 2017 *2017-01-28* [paper](https://arxiv.org/abs/1701.07368)   
TSN 改进一：fusion 部分，不同的片段的应该有不同的权重，而这部分由网络学习而得，最后由 SVM 分类得到结果；     


1. [Hidden Two-Stream Convolutional Networks for Action Recognition](#hidden_tsc)

1. [Temporal Segment Networks for Action Recognition in Videos](http://cn.arxiv.org/abs/1705.02953)   
*2017-05-08* [paper](https://arxiv.org/abs/1705.02953) | [caffe](https://github.com/yjxiong/temporal-segment-networks) | [pytorch](https://github.com/tomar840/two-stream-fusion-for-action-recognition-in-videos)     

1. [Quo Vadis, Action Recognition? A New Model and the Kinetics Dataset](http://cn.arxiv.org/abs/1705.07750)   
CVPR 2017 *2017-05-22* DeepMind [paper](https://arxiv.org/abs/1705.07750)   
I3D:基于inception-V1模型，将2D卷积扩展到3D卷积，融合了双流和 C3D，准确度取得了飞跃提升，达到 80%，用了 64 块 GPU；   

1. [Video Classification With CNNs: Using The Codec As A Spatio-Temporal Activity Sensor](http://cn.arxiv.org/abs/1710.05112)     
ICIP 2017 *2017-10-14* [paper](https://arxiv.org/abs/1710.05112) | [tensorflow](https://github.com/mvcnn/mvcnn)-official           
超快；用运动矢量代替光流，选择性解码代替全部解码；       

1. [End-to-end Video-level Representation Learning for Action Recognition](http://cn.arxiv.org/abs/1711.04161)   
ICPR 2018 *2017-11-11* [paper](https://arxiv.org/abs/1711.04161) | [caffe](https://github.com/zhujiagang/DTPP) | [山水之间2018](https://blog.csdn.net/gavinmiaoc/article/details/81198831)   
DTPP:为了捕捉不同长度的信息，在时空上都进行 pooling；   

1. [Temporal 3D ConvNets: New Architecture and Transfer Learning for Video Classification](http://cn.arxiv.org/abs/1711.08200)   
*2017-11-22* [paper](https://arxiv.org/abs/1711.08200) | [pytorch](https://github.com/MohsenFayyaz89/T3D)      
T3D:一方面是采用了 3D densenet，区别于之前的 inception 和 Resnet 结构；另一方面，TTL 层，使用不同尺度的卷积（inception 思想）来捕捉讯息；      

1. [Temporal Relational Reasoning in Videos](http://cn.arxiv.org/abs/1711.08496)   
ECCV 2018 *2017-11-22* MIT·周博磊 [paper](https://arxiv.org/abs/1711.08496) | [pytorch](https://github.com/metalbubble/TRN-pytorch) | [Elaine_Bao](https://blog.csdn.net/elaine_bao/article/details/80753506)   
TSN 改进二：关注时序关系推理，对于仅靠关键帧（单帧RGB图像）无法辨别的动作，如摔倒，其实可以通过时序推理进行分类；除了两帧之间时序推理，还可以拓展到更多帧之间的时序推理；通过对不同长度视频帧的时序推理，最后进行融合得到结果；   
该模型建立 TSN 基础上，在输入的特征图上进行时序推理；增加三层全连接层学习不同长度视频帧的权重；   

1. [Learning Spatio-Temporal Representation with Pseudo-3D Residual Networks](http://cn.arxiv.org/abs/1711.10305)   
ICCV 2017 *2017-11-28* 微软亚研院 [paper](https://arxiv.org/abs/1711.10305) | [caffe](https://github.com/ZhaofanQiu/pseudo-3d-residual-networks)    
P3D:改进 ResNet 内部连接中的卷积形式；      

1. [A Closer Look at Spatiotemporal Convolutions for Action Recognition](http://cn.arxiv.org/abs/1711.11248)   
*2017-11-30* facebook [paper](https://arxiv.org/abs/1711.11248) | [S3D-G_pytorch](https://github.com/MRzzm/action-recognition-models-pytorch) | [张智勐SDU](https://blog.csdn.net/zzmshuai/article/details/85143711)   

1. [Rethinking Spatiotemporal Feature Learning For Video Understanding](http://cn.arxiv.org/abs/1712.04851)     
ECCV 2018 *2017-12-13* google [paper](https://arxiv.org/abs/1712.04851) | [S3D-G_pytorch](https://github.com/MRzzm/action-recognition-models-pytorch) | [张智勐SDU](https://blog.csdn.net/zzmshuai/article/details/85235239)   

1. [DMC-Net: Generating Discriminative Motion Cues for Fast Compressed Video Action Recognition](http://cn.arxiv.org/abs/1901.03460)   
CVPR 2019 *2019-01-11* [paper](https://arxiv.org/abs/1901.03460)   


## 5.5 C3D
1. [3D Convolutional Neural Networks for Human Action Recognition](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.442.8617&rep=rep1&type=pdf)   
*2013* [paper](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.442.8617&rep=rep1&type=pdf) | [陈泰红](https://zhuanlan.zhihu.com/p/31841353)   

1. [C3D: Generic Features for Video Analysis](http://cn.arxiv.org/abs/1412.0767)     
ICCV 2015 *2014-12-02* facebook [paper](https://arxiv.org/abs/1412.0767) [project](http://vlg.cs.dartmouth.edu/c3d/) | [caffe](https://github.com/facebook/C3D)-official | [tensorflow](https://github.com/hx173149/C3D-tensorflow) | [极市平台](https://zhuanlan.zhihu.com/p/25912625)      
*Learning spatiotemporal features with 3d convolutional networks*     


## 5.6 RNN
1. [A Torch Library for Action Recognition and Detection Using CNNs and LSTMs](http://cs231n.stanford.edu/reports/2016/pdfs/221_Report.pdf)  
*2016* [paper](http://cs231n.stanford.edu/reports/2016/pdfs/221_Report.pdf)    

1. [Delving Deeper into Convolutional Networks for Learning Video Representations](http://cn.arxiv.org/abs/1511.06432)   
ICLR 2016 *2015-11-19* [paper](https://arxiv.org/abs/1511.06432)   
GRU   

1. [RPAN：An End-to-End Recurrent Pose-Attention Network for Action Recognition in Videos]()    
ICCV 2017 oral 中科院深圳先进·院乔宇   
与传统的 Video-level category 训练 RNN 不同，这篇文章还提出了 Pose-attention 的机制；  
贡献：   
- 不同于之前的pose-related action recognition，这篇文章是端到端的RNN，而且是 spatial-temporal evolutionos of human pose；   
- 不同于独立的学习关节点特征(human-joint features)，这篇文章引入的pose-attention机制通过不同语义相关的关节点(semantically-related human joints)分享attention参数，然后将这些通过human-part pooling层联合起来    
- 视频姿态估计，通过文章的方法可以给视频进行粗糙的姿态标记；   

1. [TS-LSTM and Temporal-Inception: Exploiting Spatiotemporal Dynamics for Activity Recognition](http://cn.arxiv.org/abs/1702.10667)   
*2017-03-30* [paper](https://arxiv.org/abs/1702.10667) | [pytorch](https://github.com/jeffreyhuang1/two-stream-action-recognition) | [torch](https://github.com/olivesgatech/TS-LSTM-and-Temporal-Inception)-lua | [torch](https://github.com/chihyaoma/Activity-Recognition-with-CNN-and-RNN)-lua      

1. [Aggregating Frame-level Features for Large-Scale Video classification](http://cn.arxiv.org/abs/1707.00803)    
*2017-07-04* [paper](https://arxiv.org/abs/1707.00803)   
2017 google cloud & YouTube-8M 挑战赛第四名作品；   

## 5.7 图网络
>[图卷积网络资源](/ai/dl/gcn/2019/10/16/foundation.html)     

1. [Graph-based Spatial-temporal Feature Learning for Neuromorphic Vision Sensing](http://cn.arxiv.org/abs/1910.03579)     
*2019-10-08* [paper](https://arxiv.org/abs/1910.03579)      
能够保持事件区间，具有连续性；      

1. [Human Action Recognition with Multi-Laplacian Graph Convolutional Networks](http://cn.arxiv.org/abs/1910.06934)    
*2019-10-15* [paper](https://arxiv.org/abs/1910.06934)     
拉普拉斯图网络；    

# 6 扩展技术
## 6.1 注意力
1. [Action Recognition using Visual Attention](http://cn.arxiv.org/abs/1511.04119)   
*2015-11-12* [paper](https://arxiv.org/abs/1511.04119) | [theano](https://github.com/kracwarlock/action-recognition-visual-attention) | [张智勐SDU](https://blog.csdn.net/zzmshuai/article/details/86063410) | [解读](/ai/video/video_classification/paper_reading/2019/05/19/Action-recognition-using-visual-attention.html)    

1. [Attentional Pooling for Action Recognition](#attention_pooling)   

1. [Where and When to Look? Spatio-temporal Attention for Action Recognition in Videos](http://cn.arxiv.org/abs/1810.04511)   
ICLR 2019 *2018-10-01* [paper](https://arxiv.org/abs/1810.04511) | [解读](/ai/video/video_classification/paper_reading/2019/05/19/where-and-when-to-look-spatio-temporal-attention-for-action-recognition-in-videos.html)   

1. [Semantic Adversarial Network with Multi-scale Pyramid Attention for Video Classification](http://cn.arxiv.org/abs/1902.02155)   
*2019-03-06* [paper](https://arxiv.org/abs/1902.02155)   
仅基于 RGB 的双流网络；   

1. [Video Action Transformer Network](https://arxiv.org/abs/1812.02707)   
CVPR 2019 *2018-12-06* DeepMind [paper](https://arxiv.org/abs/1812.02707)   

1. [Marginalized Average Attentional Network for Weakly-Supervised Learning](https://openreview.net/pdf?id=HkljioCcFQ)   
ICML 2019 *2019-03-05* [paper](https://openreview.net/pdf?id=HkljioCcFQ) | [pytorch](https://github.com/yyuanad/MAAN) | [openreview](https://openreview.net/forum?id=HkljioCcFQ) | [解读](/ai/video/video_classification/paper_reading/2019/05/23/Marginalized-Average-Attentional-Network-for-Weakly-Supervised-Learning.html)              

## 6.2 符号图
1. [Neural Message Passing on Hybrid Spatio-Temporal Visual and Symbolic Graphs for Video Understanding](http://cn.arxiv.org/abs/1905.07385)   
*2019-05-17* [paper](https://arxiv.org/abs/1905.07385)      

## 6.3 [关键帧](/ai/video/key_frame/2019/06/12/foundation.html#52-动作识别)     


# 7 改进方向

## 7.1 处理输入
>空间   

1. [A Key Volume Mining Deep Framework for Action Recognition](https://zpascal.net/cvpr2016/Zhu_A_Key_Volume_CVPR_2016_paper.pdf)   
CVPR 2016 *2015* [paper](https://zpascal.net/cvpr2016/Zhu_A_Key_Volume_CVPR_2016_paper.pdf)   
Key Volume Mining：处理输入数据，先选取关键帧，再进行分类，两阶段的方法；    

1. [AdaScan: Adaptive Scan Pooling in Deep Convolutional Neural Networks for Human Action Recognition in Videos](https://arxiv.org/abs/1611.08240)   
CVPR 2017 *2016-11-24* [paper](https://arxiv.org/abs/1611.08240) | [tensorflow](https://github.com/amlankar/adascan-public)   
不同与关键帧提取，直接输入整个视频，让卷积/池化操作自动忽略冗余帧；   
网络效果比 key volume mining 差一点，但是模型简单；    

>时间   

1. <span id='hidden_tsc'>[Hidden Two-Stream Convolutional Networks for Action Recognition](http://cn.arxiv.org/abs/1704.00389)</span>   
ACCV 2018 *2017-04-02* [paper](https://arxiv.org/abs/1704.00389) | [caffe](https://github.com/bryanyzhu/Hidden-Two-Stream)-official | [陈泰红](https://zhuanlan.zhihu.com/p/32169316)       
舍弃光流，使用网络自动学习到相邻帧的运动信息，速度提高了 10 倍；   
论文主要参考了 flownet，即使用神经网络学习生成光流图，然后作为 temporal 网络的输入；该方法提升了光流的质量，而且模型大小也比 flownet 小很多；有论文证明，光流质量的提高，尤其是对于边缘微小运动光流的提升，对分类有关键作用；   
另一方面，论文中也比较了其余的输入格式，如 RGB diff，但效果没有光流好；   

1. [Optical Flow Guided Feature: A Fast and Robust Motion Representation for Video Action Recognition](http://cn.arxiv.org/abs/1711.11152)   
CVPR 2018 *2017-11-29* [paper](https://arxiv.org/abs/1711.11152) | [caffe](https://github.com/kevin-ssy/Optical-Flow-Guided-Feature) | [Elaine_Bao](https://blog.csdn.net/elaine_bao/article/details/80794990)     


## 7.2 时空信息融合
1. [Beyond Gaussian Pyramid: Multi-skip Feature Stacking for Action Recognition](http://cn.arxiv.org/abs/1411.6660)   
*2014-11-24* [paper](https://arxiv.org/abs/1411.6660)   

1. [Human Action Recognition using Factorized Spatio-Temporal Convolutional Networks](http://cn.arxiv.org/abs/1510.00562)   
ICCV 2015 *2015-10-02* [paper](https://arxiv.org/abs/1510.00562) | [张智勐SDU](https://blog.csdn.net/zzmshuai/article/details/84880257)   

1. [Spatiotemporal Multiplier Networks for Video Action Recognition](http://openaccess.thecvf.com/content_cvpr_2017/papers/Feichtenhofer_Spatiotemporal_Multiplier_Networks_CVPR_2017_paper.pdf)     
CVPR 2017 *2017* [paper](http://openaccess.thecvf.com/content_cvpr_2017/papers/Feichtenhofer_Spatiotemporal_Multiplier_Networks_CVPR_2017_paper.pdf) | [matlab](https://github.com/feichtenhofer/st-resnet) | [BojackHorseman](https://blog.csdn.net/bojackhosreman/article/details/78654753)    
空间和时序网络的主体都是 ResNet，增加了从 Motion Stream 到 Spatial Stream的交互；论文还探索多种方式；  

1. [Spatiotemporal Pyramid Network for Video Action Recognition](http://openaccess.thecvf.com/content_cvpr_2017/papers/Wang_Spatiotemporal_Pyramid_Network_CVPR_2017_paper.pdf)   
CVPR 2017 [paper](http://openaccess.thecvf.com/content_cvpr_2017/papers/Wang_Spatiotemporal_Pyramid_Network_CVPR_2017_paper.pdf)   
文章认为行为识别的关键就在于如何很好的融合空间和时序上的特征；作者发现，传统双流网络虽然在最后有 fusion 的过程，但训练中确是单独训练的，最终结果的失误预测往往仅来源于某一网络，并且空间/时序网络各有所长；论文分析了错误分类的原因：空间网络在视频背景相似度高的时候容易失误，时序网络在 long-term 行为中因为 snippets length 的长度限制容易失误；那么能否通过交互，实现两个网络的互补呢；   
文章提出了 STCB 模块；交互方面，在保留空间、时序流的同时，对时空信息进行了一次融合，最后三路融合；   

1. <span id='attention_pooling'>[Attentional Pooling for Action Recognition](http://cn.arxiv.org/abs/1711.01467)</span>   
NIPS 2017 *2017-11-04* [paper](https://arxiv.org/abs/1711.01467) | [project](https://rohitgirdhar.github.io/AttentionalPoolingAction/) | [tensorflow](https://github.com/rohitgirdhar/AttentionalPoolingAction/)-official | [若羽](https://zhuanlan.zhihu.com/p/57195300)       
从pooling的层面提高了双流的交互能力；   

1. [ActionVLAD for video action classification](http://cn.arxiv.org/abs/1704.02895)   
CVPR 2017 *2017-04-10* [paper](https://arxiv.org/abs/1704.02895) | [project](https://rohitgirdhar.github.io/ActionVLAD/) | [tensorflow](https://github.com/rohitgirdhar/ActionVLAD/) | [思考中的哈士奇](https://zhuanlan.zhihu.com/p/36979731)   
从pooling的层面提高了双流的交互能力；   

1. [On the Connection of Deep Fusion to Ensembling](http://cn.arxiv.org/abs/1611.07718)   
*2016-11-23* [paper](https://arxiv.org/abs/1611.07718) | [mxnet](https://github.com/zlmzju/fusenet)-deep_fusion | [sunkeke](https://zhuanlan.zhihu.com/p/29723550)   
lastest name:`Deep Convolutional Neural Networks with Merge-and-Run Mappings`     
基于ResNet的结构探索新的双流连接方式    

1. [Bridging Stereo Matching and Optical Flow via Spatiotemporal Correspondence](http://cn.arxiv.org/abs/1905.09265)   
CVPR 2019 *2019-05-22* [paper](https://arxiv.org/abs/1905.09265) | [pytorch](https://github.com/lelimite4444/BridgeDepthFlow)        

## 7.3 多模态
1. [Unseen Action Recognition with Multimodal Learning](http://cn.arxiv.org/abs/1806.08251)   
*2018-06-21* [paper](https://arxiv.org/abs/1806.08251) | [pytorch](https://github.com/piergiaj/mlb-youtube) | [解读](/ai/video/video_classification/paper_reading/2019/05/23/Unseen-Action-Recognition-with-Multimodal-Learning.html)         

1. [EPIC-Fusion: Audio-Visual Temporal Binding for Egocentric Action Recognition](http://cn.arxiv.org/abs/1908.08498)    
ICCV 2019 *2019-08-22* [paper](https://arxiv.org/abs/1908.08498)     
在初期融合了图像、流和音频；`什么是流`{:.warning}    

1. [Seeing and Hearing Egocentric Actions: How Much Can We Learn?](http://cn.arxiv.org/abs/1910.06693)     
ICCV 2019 *2019-10-15* [paper](https://arxiv.org/abs/1910.06693)      
图和声音；  

## 7.4 AutoML
1. [Video Action Recognition Via Neural Architecture Searching](http://cn.arxiv.org/abs/1907.04632)   
ICIP 2019 *2019-07-10* [paper](https://arxiv.org/abs/1907.04632) | [解读](/ai/video/video_classification/paper_reading/2019/07/13/Video-Action-Recognition-Via-Neural-Architecture-Searching.html)    


# 8 数据类型
## 8.1 修剪视频识别
即 one-hot 类型；


## 8.2 未修剪视频识别
1. [UntrimmedNets for Weakly Supervised Action Recognition and Detection](http://cn.arxiv.org/abs/1703.03329)   
CVPR 2017 *2017-03-09* [paper](https://arxiv.org/abs/1703.03329) | [caffe](https://github.com/wanglimin/UntrimmedNet)      


# 9 应用
## 9.1 手势识别
### 9.1.1 [关键帧](/ai/video/key_frame/2019/06/12/foundation.html#51--手势识别)


# 10 数据集
1. [CATER: A diagnostic dataset for Compositional Actions and TEmporal Reasoning](http://cn.arxiv.org/abs/1910.04744)    
*2019-10-10* [paper](https://arxiv.org/abs/1910.04744) | [project]9https://rohitgirdhar.github.io/CATER/    
 | [code](https://github.com/rohitgirdhar/CATER)-official


# 11 其他
1. [Large-scale video classification with convolutional neural networks](https://static.googleusercontent.com/media/research.google.com/zh-CN//pubs/archive/42455.pdf)   
CVPR 2014 *2014* 李飞飞 [paper](https://static.googleusercontent.com/media/research.google.com/zh-CN//pubs/archive/42455.pdf) | [夏洛的网](https://blog.csdn.net/liuxiao214/article/details/78134319)     

1. [Efficient Large Scale Video Classification](https://arxiv.org/abs/1505.06250)   
*2015-05-22* [paper](https://arxiv.org/abs/1505.06250)   

1. [Action Recognition with Trajectory-Pooled Deep-Convolutional Descriptors](http://cn.arxiv.org/abs/1505.04868)   
CVPR 2015 *2015-05-19* [paper](https://arxiv.org/abs/1505.04868) | [caffe](https://github.com/wanglimin/TDD)-matlab      

1. [Deep Multi Scale Video Prediction Beyond Mean Square Error](http://cn.arxiv.org/abs/1511.05440)   
*2015-11-17* [paper](https://arxiv.org/abs/1511.05440)   

1. [Long-term temporal convolutions for action recognition](http://cn.arxiv.org/abs/1604.04494)   
*2016-01-15* [paper](https://arxiv.org/abs/1604.04494) | [project](https://www.di.ens.fr/willow/research/ltc/) | [torch](https://github.com/gulvarol/ltc)-lua | [BojackHorseman](https://blog.csdn.net/bojackhosreman/article/details/78261097)   
LTC  

1. [Multi-Task Clustering of Human Actions by Sharing Information](http://openaccess.thecvf.com/content_cvpr_2017/papers/Yan_Multi-Task_Clustering_of_CVPR_2017_paper.pdf)   
CVPR 2017 [paper](http://openaccess.thecvf.com/content_cvpr_2017/papers/Yan_Multi-Task_Clustering_of_CVPR_2017_paper.pdf)   

1. [Deep Learning on Lie Groups for Skeleton-Based Action Recognition](http://cn.arxiv.org/abs/1612.05877)   
CVPR 2017 *2016-12-18* [paper](https://arxiv.org/abs/1612.05877) | [matlab](https://github.com/zzhiwu/LieNet)       
融合了李群和神经网络；   

1. [Trajectory Convolution for Action Recognition](https://papers.nips.cc/paper/7489-trajectory-convolution-for-action-recognition.pdf)   
NIPS 2018 [paper](https://papers.nips.cc/paper/7489-trajectory-convolution-for-action-recognition.pdf) | [zhihu](https://www.zhihu.com/question/304696640/answer/546086974)      
TrajectoryNet：轨迹卷积网络   

1. [Adversarial Perturbations Against Real-Time Video Classification Systems](http://cn.arxiv.org/abs/1807.00458)   
*2018-07-02* [paper](https://arxiv.org/abs/1807.00458)   

1. [Adaptive Temporal Encoding Network for Video Instance-level Human Parsing](http://cn.arxiv.org/abs/1808.00661)   
ACM MM 2018 *2018-08-02* [paper](https://arxiv.org/abs/1808.00661) | [Keras](https://github.com/HCPLab-SYSU/ATEN) | [LIP-Dataset](http://sysu-hcp.net/lip/)    
视频人物分割；   

1. [Deep Adaptive Temporal Pooling for Activity Recognition](http://cn.arxiv.org/abs/1808.07272)   
ACM Multimedia 2018 *2018-08-22* [paper](https://arxiv.org/abs/1808.07272)    



-------------------  
[End](#head)
{:.warning}  


# 附录
## A 数据集

| 数据集 | 来源 | 视频数 | 动作数 | 说明 |
| --- | --- | --- | --- | --- |
| [UCF-101](https://www.crcv.ucf.edu/data/UCF101.php) | YouTube | 13320 | 101 | |
| HMDB51 | YouTube | 7000 | 51 | |
| Kinetics | YouTube | 300K | 400 | |
| activity-net |  | 10024+4926+5044 | 200 | |
| 1M sport |  | 1.2 million | 487 | 每类 1k-3k 个视频 |

1. [法国INRIA Data Sets & Images 数据集和图像库](http://www.voidcn.com/article/p-pujvjeut-cm.html)     

## B 研究员
[David Forsyth](http://luthuli.cs.uiuc.edu/~daf/)   
[Michal Irani](http://www.weizmann.ac.il/math/irani/)   
[Ming Lin](https://minglin-home.github.io/)-Alibaba
[管超](http://pancakeawesome.ink/)   
[张智勐](https://blog.csdn.net/zzmshuai)   
[Yue Zhao](https://zhaoyue-zephyrus.github.io/)    


## C 参考资料
1. [视频行为检测&分类方案整理](https://www.jianshu.com/p/583c26bbb675)     
[paper with code](https://paperswithcode.com/task/action-recognition/latest?page=3)
[Awesome Action Recognition](https://github.com/jinwchoi/awesome-action-recognition)    
[MVision](https://github.com/Ewenwan/MVision/blob/master/CNN/Action_Recognition/readme.md)    
[Christoph Feichtenhofer](https://feichtenhofer.github.io/)   
[Gurkirt Singh](https://gurkirt.github.io/)   


## D 开源项目
1. [MMAction](https://github.com/open-mmlab/mmaction)-pytorch     
