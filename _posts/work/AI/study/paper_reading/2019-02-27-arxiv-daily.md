---
layout: article
title:  "「论文阅读」 每日 arXiv · 2019-02-27"
date:   2019-02-27 13:10:40 +0800
key: arXiv-20190227
aside:
  toc: true
tags: arXiv
category: [AI, paper_reading]
---

><https://arxiv.org/list/cs/new>  

    有两篇文章在用 CNN 对喷注进行分类的，看样子是刚刚应用到这个领域；  


## 计算机视觉
#### [1. ParticleNet：用粒子云来标注喷注](http://cn.arxiv.org/abs/1902.08570)
发表时间：2019-02-22   
*标签：CNN，Jet Physics*  

<!--more-->

>Qu, H., & Gouskos, L. (2019). ParticleNet: Jet Tagging via Particle Clouds. <https://arxiv.org/abs/1902.08570>.    

    用 CNN 网络对喷注进行分类，将 CNN 应用于物理学；  

**贡献**：借鉴点云概念，提出了粒子云；并使用 CNN 进行分类；效果比 ResNeXt 高 1%，并未有太大提升；  


#### [2. 使用 CNN 进行脉冲涡流分类和回归](http://cn.arxiv.org/abs/1902.08553)  
发表时间：2019-02-22   
*标签：脉冲涡流，缺陷检测，多任务， 一维卷积，分类，回归*    

    CNN 应用到金属缺陷检测上

>Fu, X., Zhang, C., Peng, X., Jian, L., & Liu, Z. (2019). Towards end-to-end pulsed eddy current classification and regression with CNN. <http://arxiv.org/abs/1902.08553>.    

脉冲涡流技术（Pulsed eddy current，PEC）是针对金属材料的一种电磁无损检测技术；  
本文是使用 CNN 对 PEC 数据进行分类；我们构建的网络同时进行分类和回归，分别用来检测缺陷的类别和深度；  


## 机器学习

#### [3. 关于对抗鲁棒性对数据分布的敏感程度的研究](http://cn.arxiv.org/abs/1902.08336)  
发表时间：2019-02-22   
*标签：数据，对抗训*    

    对抗训练中，数据分布并不影响任务本身，而是影响了对抗鲁棒性

>Ding, G. W., Lui, K. Y. C., Jin, X., Wang, L., & Huang, R. (2019). On the Sensitivity of Adversarial Robustness to Input Data Distributions. <http://arxiv.org/abs/1902.08336>.   

神经网络容易受到对抗性干扰；当下大部分研究着眼于理解和降低模型的敏感程度；  
我们发现了一个有趣的现象：时下流行的对抗训练中，对抗鲁棒性对数据分布很敏感；甚至对原数据做完增强后重新进行对抗训练，模型的鲁棒性变化都很大；而准确度却不会这样；  
我们用贝叶斯分类器将鲁棒性和单纯的准确度分开；  
**实验**：在 MNIST 和 CIFAR10 上分别做相同的实验，对原始数据进行数据增强后，重新训练模型；  
**结果**：训练所得的模型和原始的模型相比，准确度变化不大，但是对抗鲁棒性变化却很大；  
**结论**：数据分布并不影响任务本身，而是影响了对抗鲁棒性；（反直觉）  


## 自然语言处理
#### [4. AQM+：视觉问答系统中用大规模 AQM 生成问题](http://cn.arxiv.org/abs/1902.08355)  
发表时间：2019-02-22   
*标签：视觉问答*    

    针对视觉问答系统，改进问题生成模型，提高准确度；但速度慢了很多  

>Lee, S.-W., Gao, T., Yang, S., Yoo, J., & Ha, J.-W. (2019). Large-Scale Answerer in Questioner’s Mind for Visual Dialog Question Generation. In International Conference on Learning Representations. <http://arxiv.org/abs/1902.08355>.  

**背景**：Answerer in Questioner's Mind（AQM）是一个对话系统领域最近提出的面向任务的信息论框架；其原理是最大化当前问题的信息增益；  
**问题**：因为是直接计算信息的增益，那么，当解空间很大的时候 AQM 会存在局限；  
**方案**：提出了 AQM+；  
**结果**：  
  1. 降低错误率上，其他算法只能降低 6% 左右，而 AQM+ 可以降低至少 60%；  
  2. 生成一个问题，常见的监督学习算法算法耗时 0.1 s，AQM+ 耗时 3s （Tesla P40）；  
**结论**：  
  1. 不仅能处理大规模解空间；而且，提出的问题和当前对话关联性更强；  
  2. 准确度达到 SOTA  
