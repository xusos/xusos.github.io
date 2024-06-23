---
layout: article
title:  "「论文解读」Fully Supervised Speaker Diarization"
date:   2019-01-02 10:06:40 +0800
key: fully-supervise-sd-reading-20190102
aside:
  toc: true
category: [AI, Audio, VoiceprintAnalysis, PaperReading]
---

只要开始发言，每个说话者都会建立一个属于他的 RNN（递归神经网络） 模型，然后在过程中，不断更新相应的 RNN 状态；  


>论文发表时间：2018年10月  
论文地址：<https://arxiv.org/abs/1810.04719>  
官方代码：<https://github.com/google/uis-rnn>（pytorch）  


## 一、一句话总结  
**第一句**：论文提出了[无限交替循环神经网络(UIS-RNN)](#UIS_RNN)，解决了以往[人声分割](/ai/Audio/VoiceprintAnalysis/2018-12-29-speaker-diarization.html)算法无法进行监督训练的问题；         
**第二句**：[EER](#EER) 在 NIST SRE 2000 CALLHOME 上达到了 7.6%，比先前的基于聚类的方法（8.8%）和深度网络嵌入方法（9.9%）好；     

## 二、Q&A  


## 三、贡献  

## 四、结论  
- 遇到带标签的数据，我们有可用的监督学习方法了——UIS-RNN；  
- 凡是序列聚类问题（如视频中的人脸聚类），都可以用 UIS-RNN；  

## 五、基本流程/解决方案 —— <span id="DocFace">DocFace</span>  
前导知识：`RNN`，`深度学习基本知识`；  

**第一步** Train on source domain：**在源数据集上训练出基础模型**   

**第二步** Train on target domain：**在目标数据集上训练出最终模型**  


## 六、实验  


### <span id="dataset">（一）数据集</span>

<span id="ID-Selfie-A">**1. ID-Selfie-A**</span>  

### （二）实验结果   

<span id="explore">**1. 探索实验**</span>    

**结论一**：  

<span id="compare">**2. 对比实验**</span>  

**结论二**：  

**结论三**：  

<span id="dataset_size">**3. 关于数据集大小对准确度影响的实验**</span>  

**结论四**：  

## 七、 展望
:o: 用在线学习到的特征代替预训练的嵌入特征，从而实现一个端到端的人声提取模型；  

-------------------  
 End
{:.warning}  

## 附录  
### （一）基本概念  
<span id="UIS_RNN">**无限交替循环神经网络**</span>  
unbounded interleaved-state recurrent neural networks，UIS-RNN；  

### （二）损失函数  
<span id="EER">**等错误率**</span>  
错分正负样本概率相同时的FAR；  

### （三）数据集
<span id="MS-Celeb-1M">**1. MS-Celeb-1M**[^Ms-celeb-1m]</span>  
