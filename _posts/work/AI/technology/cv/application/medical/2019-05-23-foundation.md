---
layout: article
title:  "「CV」 医疗图像分析资源汇总"
date:   2019-05-23 11:18:40 +0800
key: medical-foundation-20190523
aside:
  toc: true
category: [AI, CV, medical]
tags: 资源
---
<span id='head'></span>  
>[通用物体分割资源](/ai/cv/segmentation/2019/05/05/foundation.html)   

<!--more-->

# 1  综述
1. [Medical Image Analysis using Convolutional Neural Networks: A Review](http://cn.arxiv.org/abs/1709.02250)   
*2017-09-04* [paper](https://arxiv.org/abs/1709.02250)   

1. [Deep neural network models for computational histopathology: A survey](http://cn.arxiv.org/abs/1912.12378)   
*2019-12-28* [paper](https://arxiv.org/abs/1912.12378)    
病理学——癌症图像分析；    

# 2 理论

# 3 识别

## 3.1 面瘫
1. [Toward an Automatic System for Computer-Aided Assessment in Facial Palsy](http://cn.arxiv.org/abs/1910.11497)    
*2019-10-25* [paper](https://arxiv.org/abs/1910.11497)     

## 3.2 心率
1. [RhythmNet: End-to-end Heart Rate Estimation from Face via Spatial-temporal Representation](https://arxiv.org/abs/1910.11515)    
*2019-10-25* [paper](https://arxiv.org/abs/1910.11515) | [project](http://vipl.ict.ac.cn/view_database.php?id=15%27)    
根据面部识别心率；    

# 4 分割
## 4.1 肺结核
1. [Dual-branch residual network for lung nodule segmentation](http://cn.arxiv.org/abs/1905.08413)   
*2019-05-21* [paper](https://arxiv.org/abs/1905.08413)   

1. [Lung nodule segmentation via level set machine learning](http://cn.arxiv.org/abs/1910.03191)    
*2019-10-08* [paper](https://arxiv.org/abs/1910.03191)    
基于 CT；     

## 4.2 白细胞
1. [A novel algorithm for segmentation of leukocytes in peripheral blood](http://cn.arxiv.org/abs/1905.08416)   
*2019-05-21* [paper](https://arxiv.org/abs/1905.08416)   

## 4.3 手术器械
1. [RASNet: Segmentation for Tracking Surgical Instruments in Surgical Videos Using Refined Attention Segmentation Network](http://cn.arxiv.org/abs/1905.08663)   
*2019-05-21* [paper](https://arxiv.org/abs/1905.08663)   

1. [Learning Where to Look While Tracking Instruments in Robot-assisted Surgery](http://cn.arxiv.org/abs/1907.00214)   
MICCAI 2019 *2019-06-29* [paper](https://arxiv.org/abs/1907.00214)    

## 4.4 头部 CT
1. [Improved ICH classification using task-dependent learning](http://cn.arxiv.org/abs/1907.00148)   
*2019-06-29* [paper](https://arxiv.org/abs/1907.00148)   
分割、分类双任务同时进行，最后的 loss 有借鉴意义；    

## 4.5 骨骼
1. [Permutohedral Attention Module for Efficient Non-Local Neural Networks](http://cn.arxiv.org/abs/1907.00641)   
MICCAI 2019 *2019-07-01* [paper](https://arxiv.org/abs/1907.00641)   
椎骨分割，用了注意力；   

## 4.6 皮肤
1. [MobileGAN: Skin Lesion Segmentation Using a Lightweight Generative Adversarial Network](http://cn.arxiv.org/abs/1907.00856)   
*2019-07-01* [paper](https://arxiv.org/abs/1907.00856)   
使用 GAN 进行分割；    

## 4.7 肿瘤
1. [An Efficient Solution for Breast Tumor Segmentation and Classification in Ultrasound Images Using Deep Adversarial Learning](https://arxiv.org/abs/1907.00887)   
*2019-07-01* [paper](https://arxiv.org/abs/1907.00887)    
使用了对抗学习；   

## 4.7 器官
1. [End-to-End Adversarial Shape Learning for Abdomen Organ Deep Segmentation](http://cn.arxiv.org/abs/1910.06474)     
*2019-10-15* [paper](https://arxiv.org/abs/1910.06474)     
GAN 分割腹部器官——肝、胰和脾；     

## 4.8 其他
1. [Task Decomposition and Synchronization for Semantic Biomedical Image Segmentation](http://cn.arxiv.org/abs/1905.08720)   
*2019-05-21* [paper](https://arxiv.org/abs/1905.08720)   

1. [Multi-scale guided attention for medical image segmentation](http://cn.arxiv.org/abs/1906.02849)   
*2019-06-07* [paper](https://arxiv.org/abs/1906.02849) | [pytorch](https://github.com/sinAshish/Multi-Scale-Attention)-offical    
差不多的低层特征在多个尺度上重复提取，我们就设计了一个注意力，来重复利用这些特征；并在腹部磁共振成像（MRI）上进行了实验；    


# 5 关键点
>[人体关键点检测](/ai/cv/human/body_landmark/2019/05/14/foundation.html)    

## 5.1 老年痴呆
1. [Limitations and Biases in Facial Landmark Detection -- An Empirical Study on Older Adults with Dementia](http://cn.arxiv.org/abs/1905.07446)   
CVPR 2019 (FGAHI) Workshop *2019-05-17* [paper](https://arxiv.org/abs/1905.07446)    


# 6 MRI
1. [Reducing Uncertainty in Undersampled MRI Reconstruction with Active Acquisition](http://cn.arxiv.org/abs/1902.03051)    
CVPR 2019 *2019-02-08* facebook [paper](https://arxiv.org/abs/1902.03051) | [keras](https://github.com/Corey-Zumar/MRI-Reconstruction)    

1. [DUAL-GLOW: Conditional Flow-Based Generative Model for Modality Transfer](http://cn.arxiv.org/abs/1908.08074)    
ICCV 2019 *2019-08-21* [paper](https://arxiv.org/abs/1908.08074)    
用 MRI 合成 PET 图像；    


-------------------  
[End](#head)   
{:.warning}  
