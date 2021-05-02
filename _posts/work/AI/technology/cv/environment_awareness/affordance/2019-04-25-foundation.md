---
layout: article
title:  "「CV」 视觉可供性资源汇总"
date:   2019-04-25 15:08:40 +0800
key: visual-affordance-foundation-20190425
aside:
  toc: true
category: [AI, CV, affordance]
tags: 资源
---
<span id='head'></span>  
>给出可以摆放物体的位置；     

<!--more-->


# 1 综述
1. [Visual Affordance and Function Understanding:A Survey](http://cn.arxiv.org/abs/1807.06775)     
*2018-07-18* [Paper](https://arxiv.org/abs/1807.06775)   

# 2 理论

# 3 2D
1. [Binge Watching: Scaling Affordance Learning from Sitcoms](http://cn.arxiv.org/abs/1804.03080)    
*2018-04-09* [Paper](https://arxiv.org/abs/1804.03080)   
*`可供性预测（affordances prediction）` · `VAE` · `情景剧` · `聚类`*   
视觉盛宴之带缩放的情景喜剧可供性学习；基于特定的情景剧，将人物姿态分成30个类别，输入一张室内图片，输出本剧中人物可以在此情景下出现的姿态和位置；先用网络判断出哪种姿态适用于此场景，然后把该姿态送入 VAE 生成适用于当前场景的带缩放和变形的姿态；可供性预测任务缺乏数据，本文就构建了一个拥有 1 亿帧数据的数据集； `什么是可供性预测，参考文献 12 有`{:.warning}      


# 4 3D

# 5 全景
1. [3D Manhattan Room Layout Reconstruction from a Single 360 Image](http://cn.arxiv.org/abs/1910.04099)     
*2019-10-09* [paper](https://arxiv.org/abs/1910.04099)     
房间布置；    

# 6 应用
## 6.1 广告植入
1. [Identifying Candidate Spaces for Advert Implantation](http://cn.arxiv.org/abs/1910.03227)     
*2019-10-08* [paper](https://arxiv.org/abs/1910.03227)     
给广告图在目标图片中找到合适地摆放位置；    

-------------------  
[End](#head)   
{:.warning}  
