---
layout: article
title:  "「DL」 卷积网络资源汇总"
date:   2019-05-21 14:18:40 +0800
key: cnn-foundation-20190521
aside:
  toc: true
category: [AI, DL, CNN]
tags: 资源
---
<span id='head'></span>  
>[卷积网络概述](/ai/dl/cnn/2020/07/10/survey.html)      

<!--more-->

# 1 综述

1. [Notes on Convolutional Neural Networks](http://cogprints.org/5869/1/cnn_tutorial.pdf)   
*2006-11-22* [Paper](http://cogprints.org/5869/1/cnn_tutorial.pdf) | [亦轩Dhc](https://www.cnblogs.com/daihengchen/p/5646526.html)   
$\bullet \bullet$   
主要讲了 CNN 前向和反向传播，包括卷积层和池化的反向传播的推导的讲解；        

1. [A Selective Overview of Deep Learning](http://cn.arxiv.org/abs/1904.05526)    
*2019-04-10* [paper](https://arxiv.org/abs/1904.05526)    


1. [A review of modularization techniques in artificial neural networks](https://arxiv.org/abs/1904.12770)     
*2019-04-29* [paper](https://arxiv.org/abs/1904.12770)     


1. [What does it mean to understand a neural network?](http://cn.arxiv.org/abs/1907.06374)     
*2019-07-15* DeepMind, 宾夕法尼亚 [paper](https://arxiv.org/abs/1907.06374)    

1. [What Do We Understand About Convolutional Networks?](http://cn.arxiv.org/abs/1803.08834)    
*2019-09-09* [paper](https://arxiv.org/abs/1803.08834)  


# 2 理论
## 2.1 深与浅
1. [The Power of Depth for Feedforward Neural Networks](http://cn.arxiv.org/abs/1512.03965)   
COLT 2016 *2015-12-12* [paper](https://arxiv.org/abs/1512.03965)     
证明了存在 3 层的网络，是无法被 2 层网络逼近的；   

1. [Benefits of depth in neural networks](http://cn.arxiv.org/abs/1602.04485)    
COLT 2016 *2016-02-14* [paper](https://arxiv.org/abs/1602.04485)    
深度网络需要很少的节点就能构造出复杂网络，扁平网络则需要更多节点；  

1. [Learning Functions:  When Is Deep Better ThanShallow](http://cn.arxiv.org/abs/1603.00988)    
*2016-03-03* [paper](https://arxiv.org/abs/1603.00988)    

1. [Deep vs. shallow networks : An approximation theory perspective](http://cn.arxiv.org/abs/1608.03287)    
*2016-08-10* [paper](https://arxiv.org/abs/1608.03287)    


1. [Depth-Width Tradeoffs in Approximating Natural Functions with Neural Networks](http://cn.arxiv.org/abs/1610.09887)   
ICML 2017 *2016-10-31* [paper](https://arxiv.org/abs/1610.09887) | [openreview](https://openreview.net/forum?id=BJe55gBtvH)     
对于球状空间，深度可以很好拟合，而扁平网络做不到；   

1. [Learning Functions: When Is Deep Better Than Shallow](http://cn.arxiv.org/abs/1603.00988)    
*2016-03-03* [paper](https://arxiv.org/abs/1603.00988)    

1. [When and Why Are Deep Networks Better than Shallow Ones](https://www.aaai.org/ocs/index.php/AAAI/AAAI17/paper/download/14849/14414)       
AAAI 2017 *2017* [paper](https://www.aaai.org/ocs/index.php/AAAI/AAAI17/paper/download/14849/14414)      

1. [Efficient Processing of Deep Neural Networks: A Tutorial and Survey](https://arxiv.org/abs/1703.09039)     
*2017-03-27* [paper](https://arxiv.org/abs/1703.09039) | [home](http://eyeriss.mit.edu/tutorial.html)        


# 3 二维
## 3.1 经典网络
1. [ImageNet classification with deep convolutional neural networks](https://papers.nips.cc/paper/4824-imagenet-classification-with-deep-convolutional-neural-networks.pdf)     
*2012* [paper](https://papers.nips.cc/paper/4824-imagenet-classification-with-deep-convolutional-neural-networks.pdf) | [tensorflow](https://github.com/Abhisek-/AlexNet)    
AlexNet；     

1. [Very deep convolutional networks for large-scale image recognition](http://cn.arxiv.org/abs/1409.1556)    
ICLR 2015 oral *2014-09-04* [paper](https://arxiv.org/abs/1409.1556) | [tensorflow](https://github.com/Abhisek-/VGG)       
VGG:    

1. [Going deeper with convolutions](http://cn.arxiv.org/abs/1409.4842)     
CVPR 2015 *2014-09-17* [paper](https://arxiv.org/abs/1409.4842)     
GoogLeNet;     

1. [Batch Normalization: Accelerating Deep Network Training by Reducing Internal Covariate Shift](http://cn.arxiv.org/abs/1502.03167)     
*2015-02-11* [paper](https://arxiv.org/abs/1502.03167) | [blog](https://zhuanlan.zhihu.com/p/50444499)-Michael | [blog](http://old-101.cvmart.net/community/article/detail/368)-极市          
提出了批量归一化，被大量使用；   
InceptionV2    

1. [Deep residual learning for image recognition](http://cn.arxiv.org/abs/1512.03385)     
CVPR 2016 *2015-12-10* [paper](https://arxiv.org/abs/1512.03385)     
ResNet;    

1. [Densely Connected Convolutional Networks](http://cn.arxiv.org/abs/1608.06993)    
CVPR 2017 *2016-08-25* [paper](https://arxiv.org/abs/1608.06993)    
DenseNet

1. [Deep Pyramidal Residual Networks](http://cn.arxiv.org/abs/1610.02915)    
CVPR 2017 *2016-10-10* [paper](https://arxiv.org/abs/1610.02915)    
解决残差设计中遇到通道升维时效果不好的问题；    
PyramidNet    

1. [Dual Path Networks](http://cn.arxiv.org/abs/1707.01629)    
*2017-07-06* [paper](https://arxiv.org/abs/1707.01629) | [mxnet](https://github.com/cypw/DPNs)-official    
DualPathNet   


1. [Squeeze-and-Excitation Networks](http://cn.arxiv.org/abs/1709.01507)   
*2017-09-05* [Paper](https://arxiv.org/abs/1709.01507)   
SENet   

## 3.2 轻量级网络
1. [Aggregated Residual Transformations for Deep Neural Networks](http://cn.arxiv.org/abs/1611.05431)     
CVPR 2017 *2016-11-16* [paper](https://arxiv.org/abs/1611.05431)     
ResNeXt;     

1. [SqueezeNet: AlexNet-level accuracy with 50x fewer parameters and <0.5MB model size](http://cn.arxiv.org/abs/1602.07360)    
ICLR 2017 *2016-02-24* 伯克利&斯坦福 [paper](https://arxiv.org/abs/1602.07360)    
SqueezeNet     

1. [Xception: Deep Learning with Depthwise Separable Convolutions](http://cn.arxiv.org/abs/1610.02357)    
*2016-10-07* Google [paper](https://arxiv.org/abs/1610.02357)    
Xception     

1. [MobileNets: Efficient Convolutional Neural Networks for Mobile Vision Applications](http://cn.arxiv.org/abs/1704.04861)    
CVPR 2017 *2017-04-17* [paper](https://arxiv.org/abs/1704.04861) | [ncnn](https://github.com/Revo-Future/ncnn_mobileNet)-[Blog](https://blog.csdn.net/computerme/article/details/77876633) | [caffe](https://github.com/shicai/MobileNet-Caffe)      
MobileNet     

1. [ShuffleNet: An Extremely Efficient Convolutional Neural Network for Mobile Devices](http://cn.arxiv.org/abs/1707.01083)     
CVPR 2017 *2017-07-04* Face++ [paper](https://arxiv.org/abs/1707.01083)     
ShuffleNet     

1. [Interleaved Group Convolutions for Deep Neural Networks](http://cn.arxiv.org/abs/1707.02725)     
ICCV 2017 *2017-07-10* 微软 [paper](https://arxiv.org/abs/1707.02725) | [mxnet](https://github.com/hellozting/InterleavedGroupConvolutions)      
IGCV     

1. [CondenseNet: An Efficient DenseNet using Learned Group Convolutions](http://cn.arxiv.org/abs/1711.09224)     
*2017-11-25* [paper](https://arxiv.org/abs/1711.09224) | [pytorch](https://github.com/ShichenLiu/CondenseNet)    
CondenseNet    

1. [MobileNetV2: Inverted Residuals and Linear Bottlenecks](http://cn.arxiv.org/abs/1801.04381)     
*2018-01-13* [paper](https://arxiv.org/abs/1801.04381) | [mxnet](https://github.com/liangfu/mxnet-mobilenet-v2) | [caffe](https://github.com/shicai/MobileNet-Caffe)    
MobileNetV2      

1. [IGCV2: Interleaved Structured Sparse Convolutional Neural Networks](http://cn.arxiv.org/abs/1804.06202)     
*2018-04-17* 微软 [paper](https://arxiv.org/abs/1804.06202)     
IGCV2     

1. [IGCV3: Interleaved Low-Rank Group Convolutions for Efficient Deep Neural Networks](http://cn.arxiv.org/abs/1806.00178)     
BMVC 2018 *2018-06-01* 微软 [paper](https://arxiv.org/abs/1806.00178) | [mxnet](https://github.com/homles11/IGCV3) | [pytorch](https://github.com/xxradon/IGCV3-pytorch)              
IGCV3     

1. [ShuffleNet V2: Practical Guidelines for Efficient CNN Architecture Design](http://cn.arxiv.org/abs/1807.11164v1)     
*2018-07-30* [paper](https://arxiv.org/abs/1807.11164v1)    
ShuffleNetV2    

1. [Searching for MobileNetV3](http://cn.arxiv.org/abs/1905.02244)   
*2019-05-06* google [paper](https://arxiv.org/abs/1905.02244) | [pytorch](https://github.com/xiaolai-sqlai/mobilenetv3) | [pytorch](https://github.com/shanglianlm0525/MobileNetV3-Pytorch) | [我爱计算机视觉](https://www.jiqizhixin.com/articles/2019-05-09-2)   
MobileNetV3:    

1. [MoGA: Searching Beyond MobileNetV3](http://cn.arxiv.org/abs/1908.01314)     
*2019-08-04* [paper](https://arxiv.org/abs/1908.01314) | [pytorch](https://github.com/xiaomi-automl/MoGA)-official          

## 3.3 提升泛化能力
1. [Learning to Find Correlated Features by Maximizing Information Flow in Convolutional Neural Networks](http://cn.arxiv.org/abs/1907.00348)   
*2019-06-30*  [paper](https://arxiv.org/abs/1907.00348)    
设计了新的 loss 来指导网络学习更多的相关特征，以应对未见过的数据；    

1. [Sparsifying and Down-scaling Networks to Increase Robustness to Distortions](http://cn.arxiv.org/abs/2006.11389)  
 *2020-06-08* [paper](https://arxiv.org/abs/2006.11389)     
 抗噪声，提出了 STNet，用于修改网络的 block 提升噪声鲁棒；  

## 3.4 注意力
1. [ECA-Net: Efficient Channel Attention for Deep Convolutional Neural Networks](http://cn.arxiv.org/abs/1910.03151)    
*2019-10-08* [paper](https://arxiv.org/abs/1910.03151) | [pytorch](https://github.com/BangguWu/ECANet)-official         
反思注意力带来的计算冗余问题；    

## 3.5 其他
<span id="MCDNN">  </span>      
1. [Multi-column Deep Neural Networks for Image Classification](http://cn.arxiv.org/abs/1202.2745)      
CVPR 2012 *2012-02-13* [paper](https://arxiv.org/abs/1202.2745) | [blog](https://blog.csdn.net/Zhaohui1995_Yang/article/details/51407067) | [bagging](https://www.cnblogs.com/maybe2030/p/4652492.html) | [blog](https://blog.csdn.net/liangjunsheng0426/article/details/53997352) | [blog](https://blog.csdn.net/u010529217/article/details/38701703)     
数据集：MNIST，NIST SD 19，CASIA（中国字），GTSRB（路标），CIFAR 10（natural color images），NORB（stereo images of 3D models）     
IJCNN 2012 第一名，准确率 99.46% 优于人类识别率；多个 DNNs 结合到一个MCDNN（MLP+DNN）；初评时，作者使用了一组 trained on provided features的多层感知器（MLP）和一个 DNN trained on raw pixel intensities；本篇论文描述的是现场总决赛阶段使用的方法，MCDNN；         

1.[Invertible Residual Networks](https://arxiv.org/abs/1811.00995)   
ICML 2019 *2018-11-02* [paper](https://arxiv.org/abs/1811.00995)  


# 4 三维
1. [3D Dense Separated Convolution Module for Volumetric Image Analysis](http://cn.arxiv.org/abs/1905.08608)   
*2019-05-14* [paper](https://arxiv.org/abs/1905.08608)   

1. [A review on deep learning techniques for 3D sensed data classification](http://cn.arxiv.org/abs/1907.04444)    
*2019-07-09* [paper](https://arxiv.org/abs/1907.04444)    

# 5 四元组
1. [Quaternion Recurrent Neural Networks](http://cn.arxiv.org/abs/1806.04418)    
*2018-06-12* [paper](https://arxiv.org/abs/1806.04418)    

1. [Quaternion Convolutional Neural Networks for End-to-End Automatic Speech Recognition](http://cn.arxiv.org/abs/1806.07789)    
*2018-06-20* [paper](https://arxiv.org/abs/1806.07789)    

1. [Quaternion Convolutional Neural Networks](http://cn.arxiv.org/abs/1903.00658)    
ECCV 2018 *2018-08* [paper](https://arxiv.org/abs/1903.00658) | [paper](http://openaccess.thecvf.com/content_ECCV_2018/papers/Xuanyu_Zhu_Quaternion_Convolutional_Neural_ECCV_2018_paper.pdf)-eccv | [机构](https://infiniaml.com/2018/09/10/infinia-ml-research-accepted-nips-2018/) | [blog](https://www.jianshu.com/p/7fd2e31d86e8)     
$\bullet \bullet$ QCNN    
针对 CNN 中通道处理太简单（相加）而存在的多个弊端，本文借鉴机器人学中的四元数来表示彩色图像，并给除了前向和反向传播推导；与 CNN 做了对比实验，在彩色图像去噪和分类任务上表现都更好；   

1. A survey of quaternion neural networks    
*2019-08-06*     
$\bullet \bullet$    

-------------------  
[End](#head)
{:.warning}  
