---
layout: article
title:  "「竞赛」 2019 年 RTC 创新挑战赛"
date:   2019-07-16 13:34:40 +0800
key: rtc-2019-20190716
aside:
  toc: true
category: [AI, AI, Competition]
---
<span id='head'></span>
>竞赛主页：<https://challenge.rtcdeveloper.com/ai-in-rtc/>    
赛道一（算法赛）：[AI in RTC-超分辨率图像质量比较挑战赛](https://www.pkbigdata.com/common/cmpt/AI%20in%20RTC-%E8%B6%85%E5%88%86%E8%BE%A8%E7%8E%87%E5%9B%BE%E5%83%8F%E8%B4%A8%E9%87%8F%E6%AF%94%E8%BE%83%E6%8C%91%E6%88%98%E8%B5%9B_%E7%AB%9E%E8%B5%9B%E4%BF%A1%E6%81%AF.html)    
赛道二（算法赛）：[AI in RTC-超分辨率算法性能比较挑战赛](https://www.dcjingsai.com/common/cmpt/AI%20in%20RTC-%E8%B6%85%E5%88%86%E8%BE%A8%E7%8E%87%E7%AE%97%E6%B3%95%E6%80%A7%E8%83%BD%E6%AF%94%E8%BE%83%E6%8C%91%E6%88%98%E8%B5%9B_%E7%AB%9E%E8%B5%9B%E4%BF%A1%E6%81%AF.html)     
赛道三（应用赛）：[【线上黑客马拉松】RTC编程挑战赛](https://www.huodongxing.com/event/8500759008100)    


<!--more-->

## 一、 介绍
目标是图像超分辨率；      
组队截止到 2019-09-27 14：00 [**赛程安排**](#schedule)，[赛制](#rule)，[奖项设置](#awards)    
官方竞赛 QQ群494363927    

## 二、 数据

| 赛程 | 数据量（张） | 发布时间（2019年） | 说明 |   
| --- | --- | --- | --- |
| 训练集[DIV2K](https://data.vision.ee.ethz.ch/cvl/DIV2K/)、[Flickr2K](http://cv.snu.ac.kr/research/EDSR/Flickr2K.tar) | 800+200、 |  |  |
| 验证集 | 100×3 | 7.1 | val-images_original：原始图，val-images_x2：下采样至1/2，val-images_x4：下采样至1/4，共 100 组（一一对应） |
| 测试集 | - | 7.20 - 8.1 | test-images_x4：下采样至1/4，100张 |  




## 三、 评估指标
PI (perceptual index)指标，PI 值越小，表明图像质量越高；   
若 PI 值相同，则 RMSE 较小者获胜：    
$$
\begin{align}   
PI &= {1 \over 2} ((10 - Ma) + NIQE) \label{PI}
\end{align}
$$

:ghost:    

## 四、 思路    


## 五、 榜单




-------------------  
[End](#head)
{:.warning}  


# 附录
## A 比赛信息  
<span id="schedule">**1. 赛程安排**</span>    

| 赛程 | 时间（2019年） | 地点 | 说明 |  
| --- | --- | --- |  --- |  
| 初赛 | 7.1 - 9.30 | - | 本地调试，线上测评，每日一次； 9.30 日提交代码； |  
| 决赛 | 10.23 | 北京 | 答辩； |     
| 颁奖 | 10.24 | 北京 | - |     

注：   
参赛队伍应保障参赛代码方案不外泄，否则大赛组织方有权拒绝队伍参与评奖；     
主办方将为参与团队（每队两人）安排并支付差旅、住宿；    

*感觉赛事有点仓促，数据、日程和晋级名额都存在待定情况；*


<span id="rule">**2. 赛制**</span>  
无      

<span id="awards">**3. 比赛奖项**</span>  

| 奖项 | 数量 | 奖金（万/每队） |
| --- | --- | --- |
| 1 | 1 | 6 |
| 2 | 1 | 3 |
| 3 | 1 | 1 |

*这个奖项设置，妥妥地撕逼大战；*    

## B 参考资料
1. 图像质量比较挑战赛中评分标准的变量定义参考：    
RMSE code: [The PIRM Challenge on Perceptual Super-Resolution](https://github.com/roimehrez/PIRM2018)    
NIQE: [Making a “Completely Blind” Image Quality Analyzer](http://live.ece.utexas.edu/research/Quality/niqe_spl.pdf) PIRM2018, [Blog 解读](https://blog.csdn.net/mazhitong1020/article/details/80415758)   
Ma[Learning a No-Reference Quality Metric for Single-Image Super-Resolution](https://sites.google.com/site/chaoma99/sr-metric)    
