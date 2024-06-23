---
layout: article
title:  "「论文阅读」 Deep Clustering for Unsupervised Learning of Visual Features"
date:   2019-03-04 17:00:40 +0800
key: deep-cluster-20190304
aside:
  toc: true
category: [AI, CV, unsupervised, paper_reading]
---

>论文发表时间：2018年07月15日    
论文：<https://arxiv.org/abs/1807.05520>  



## 一、一句话总结  
**第一句**：深度学习（CNN）与传统机器学习（聚类）的结合，将监督学习转化成了无监督方案；    
**第二句**：精度高，速度快，模型小；    

## 二、Q&A  

1.人脸特征点检测的挑战  
{:.warning}   

- Local Variation  
人脸表情变化很大，真实环境光照复杂，而且现实中大量存在人脸局部被遮挡的情况等；  
- Global Variation  
人脸是3D的，位姿变化多样，另外因拍摄设备和环境影响，成像质量也有好有坏；   
- Data Imbalance  
现有训练样本各个类别存在不平衡的问题；  
- Model Efficiency  
在计算受限的设备比如手机终端，必须要考虑计算速度和模型文件大小问题；   

## 三、贡献  
(1) 提出一种新的无监督方法来实现卷积网络的端到端学习，这种方法适用与任何一种传统机器学习聚类算法，比如 k-means 或 层次聚类等，且操作简单；  
(2) 在使用无监督学习的许多标准迁移任务中达到当前最佳水平；`what`{:.warning}  
(3) 在未处理的图像上表现最好；`什么样的处理`{:.warning}    
(4) 讨论了无监督学习的评估方案；  

## 四、结论  

## 五、基本流程/解决方案

## 六、实验  

### <span id="dataset">（一）数据集</span>


### （二）实验结果   

<span id="explore">**1. 实验**</span>    

**结论一**：  
