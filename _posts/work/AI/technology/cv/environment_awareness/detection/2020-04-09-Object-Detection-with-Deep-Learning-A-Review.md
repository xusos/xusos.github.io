---
layout: article
title:  "「论文阅读」 Object Detection with Deep Learning: A Review"
date:   2020-04-09 16:06:40 +0800
key: Object-Review
aside:
  toc: true
category: [AI, CV, detection, paper_reading]
---
<span id='head'></span>   
>
论文发表时间：2018-07-15        
作者：Zhong-Qiu Zhao, Peng Zheng, Shou-tao Xu, Xindong Wu       
论文地址：<https://arxiv.org/abs/1807.05511>   

<!--more-->   

# 1 一句话总结文章  
可看成改版的 Image Pyramid；​分析了小尺度与预训练模型尺度之间的关系, 提出了 Scale Normalization for Image Pyramids (SNIP)：在训练中，每次只回传那些大小在一个预先指定范围内的 proposal 的 gradient，而忽略掉过大或者过小的 proposal；在测试中，建立大小不同的Image Pyramid，在每张图上都运行这样一个detector，同样只保留那些大小在指定范围之内的输出结果，最终在一起NMS；这样就可以保证网络总是在同样 scale 的物体上训练，也就是标题中 Scale Normalized的意思；​    

# 2 深度学习
## 2.1 发展历程
## 2.2 CNN

# 3 通用目标检测

## 3.1 基于区域
### 3.1.1 RCNN
### 3.1.2 SPP-Net
### 3.1.3 Fast RCNN
### 3.1.4 Faster RCNN
### 3.1.5 RFCN
### 3.1.6 FPN
### 3.1.7 Mask RCNN
### 3.1.8 Multi-task
### 3.1.9 回顾

## 3.2 基于回归
### 3.2.1 Pioneer Works
### 3.2.2 YOLO
### 3.2.3 SSD

## 3.3 实验
### 3.3.1 数据集
### 3.3.2 性能分析

# 4 显著物体检测
## 4.1 基于深度学习
## 4.2 实验

# 5 人脸检测
## 5.1 基于深度学习

# 6 行人检测
## 6.1 基于深度学习
## 6.2 实验

# 7 展望

# 8 思考


------------------
[End](#head)   
{:.warning}  

# 附录
## A 概念
<span id="symbol">**1.**</span>    


## B 术语

| 英文 | 中文 | 英文 | 中文 |
| --- | --- | --- | --- |
|  |  |  |  |
|  |  |   |  |
