---
layout: article
title:  "「论文阅读」 PFLD: A Practical Facial Landmark Detector"
date:   2019-03-03 19:00:40 +0800
key: PFLD-facial-landmark-20190303
aside:
  toc: true
category: [AI, AI, CV,human, body_landmark, paper_reading]
---
<span id='head'></span>  

>论文发表时间：2019年2月28日    
论文：<https://arxiv.org/abs/1902.10859>  
作者分别来自天津大学、武汉大学、腾讯AI实验室、美国天普大学  

<!--more-->

## 一、一句话总结  
**第一句**：设计了新的 loss 函数来处理了类别不均衡问题；    
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

## 四、结论  

## 五、基本流程/解决方案

## 六、实验  

### <span id="dataset">（一）数据集</span>


### （二）实验结果   

<span id="explore">**1. 实验**</span>    

**结论一**：  



-------------------  
[End](#head)
{:.warning}  
