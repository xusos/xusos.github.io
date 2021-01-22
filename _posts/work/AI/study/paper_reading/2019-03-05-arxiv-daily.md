---
layout: article
title:  "「论文阅读」 每日 arXiv · 2019-03-05"
date:   2019-03-05 13:10:40 +0800
key: arXiv-20190305
aside:
  toc: true
tags: arXiv
category: [AI, paper_reading]
---

><https://arxiv.org/list/cs/new>  




## 计算机视觉
#### [1. 针对小数据集的肺部 CT 影像分类](http://cn.arxiv.org/abs/1903.00183)
发表时间：2019-03-01     
*标签：小数据，GAN，CNN，深度学习*  



<!--more-->

>He, G. (2019). Lung CT Imaging Sign Classification through Deep Learning on Small Data. <http://arxiv.org/abs/1903.00183>.   


**思路**：  
1. 使用 GAN 生成样本（其中 56.7% 被证明是有效的）；  
2. 用 GAN 生成的样本训练模型；  
3. 用真实样本微调模型；  

**结果**：   
二分类的情况，模型精度在 88%，微调后达到 95%；  
多分类的情况，准确度为 91.83%，敏感性为 92.73%，特异性为 99.0%；   


#### [2. 用于显著性检测的金字塔特征选择网络](http://cn.arxiv.org/abs/1903.00179)
发表时间：2019-03-01     
*标签： 金字塔，注意力，损失函数*  


>Zhao, T., & Wu, X. (2019). Pyramid Feature Selective Network for Saliency detection. <http://arxiv.org/abs/1903.00179>.


**问题**：如何提取有效特征是显著性检测的关键；目前的方法主要是盲目地综合多尺度卷积特征；然而，并不是所有的特征都对显著性检测有用，有些甚至会造成干扰；  
**方案**：提出了金字塔特征选择网络，重点研究有效的高层语义和低层细节特征；包括   
1. 上下文感知网络（Context-aware Pyramid Feature Extraction ，CPFE）   
2. 空间注意力（spatial attention，SA），放在低层特征后面   
3. 通道感知（channel-wise attention，CA），放在 CPFE 后面   
4. 融合 CA 和 SA 的结果   
5. 设计了边缘保持 loss，来学习更多的细节特征   

**结果**：   
在五个数据集上用不同的指标做了评估，都是最优的；    


## 机器学习

#### [3. 综述：图聚类的随机块模型及其扩展](http://cn.arxiv.org/abs/1903.00114)  
发表时间：2019-03-01   
*标签：基于模型的聚类，随机块模型，主题建模*    

    图聚类综述  

>Lee, C., & Wilkinson, D. J. (2019). A Review of Stochastic Block Models and Extensions for Graph Clustering. <http://arxiv.org/abs/1903.00114>.   

近十年，基于模型的图形聚类（又叫块建模）取得迅速发展；本文对不同的图类型、聚类方法、推理方法及是否需要指定聚类个数进行了总结和比较；同时，也回顾了无监督文本学习（又叫主题建模），这两个领域密切相关；   

#### [4. 逻辑回归的复杂度](http://cn.arxiv.org/abs/1903.00386)  
发表时间：2019-03-01   
*标签：模型复杂度，逻辑回归，贝叶斯模型选择*      

>Bulso, N., Marsili, M., & Roudi, Y. (n.d.). On the complexity of logistic regression models. <http://arxiv.org/abs/1903.00386>.   

**发现**：我们发现，针对二进制输入的逻辑回归模型，其复杂度不仅和参数两有关，而且收输入数据的分布影响；这种影响也无法受常规复杂度处理策略的控制；  

**研究**：  
1. 推导了复杂度的上下界；  
2. 发现模型的参数应该定义在有限范围内；  
3. 复杂度和域的大小关系很大；  

**设想**：  
提出模型选择时需考虑输入分布的想法；  

**实验**：  
1. 为了验证设想，我们利用贝叶斯选择框架对逻辑回归的输入变量进行选择；得到的模型的重建误差最小；   
2. 用分类代替二分类，得到的时间复杂度也很低；  
3. 在 13 keys to the White House 数据集上进行了实验；  


## 自然语言处理
#### [5. 结合端到端语音识别模型进行情感识别](http://cn.arxiv.org/abs/1902.11245)  
发表时间：2019-02-28   
*标签：情感识别，语音识别*    

>Lakomkin, E., Zamani, M. A., Weber, C., Magg, S., & Wermter, S. (2019). Incorporating End-to-End Speech Recognition Models for Sentiment Analysis. <http://arxiv.org/abs/1902.11245>.   


**背景**：视觉、听觉和文本的结合对于情感识别很有帮助，但是转录文本丢失了很多信息；   
**方案**：我们提出了结合语音识别网络和字符是识别的 RNN 网络；   
**结果**：仅使用我们模型中的语音识别模块，就已经达到了目前语音识别模型的最佳程度——73.6%；加上 RNN 后，在 Multimodal Corpus of Sentiment Intensity (MOSI) 数据集上达到了 80.4%，RNN 的加入至少可以提高 2%；    


#### [6. 无需 SoftMax 层的高效上下文表示学习](http://cn.arxiv.org/abs/1902.11269)  
发表时间：2019-02-28   
*标签：词嵌入，降维*    

>Harold Li, L., Chen, P. H., Hsieh, C.-J., & Chang, K.-W. (2019). Efficient Contextual Representation Learning Without Softmax Layer. <http://arxiv.org/abs/1902.11269>.    

**背景**：语言模型因参数量大而难以训练，经分析后发现责任主要在 SoftMax 层；   
**方案**：去掉 SoftMax 层，使用预训练的词嵌入和降维；   
**结果**：在 ELMo 应用中，我们的方案运行时间降低到了 1/4，训练参数减少了 80%；精度也尚可；   


## 音频
#### [7. 面向音乐任务的通用神经网络](http://cn.arxiv.org/abs/1903.00142)  
发表时间：2019-03-01   
*标签：音乐信息检索（MIR），音乐合成，WaveNet，GAN*    

    在音乐合成中首次应用 GAN   

>Spratley, S., Beck, D., & Cohn, T. (2019). A Unified Neural Architecture for Instrumental Audio Tasks. <http://arxiv.org/abs/1903.00142>.   


**背景**：在音乐信息检索（MIR）中常见的任务有高音跟踪、音源分离、超分辨率及音频合成，他们都有独立的处理方法；  
**方案**：提炼这些任务的共同之处，并借鉴条件生成对抗网络（cGANs，在图像到图像的翻译任务中很通用），我们提出了一个监督网络，可以处理上述所有任务；由 WaveNet 和 cGANs 组成；   
**贡献**：提出了首个 GAN 网络来指导音乐合成；     


#### [8. KT-Speech-Crawler: 爬取 YouTube 视频自动生成语音识别数据集](http://cn.arxiv.org/abs/1903.00216)  
发表时间：2019-03-01   
*标签：语音识别，数据集，自动标注*    

    音频爬取及标注     

>Lakomkin, E. (2018). KT-Speech-Crawler : Automatic Dataset Construction for Speech Recognition from YouTube Videos, 90–95. <http://arxiv.org/abs/1903.00216>.   


爬取 YouTube 的视频，并进行过滤和后处理；一天之内可以爬取 150 小时的音频；
**demo**： <http://emnlp-demo.lakomkin.me/>  
**爬虫**：<https://github.com/EgorLakomkin/KTSpeechCrawler>   

#### [9. 使用 CNN 进行鼓声数据增强](http://cn.arxiv.org/abs/1903.01416)  
发表时间：2019-03-04   
*标签：鼓声，乐器，数据增强，CNN，深度学习*         

>Jacques, C., & A. Roebel. (2018). Automatic Drum Transcription with Convolutional Neural Networks. <http://arxiv.org/abs/1903.01416>.   

**问题**：缺乏标注数据是深度学习中常见的难题；    
**贡献**：使用 CNN 进行鼓点数据增强；调研了其他增强算法；    
