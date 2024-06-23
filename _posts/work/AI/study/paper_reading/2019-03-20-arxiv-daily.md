---
layout: article
title:  "「论文阅读」 每日 arXiv · 2019-03-20"
date:   2019-03-20 18:00:40 +0800
key: arXiv-20190320
aside:
  toc: true
tags: arXiv
category: [AI, paper_reading]
---

><https://arxiv.org/list/cs/new>  




## 计算机视觉
#### [1. YOLLO：结合视听的视觉定位](http://cn.arxiv.org/abs/1902.04213)
发表时间：2019-02-12     
*标签：视觉定位，语音，检测*  

<!--more-->

>Deng, C., Wu, Q., Xu, G., Yu, Z., Xu, Y., Jia, K., & Tan, M. (2019). You Only Look & Listen Once: Towards Fast and Accurate Visual Grounding. <http://arxiv.org/abs/1902.04213>.   


**背景**：视觉定位（Visual Grounding）是指给定一张图片及一个句子， 从图片中找出最相关的对象或区域；与目标检测不同之处在于，检测需要事先定好类别（标签），而视觉定位是根据任意的语音指令来给出图像中相关的区域；所以，实际应用中视觉定位更有用；   
**问题**：过去视觉定位算法都是分为两个阶段，第一阶段检测出所有目标，第二阶段对目标区域和指令进行跨模式匹配；这个方法本身就低效，更何况第一阶段的检测本身就不够准确；  
**解决**：我们提出了一种更高效、更直观的单阶段视觉定位模型；在检测阶段加入了关系注意力模块，他可以将图像和指令的关系转化为关系图，用来指导检测直接找到目标，无需提取其他不相关的目标；  
**结果**：相比两阶段的方法，本文的方法在推理时速度提升20 - 30 倍，并且效果也有 18% - 41% 的提升；  
代码和模型：<https://github.com/openblack/rvg>   


#### [2. HRNet：人体姿态估计的深度高分辨率学习](http://cn.arxiv.org/abs/1902.09212)
发表时间：2019-02-25       
*标签： 姿态估计，高分辨率，CVPR 2019*  


>Sun, K., Xiao, B., Liu, D., & Wang, J. (2019). Deep High-Resolution Representation Learning for Human Pose Estimation. <http://arxiv.org/abs/1902.09212>.      


**背景**：之前的方法都是先下采样再上采样，这个过程中有信息丢失；    
**方案**：我们让整个网络一直保持高分辨率，期间逐级不断融合低分辨率的网络；    
**实验**：在 COCO 关键点检测和 MPII 数据集上进行了网络性能验证；   
**主页**：<https://jingdongwang2017.github.io/Projects/HRNet/PoseEstimation.html>.    
**官方 pytorch 代码**：<https://github.com/leoxiaobin/deep-high-resolution-net.pytorch>.    
