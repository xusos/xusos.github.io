---
layout: article
title:  "「CV」 计算机视觉基础"
date:   2019-03-22 14:06:40 +0800
key: cv-foundation-20190322
aside:
  toc: true
category: [AI, CV, cv_foundation]
---
<span id='head'></span>

<!--more-->

# 1. 常见视觉任务
## 1.1 二维图像

<!--more-->   

### 1.1.1 像素级别
- **特征提取**（边缘，纹理）  
- **图像增强**  
改善图下给你视觉质量（主观）；   
- **图像复原**（去噪，去模糊）  
尽可能地恢复图像的原貌（客观）；   
- **图像加密**  


### 1.1.2 目标级别
- **分类**（classification）    
图像上有什么；   
    - CT 分类  
    - 缺陷检测（defect inspect）   
    - 喷注分类（jet tagging）   
    - 无监督分类   
    - 非视野物体识别  
- **定位**（location）  
目标在哪里；   
- **检测**（detection）   
图像中有哪些目标，位置在哪；   
- **识别**（recognization）  
- **分割**（Segmentation）    
    - **语义分割**（semantic segmentation）    
    分割出物体；   
    - **实例分割**（instance segmentation）       
      分割出个体；    
        - 扁桃体分割（amygdala segmentation）  
        - 前列腺分割（prostate segmentation）  
        - 手部分割（hands segmentation）  
        - 对话框分割（speech ballon segmentation）  
- **显著性检测**（saliency detection）  
以人眼关注为标准，找到图像中最为突出的目标区域；包括眼动点检测和显著性目标检测（与检测和分割密切相关）；   
- **图像检索**（image retrival）  
以图搜图；   
    - 行人重识别（ReID）    
    - 人脸检索   
- **验证**  
判断两张图像是不是同一个物体；   
    - 人脸验证


### 1.1.3 图像级别
- **超分辨率**（Super-resolution）    
从低分辩率估计出高分辨率图像；   
- **风格迁移**（Style Transfer，Neural Style）  
转换图像的风格；    
- **着色**（Colourisation）  
单色图像转换成彩色图像；   



### 1.1.4 理解级别
- **图像翻译** | 图像描述 | 图像标注 | 看图说话 | 场景理解（Image Captioning）     
根据图片生成描述文字；  
- **图像生成**（Image Generation）  
文字转图像；   
- **视觉问答**（visual question-answer，VQA）| 命名实体识别（Named Entites Recognition）   
给出一张图像和一个开放式问题，生成一个答案；   
- **视觉问题生成**（visual question generation，VQG）  
与 VQA 相反，输入图像和答案，能够生成相关的问题；   
- **视觉定位**（visual grounding）   
给出一张图像和一段描述性语句，找到图中最相关的区域；   
- **语义强化**（semantic reinforcement）  
针对文字，使用视觉提示来暗示主题，即用图片代替文字达到凸显主题的目的；    
- **视觉可供性预测**（visual affordance prediction）  


### 1.1.5 专题
- **人**  
    - **2D 姿态估计**  
    找到人体部位的方向和构型；一般是找到各部位的位置；  
    - **头部姿态估计**（head pose estimation）   
    - **手部姿态估计**（hand pose estimation）   
    - **人体关键点检测**（key point）
    - **人脸关键点检测**   
    - **人脸识别**（face recognization）   
    - **人脸对齐**（face align）   
    - **手势识别**   
    - **人群计数**（crowd counting）   
    - **活性检测**（activity recognization）   
    - **表观分析**（apparent analysis）   
    - **唇语识别**（lip reading）
    - **人流量预测**（crowd flow predict）
- **文字**   
    - **OCR**   
- **自动驾驶**（automatic drive）   
    - **导航**（navigation）   
    - **车牌识别**（palte recognization）  
    - **车辆检索**（vehicle ReID）  


### 1.1.6 其他
- **图像编码**  
保证图像质量的前提下，压缩数据，以便存储和传输；   
- **数据增强**    
    - **目标检测——数据增强**  

## 1.2 三维图像
### 1.2.1 目标级别
- **视角转换**（view synthesis）   
- **三维重建**（3D reconstruction）   
    - 基于点云的   
    - 基于图像的  
- **姿态估计**（pose estimation）  
    - 人体姿态  
    - 人脸姿态  
    - 手部姿态  
    - 物体姿态  
- **关键点检测**  

### 1.2.2 图像级别
- **深度估计**  
- **三维感知**  
- **表示解耦**  
- **点云处理**  
    - 点云神经网络    
    - 3D 渲染  
- **SLAM**  
    - SLAM 重建  
    - 目标 SLAM   
    - 3D 摄影   

### 1.2.3 理解级别
- **场景理解**  
- **图像生成**（3D Image Generation）  
文字转三维图像；   

## 1.3 视频
### 1.3.1 目标级别
- **跟踪**（tracking）   

### 1.3.2 理解级别
- **视频分类** | 动作识别 | 行为识别  
对视频进行分类；包括修剪视频识别和未修剪视频识别；       
- **视频检测**   
找到视频中的动作，及其所处的时间段   
- **视频检索**
- **动作估计** | 行为分析 | 姿态估计  
最近指通过观察场景，来预测即将要出现的动作；    


-------------------  
[End](#head)
{:.warning}  



# 附录
## A 资源
1. [NIPS](https://papers.nips.cc/book/advances-in-neural-information-processing-systems-31-2018)     

## B 参考资料
[1]. 机器之心. 计算机视觉这一年：分割、超分辨率、风格迁移、着色和动作识别[EB/OL]. <https://www.jiqizhixin.com/articles/2017-12-03>. 2017-12-04/2019-03-22.   
[2]. 用户1332428. 计算机视觉处理三大任务：分类、定位和检测[EB/OL]. <https://cloud.tencent.com/developer/article/1054871>. 2018-03-08/2019-03-22.    
[3].  用户1332428. 计算机视觉任务：图像梯度和图像完成[EB/OL]. <https://cloud.tencent.com/developer/article/1054873>. 2018-03-08/2019-03-22.    
[4]. GY. 计算机视觉任务(Computer Vision)整理[EB/OL]. <https://cloud.tencent.com/developer/article/1054873>. 2018-08-30/2019-03-22.    
[5]. Jaybo. 计算机视觉笔记及资料整理（含图像分割、目标检测）[EB/OL]. <https://juejin.im/post/5b6fb60451882560ea4af96e>. 2018-08-12/2019-03-22.    
