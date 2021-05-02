---
layout: article
title:  "「论文解读」Faster R-CNN Features for Instance Search"
date:   2018-10-18 14:06:40 +0800
key: retrieval-faster-rcnn-20181018
aside:
  toc: true
tags: Faster-RCNN
category: [AI, CV, retrieval, paper_reading]
---
https://blog.csdn.net/dengbingfeng/article/details/51453851
https://zhuanlan.zhihu.com/p/33625603

>DeepVision Workshop in CVPR 2016  
论文发表时间：2016年4月  
论文地址：<http://arxiv.org/abs/1604.08893>  
主页: <http://imatge-upc.github.io/retrieval-2016-deepvision/>  
官方代码：<https://github.com/imatge-upc/retrieval-2016-deepvision>  

## 一、一句话总结文章
**第一句**：之前的图像检索方法，是以图搜图（整张图片匹配）；本文是以图中物体搜图中物体（匹配的是图片中的目标物体，搜索与待搜索的数据都是包含目标物体的大图）；  
**第二句**：本文在以前的图像检索方法的基础上又加了重排序（二次排序），重排序是基于图像内部的区域（目标物体）做的；  
**图片中目标物体的来源是 Faster RCNN 的检测结果；**  

## 二、基本流程
前导知识：`CNN`，`深度学习基本知识`，`图像检索的基本知识`，`Faster-RCNN`；

第一步 Filtering Stage：在现有的 Faster-RCNN 模型上应用 [IPA](#IPA) 策略提取特征，结合余弦相似度，对整个数据集图像进行第一次 rank——和待检索图片越相似越排名越靠前；

第二步 Spatial Reranking：在第一步的基础上，针对排名 top N 的图片，在现有的 Faster-RCNN 模型上应用 [RPA](#RPA) 策略取得特征，比较余弦相似度，依然是越相似的排名越靠前，完成 rerank——即第二次排序；*（此处 N 怎么选）*

第三步：操作完后将 top 10 的结果显示出来；

## 三、细节
### 1. 概念

<span id="IPA">**IPA**</span> ：Image-wise pooling of activations  
用最后一层卷积层的激活值（即特征图）来构建整幅图片检索所需的特征；  
构造过程：取 Faster RCNN 的最后一层卷积层的输出（特征图）（conv5-3），每个特征图进行[池化](#pooling)，池化成一个值，最后将所有的池化结果连在一起，就是最后用于检索的特征；该特征的维度与最后一层卷积层的个数相等；  

<span id="RPA">**RPA**</span>：Region-wise pooling of activations  
用 Roi Pooling 层的激活值（即特征图）来构建其对应区域检索所需的特征；  
构造过程：针对目标物体（的边框），在 RoI Pooling 层取得其特征图，每个特征图的[池化](#pooling)结果组合起来就得到区域层面的检索特征；  

**CA-SR**：Class-Agnostic Spatial Reranking  
未知类别空间排序：针对 [RPA](#RPA)  取得的检索特征，用余弦相相似度来进行重排序；  

**CS-SR**：Class-Specific Spatial Reranking  
特定类别排序：针对 [RPA](#RPA)  取得的检索特征，直接用该区域的分类得分（置信度）来进行重排序；  
前提：该 Faster-RCNN 网络针对待检索物体进行过[微调](#fine-tuning)；
CA-SR 和 CS-SR 的区别就在于，用来重排序的指标不同；  

### 2. 基本操作

<span id="pooling">**池化**</span>：求和池化 & 最大池化
求和池化特征，先用 L2 归一化，whitening 后再 L2 归一化一次；  
而最大池化特征只进行一次 L2 归一化；*（该操作是在池化之前，还是针对池化的结果）*  
详情参见[^3] [^11]    

<span id="fine-tuning">**微调**</span>：针对检索的目标微调 Faster-RCNN  
第一种方案，只调整全连接层；  
第二种方案，除前两层卷积层外都所有层都微调；  
只调整全连接层在检索物体较难的时候效果不好 *(什么是难)*；  

## 四、实验
### 1. 数据集

在 `Oxford` 和 `Pairs` 数据集里，输出 12 种类别可能（11种建筑+背景）；  
在 `INS 13` 中有30种不同的检索实例，输出 31 种类别可能；  

### 2. 实验结果

<span id="pooling-result">**池化实验结果**</span>：求和池化 & 最大池化的对比  
![](/assets/images/cv/dl/paper_reading/FasterRCNN-retrieval/faster-rcnn-for-retrieval-sum-max.png)  

**CA-SR 和 CS-SR 的实验结果**：  
![](/assets/images/cv/dl/paper_reading/FasterRCNN-retrieval/faster-rcnn-for-retrieval-CASR-CSSR.png)  

## 五、总结

这篇文章使用现成的 Faster-RCNN 框架，做完物体检测之后再做检索，使用余弦相似度计算相似性；
除了余弦相似度，可以尝试其他计算相似度算法；  

[^3]:A. Babenko and V. Lempitsky. Aggregating local deep features for image retrieval. In International Conference on Computer Vision (ICCV), December 2015.  
[^11]:Y. Kalantidis, C. Mellina, and S. Osindero. Cross-dimensional weighting for aggregated deep convolutional features. arXiv:1512.04065, 2015.
