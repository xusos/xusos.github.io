---
layout: article
title:  "「论文阅读」 每日 arXiv · 2019-03-01"
date:   2019-03-01 16:10:40 +0800
key: arXiv-20190301
aside:
  toc: true
tags: arXiv
category: [AI, paper_reading]
---

><https://arxiv.org/list/cs/new>  




## 计算机视觉
#### [1. 3D 点云零样本学习](http://cn.arxiv.org/abs/1902.10272)
发表时间：2019-02-27     
*标签：零样本，3D 点云*  

    首次在 3D 点云上应用零样本  

<!--more-->

>A. Cheraghian, S. Rahman, L. Petersson. (2019). Zero-shot Learning of 3D Point Cloud Objects. <http://arxiv.org/abs/1902.10272>.  

为了应对模型未见过的类别，本文提出了针对 3D 点云的零样本学习；并提出了评估指标；整体方案与二维零样本识别相似；  


## 机器学习

#### [2. GCN-LASE: 包含连接属性的图卷积](http://cn.arxiv.org/abs/1902.09817)  
发表时间：2019-02-26   
*标签：图卷积，蒙特卡罗*    

    改进了 GCN ，效果更好，速度更慢

>Z. Li, L. Zhang, G. Song. (2019). GCN-LASE: Towards Adequately Incorporating Link Attributes in Graph Convolutional Networks. <http://arxiv.org/abs/1902.09817>.   

**背景**：图卷积（GCN）在一个节点采集近邻信息时效果很好；  
**问题**：现有的 GCN 很好地利用了低秩近邻信息和结点特征；但是却忽略了结点间的关系；  
**方案**：提出了 GCN-LASE，在近邻信息计算时加入连接属性；同时设计了新的采样策略来降低估算方差；为了加速训练过程，对近邻特征用使用了蒙特卡罗方法来估计他们的和；    
**结果**：GCN-LASE 精度上最好，但是速度很慢；  
**展望**：探索新的采样方法来降低计算复杂度；针对特定问题修改 GCN-LASE 的结构，来提高精度（比如更好地适应动态网络）；  



## 自然语言处理
#### [3. 生物医学文献表格信息提取框架](http://cn.arxiv.org/abs/1902.10031)  
发表时间：2019-02-26   
*标签：表格提取，句法处理，文本挖掘*    

    没有提出新的技术，是针对医学表格信息提取给出了完整的业务逻辑；并付诸实验；  
    可以了解下完整的流程，借鉴来做 OCR 的业务  

>Milosevic, N., Gregson, C., Hernandez, R., & Nenadic, G. (2019). Hybrid methodology for information extraction from tables in the biomedical literature, 1–5. <http://arxiv.org/abs/1902.10031>.  

**背景**：科研文献与日剧增，给从业者们带来很大压力；  
**问题**：过去也有不少文本挖掘算法，但是图表信息的挖掘很稀少；仅有的研究中也都因表格的格式丰富，而没有一个普适的方法；  
**方案**：我们针对临床文献中的表格，分析了相关需求，并提出了一个完整的流程展示了相关的实验结果；  
