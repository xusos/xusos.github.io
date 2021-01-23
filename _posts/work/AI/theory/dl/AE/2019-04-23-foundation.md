---
layout: article
title:  "「DL」 自编码资源汇总"
date:   2019-04-23 16:08:40 +0800
key: autoencoder-foundation-20190423
aside:
  toc: true
category: [AI, DL, autoencoder]
tags: 资源
---
<span id='head'></span>  
>自编码相关资源；   

<!--more-->

**AE**：   
**VAE**：    

# 1 综述


# 2 理论
1. [Auto-Encoding Variational Bayes](http://cn.arxiv.org/abs/1312.6114)   
ICLR 2014 *2013-12-20* [Paper](https://arxiv.org/abs/1312.6114)   
**VAE**：   

1. [Variational Graph Auto-Encoders](http://cn.arxiv.org/abs/1611.07308)   
NIPS 2016 *2016-11-21* [Paper](https://arxiv.org/abs/1611.07308) | [Tensorflow](https://github.com/tkipf/gae)    
*`图卷积`*    

1. [Wasserstein Auto-Encoders](http://cn.arxiv.org/abs/1711.01558)    
*2017-11-05* [Paper](https://arxiv.org/abs/1711.01558)    
$\bullet  \bullet$   `实现网络`{:.warning}    
**WAE**：融合了 推土机距离；   

1. [Blind Channel Equalization using Variational Autoencoders](http://cn.arxiv.org/abs/1803.01526)   
*2018-03-05* [paper](https://arxiv.org/abs/1803.01526)   

1. [Explorations in Homeomorphic Variational Auto-Encoding](http://cn.arxiv.org/abs/1807.04689)    
ICML: 2018 workshop *2018-07-12* [Paper](https://arxiv.org/abs/1807.04689)   
挛生 VAE 网络研究；融入了李群代数； `什么叫高斯分布类似于斑点的流形结构`{:.warning}     

1. [Dueling Decoders: Regularizing Variational Autoencoder Latent Spaces](http://cn.arxiv.org/abs/1905.07478)   
*2019-05-17* [paper](https://arxiv.org/abs/1905.07478)   

1. [Unsupervised Linear and Nonlinear Channel Equalization and Decoding using Variational Autoencoders](http://cn.arxiv.org/abs/1905.08795)   
*2019-05-21* [paper](https://arxiv.org/abs/1905.08795)   

# 3 [三维重建](/ai/cv/3dreconstruction/2019/03/28/foundation.html#22-自编码)   

# 4 3D VAE
1. [Generative and Discriminative Voxel Modeling with Convolutional Neural Networks](http://cn.arxiv.org/abs/1608.04236)    
*2016-08-16* [Paper](https://arxiv.org/abs/1608.04236) | [Theano](https://github.com/ajbrock/Generative-and-Discriminative-Voxel-Modeling)      
基于体素的 3D VAE 分类网络；   

1. [Deformable Shape Completion with Graph Convolutional Autoencoders](http://cn.arxiv.org/abs/1712.00268)   
CVPR 2018 *2017-12-01* [Paper](https://arxiv.org/abs/1712.00268)   
*`3D VAE`*   
$\bullet  \bullet$   `实现网络结构`{:.warning}    
用图卷积自编码网络进行 3D 形状补全；      

1. [Automatic generation of object shapes with desired functionalities](http://cn.arxiv.org/abs/1805.11984)   
*2018-05-30* [Paper](https://arxiv.org/abs/1805.11984)  

1. [Adversarial Autoencoders for Generating 3D Point Clouds](http://cn.arxiv.org/abs/1811.07605)   
*2018-11-19* [Paper](https://arxiv.org/abs/1811.07605) | [Reddit](https://www.reddit.com/r/MachineLearning/comments/9znzam/r_adversarial_autoencoders_for_generating_3d/) |     
*`EMD` · `点云`*    
$\bullet  \bullet$   `和 GAN 有什么区别`{:.warning}    
AAE：对抗自编码网络    

1. [Explainable Shape Analysis through Deep Hierarchical Generative Models: Application to Cardiac Remodeling](http://cn.arxiv.org/abs/1907.00058)   
*2019-06-28* [paper](https://arxiv.org/abs/1907.00058)   
>思路有点新，看看原理解释；   


# 5 对抗自编码
1. [Finding Rats in Cats: Detecting Stealthy Attacks using Group Anomaly Detection](https://arxiv.org/abs/1905.07273)   
*2019-05-16* [paper](https://arxiv.org/abs/1905.07273)   

# 6 应用
## 6.1 人脸生成
[3D 人脸生成](/ai/cv/imagegeneration/2019/03/29/foundation.html#121-3d-人脸生成)   

## 6.2 水下摄影图像增强
[水下摄影图像增强](/ai/cv/image_enhancement/2019/05/23/foundation.html#241-自编码)   

## 6.3 数据增强
[数据增强](/ai/cv/data_augementation/2019/05/20/foundation.html#14-autoencoder)    

## 6.4 其他
1. [Authoring image decompositions with generative models](http://cn.arxiv.org/abs/1612.01479)    
*2016-12-05* [Paper](https://arxiv.org/abs/1612.01479)   
$\bullet  \bullet$   `网络结构`{:.warning}    
提出了 Conv-VAE 对图像解耦，比如分别提取出目标的形状和纹理；    

1. [Binge Watching: Scaling Affordance Learning from Sitcoms](http://cn.arxiv.org/abs/1804.03080)    
*2018-04-09* [Paper](https://arxiv.org/abs/1804.03080)   
*`可供性预测（affordances prediction）` · `VAE` · `情景剧` · `聚类`*   
视觉盛宴之带缩放的情景喜剧可供性学习；基于特定的情景剧，将人物姿态分成30个类别，输入一张室内图片，输出本剧中人物可以在此情景下出现的姿态和位置；先用网络判断出哪种姿态适用于此场景，然后把该姿态送入 VAE 生成适用于当前场景的带缩放和变形的姿态；可供性预测任务缺乏数据，本文就构建了一个拥有 1 亿帧数据的数据集； `什么是可供性预测，参考文献 12 有`{:.warning}      

1. [Functional Generative Design: An Evolutionary Approach to 3D-Printing](http://cn.arxiv.org/abs/1804.07284)   
*2018-04-19* [Paper](https://arxiv.org/abs/1804.07284)    
3D 打印的新方法，通用性更好；使用 VAE 产生搜索空间，然后用代理模型进行实物设计，并使用遗传算法更新代理模型；`VAE 在这里边到底干嘛了`   

1. [V-Net: Voxel VAE Net with Group Convolutions for Point Cloud Segmentation](http://cn.arxiv.org/abs/1811.04337)   
*2018-11-11* [Paper](https://arxiv.org/abs/1811.04337)    
$\bullet  \bullet$   `VAE结构`{:.warning} `体素转卷积的特点`{:.warning}    
使用带有组卷积的 VAE 网络对体素进行分割，得到点云；    
>体素转点云；   

1. [An Alarm System For Segmentation Algorithm Based On Shape Model](http://cn.arxiv.org/abs/1903.10645)    
*2019-03-26* [Paper](https://arxiv.org/abs/1903.10645)    
使用 VAE 网络自动评估分割算法的效果；对于测试数据来说，因为缺乏标签，人工检查费时费力，本文提出一个报警系统，基本思路是用 VAE 把分割结果映射到低维空间，然后使用分类或回归的方式来评判分割的质量；本文用的是分割结果的形状信息；算法在三维医疗分割任务上做了评估，比其他方法效果都好；`开集还是闭集`{:.warning}        

1. [Variational AutoEncoder For Regression: Application to Brain Aging Analysis](http://cn.arxiv.org/abs/1904.05948)   
*2019-04-11* [Paper](https://arxiv.org/abs/1904.05948)    
使用 VAE 进行大脑老化分析；    
>课题很有意思；    

## 6.5 音频转图片
1. [Synthesizing Images from Spatio-Temporal Representations using Spike-based Backpropagation](http://cn.arxiv.org/abs/1906.08861)   
*2019-05-24* [paper](https://arxiv.org/abs/1906.08861)    


# 2 渔

-------------------  
[End](#head)
{:.warning}  
