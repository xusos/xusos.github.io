---
layout: article
title:  "「CV」 人脸生成资源汇总"
date:   2019-10-09 17:09:40 +0800
key: face-generation-foundation-20191009
aside:
  toc: true
category: [AI, CV, human, face_generation]
tags: 资源
---
<span id='head'></span>  
>[通用图像生成资源](/ai/cv/image_generation/2019/03/29/foundation.html)、[风格迁移资源](/ai/cv/style_transfer/2020/02/18/foundation.html)、[季节变换资源](/ai/cv/nature/season_translation/2020/01/02/foundation.html)、[对抗生成网络资源](/ai/dl/gan/2019/03/26/foundation.html)      


<!--more-->

# 1 综述  
1. [DeepFakes and Beyond: A Survey of Face Manipulation and Fake Detection](http://cn.arxiv.org/abs/2001.00179)    
*2020-01-01* [paper](https://arxiv.org/abs/2001.00179)    
人脸生成及生成人脸的检测；    

# 2 理论
# 3 人脸生成
1. [Auto-Encoding for Shared Cross Domain Feature Representation and Image-to-Image Translation](http://cn.arxiv.org/abs/2006.11404)  
 *2020-06-11* [paper](https://arxiv.org/abs/2006.11404)     
基于自编码的人脸生成；   

# 4 技术专题
## 4.1 3D
1. [Semi-supervised Adversarial Learning to Generate Photorealistic Face Images of New Identities from 3D Morphable Model](http://cn.arxiv.org/abs/1804.03675)    
ECCV 2018 *2018-04-10* [Paper](https://arxiv.org/abs/1804.03675) | [Tensorflow](https://github.com/barisgecer/facegan)    
*`半监督` · `GAN` · `3D face`*   
对比了 DCGAN、BEGAN 和 GAN-CLS；    

1. [Generating 3D faces using Convolutional Mesh Autoencoders](http://cn.arxiv.org/abs/1807.10267)   
ECCV 2018 *2018-07-26* [Paper](https://arxiv.org/abs/1807.10267) | [Tensorflow](https://github.com/anuragranj/coma)  
自编码网络；    

## 4.2 序列
<span id='loop_sonsistency'> </span>
1. [Unaligned Image-to-Sequence Transformation with Loop Consistency](http://cn.arxiv.org/abs/1910.04149)     
*2019-10-09* [paper](https://arxiv.org/abs/1910.04149)   
季节和人脸衰老的生成；     

# 5 应用
## 5.1 美颜

## 5.2 眼睛生成
1. [Content-Consistent Generation of Realistic Eyes with Style](http://cn.arxiv.org/abs/1911.03346)      
ICCV Workshop 2019 *2019-11-08* [paper](https://arxiv.org/abs/1911.03346)     

## 5.3 数字木偶
`Digital Puppetry`    
>可以被控制的动漫任务；

1. [Real-time Pupil Tracking from Monocular Video for Digital Puppetry](http://cn.arxiv.org/abs/2006.11341)  
*2020-06-19* [paper](https://arxiv.org/abs/2006.11341)  
提出了移动端网络：检测人脸，尤其是可以跟踪瞳孔，用于卡通人物生成；帧率超过 50 fps；       
 为什么要强调是单目呢？    

-------------------  
[End](#head)
{:.warning}  


# 附录
## A 参考资料
