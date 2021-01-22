---
layout: article
title:  "「CV」 数字水印资源汇总"
date:   2019-07-17 15:21:40 +0800
key: steganography-foundation-20190717
aside:
  toc: true
category: [AI, CV, security, digital_watermarking]
tags: 资源
---
<span id='head'></span>
>在不影响数字载体（包括多媒体——图片、视频、音频，文档，软件等）使用价值的情况下，将标识信息嵌入到载体中；   
数字水印侧重于水印信息的鲁棒性，隐写侧重中水印信息的隐蔽性；   

<!--more-->

<center class="half">
  <img src="/assets/images/cv/info_security/steganography/steganography.png"><br>图1：数字水印流程
</center>

`Digital Watermarking` · `Steganography`      

# 1 数字水印
## 1.1 综述
1. [Watermarking of Digital Images](https://pdfs.semanticscholar.org/6802/ff69fde342b03f54c2b26a36d277527f9154.pdf)   
*2012-06-03* [paper](https://pdfs.semanticscholar.org/6802/ff69fde342b03f54c2b26a36d277527f9154.pdf)   
$\bullet \bullet$    
关于传统算法的水印综述，内容非常全面广泛，除了没有覆盖到 DL；     
*貌似是 99 年的论文，因为原稿丢了，12 年重新出版了这个；*    

1. [A Survey of Digital Watermarking Techniques and its Applications](http://cn.arxiv.org/abs/1407.4735)   
*2014-07-17* [paper](https://arxiv.org/abs/1407.4735)    
$\bullet \bullet$ **入门**   
关于传统水印算法的总数，总共 4 页，真是短小精悍；看完会对水印有个整体认识的，非常推荐作为水印入门读物；     
>可惜了我花了两天时间要死要活地折腾出一个[Survey](/ai/cv/info_security/digital_watermarking/2019/07/17/survey.html)，要是早看到这篇，分分钟搞定，看来还是综述文章最容易入门；     

1. [Analysis of Visible and Invisible Image Watermarking – A Review](https://pdfs.semanticscholar.org/49cd/4d69855f4cc89e46385a2f3e803262100c56.pdf)   
*2016-08* [paper](https://pdfs.semanticscholar.org/49cd/4d69855f4cc89e46385a2f3e803262100c56.pdf)   
针对传统方法的综述，主讲了 DWT、DCT 和 DFT；    
>文章内容较少，不是一篇优质的 review，应该是频域水印算法回顾；    

1. [A Comprehensive Survey of Watermarking Relational Databases Research](http://cn.arxiv.org/abs/1801.08271)   
*2018-01-25* [paper](https://arxiv.org/abs/1801.08271)    
数据库和数字指纹综述；    
>似乎已经超出 CV 领域，不过也有借鉴意义，空了可以看；    


## 1.2 理论
1. [Steganography Security: Principle and Practice](http://cn.arxiv.org/abs/1806.03618)  
*2018-06-10* [paper](https://arxiv.org/abs/1806.03618)   
对比了隐写术和数字水印的安全性差异；    

## 1.3 传统方法
1. [A New Method For Digital Watermarking Based on Combination of DCT and PCA](http://cn.arxiv.org/abs/1509.03278)   
TELFOR 2014 *2015-09-10* [paper](https://arxiv.org/abs/1509.03278)   

1. [Digital image watermarking using normal matrices](http://cn.arxiv.org/abs/1506.01952)   
*2015-05-23* [paper](https://arxiv.org/abs/1506.01952)   

1. [OR-Benchmark: An Open and Reconfigurable Digital Watermarking Benchmarking Framework](http://cn.arxiv.org/abs/1506.00243)   
*2015-05-31* [paper](https://arxiv.org/abs/1506.00243)   

## 1.4 深度学习
### 1.4.1 通用
1. [Watermarking Deep Neural Networks for Embedded Systems](https://dl.acm.org/citation.cfm?id=3240862&dl=ACM&coll=DL)   
ICCAD 2018 *2018* [paper](https://dl.acm.org/citation.cfm?id=3240862&dl=ACM&coll=DL)    

1. [Turning Your Weakness Into a Strength: Watermarking Deep Neural Networks by Backdooring](http://cn.arxiv.org/abs/1802.04633)   
*2018-02-13* [paper](https://arxiv.org/abs/1802.04633)    

1. [Protecting Intellectual Property of Deep Neural Networks with Watermarking](https://gzs715.github.io/pubs/WATERMARK_ASIACCS18.pdf)    
AsiaCCS *2018* [paper](https://gzs715.github.io/pubs/WATERMARK_ASIACCS18.pdf)     

1. [On the Robustness of the Backdoor-based Watermarking in Deep Neural Networks](http://cn.arxiv.org/abs/1906.07745)   
*2019-06-18* [paper](https://arxiv.org/abs/1906.07745)   


### 1.4.2 图像

### 1.4.3 音频


### 1.4.4 视频


### 1.4.5 网络模型
>给模型打水印；    

1. [DeepSigns: An End-to-End Watermarking Framework for Protecting the Ownership of Deep Neural Networks](https://www.microsoft.com/en-us/research/uploads/prod/2018/11/2019ASPLOS_Final_DeepSigns.pdf)   
[paper](https://www.microsoft.com/en-us/research/uploads/prod/2018/11/2019ASPLOS_Final_DeepSigns.pdf)   

1. [Embedding Watermarks into Deep Neural Networks](http://cn.arxiv.org/abs/1701.04082)    
ICMR 2017 *2017-01-15* [paper](https://arxiv.org/abs/1701.04082) | [keras](https://github.com/yu4u/dnn-watermark)      

1. [Digital Watermarking for Deep Neural Networks](http://cn.arxiv.org/abs/1802.02601)   
*2018-02-06* [paper](https://arxiv.org/abs/1802.02601)   

1. [Have You Stolen My Model? Evasion Attacks Against Deep Neural Network Watermarking Techniques](http://cn.arxiv.org/abs/1809.00615)   
*2018-09-03* [paper](https://arxiv.org/abs/1809.00615)   

1. [Cryptographic key distribution over a public network via variance-based watermarking in compressive measurements](http://cn.arxiv.org/abs/1904.00049)   
*2019-03-30* [paper](https://arxiv.org/abs/1904.00049)   

1. [Effectiveness of Distillation Attack and Countermeasure on Neural Network Watermarking](http://cn.arxiv.org/abs/1906.06046)   
*2019-06-14* [paper](https://arxiv.org/abs/1906.06046)   


### 1.4.6 跨模态


# 2 隐写术
## 1.1 综述
1. [Deep Learning in steganography and steganalysis from 2015 to 2018](http://cn.arxiv.org/abs/1904.01444)   
*2019-03-31* [paper](https://arxiv.org/abs/1904.01444)    

1. [Recent Advances of Image Steganography with Generative Adversarial Networks](http://cn.arxiv.org/abs/1907.01886)   
*2019-06-18* [paper](https://arxiv.org/abs/1907.01886)   
GAN 在隐写术里的应用；    

## 2.2 理论
1. [Steganography Security: Principle and Practice](http://cn.arxiv.org/abs/1806.03618)  
*2018-06-10* [paper](https://arxiv.org/abs/1806.03618)   
对比了隐写术和数字水印的安全性差异；    

## 2.3 传统方法

## 2.4 深度学习
### 2.4.1 通用
1. [ Moving Steganography and Steganalysis from the Laboratory into the Real World](https://hal.archives-ouvertes.fr/hal-00836407/document)   
*2013-06-20* [paper](https://hal.archives-ouvertes.fr/hal-00836407/document)   
显示应用；   

1. [SSGAN: Secure Steganography Based on Generative Adversarial Networks](http://cn.arxiv.org/abs/1707.01613)   
*2017-06-06* [paper](https://arxiv.org/abs/1707.01613)   

1. [Convolutional Neural Network Steganalysis's Application to Steganography](http://cn.arxiv.org/abs/1711.02581)   
*2017-11-06* [paper](https://arxiv.org/abs/1711.02581)   

1. [Generative Steganography with Kerckhoffs' Principle based on Generative Adversarial Networks](http://cn.arxiv.org/abs/1711.04916)   
*2017-11-14* [paper](https://arxiv.org/abs/1711.04916)   

1. [CycleGAN, a Master of Steganography](http://cn.arxiv.org/abs/1712.02950)   
NIPS 2017 *2017-12-08* [paper](https://arxiv.org/abs/1712.02950)   

1. [SteganoGAN: High Capacity Image Steganography with GANs](http://cn.arxiv.org/abs/1901.03892)   
*2019-01-12* [paper](https://arxiv.org/abs/1901.03892) | [pytorch](https://github.com/DAI-Lab/SteganoGAN)-offical | [文档](https://dai-lab.github.io/SteganoGAN/)         

1. [Learning Symmetric and Asymmetric Steganography via Adversarial Training](http://cn.arxiv.org/abs/1903.05297)   
*2019-03-13* [paper](https://arxiv.org/abs/1903.05297)    

1. [BASN -- Learning Steganography with Binary Attention Mechanism](http://cn.arxiv.org/abs/1907.04362)   
*2019-07-09* [paper](https://arxiv.org/abs/1907.04362)   

1. [Steganography using a 3 player game](http://cn.arxiv.org/abs/1907.06956)   
*2019-07-14* [paper](https://arxiv.org/abs/1907.06956)   


### 2.4.2 图像
1. [Generating steganographic images via adversarial training](http://cn.arxiv.org/abs/1703.00371)    
*2017-03-01* [paper](https://arxiv.org/abs/1703.00371)   

1. [End-to-end Trained CNN Encode-Decoder Networks for Image Steganography](http://cn.arxiv.org/abs/1711.07201)   
*2017-11-20* [paper](https://arxiv.org/abs/1711.07201)   

1. [A Novel Convolutional Neural Network for Image Steganalysis with Shared Normalization](http://cn.arxiv.org/abs/1711.07306)   
*2017-11-20* [paper](https://arxiv.org/abs/1711.07306)    

1. [Deep Learning Hierarchical Representations for Image Steganalysis](https://web.njit.edu/~usman/courses/cs698_spring18/DEEP%20LEARNING.pdf)   
*2017-11* [paper](https://web.njit.edu/~usman/courses/cs698_spring18/DEEP%20LEARNING.pdf) | [pytorch](https://github.com/Caenorst/YeNet-Pytorch)      

1. [CNN Based Adversarial Embedding with Minimum Alteration for Image Steganography](http://cn.arxiv.org/abs/1803.09043)   
IEEE *2018-03-24* [paper](https://arxiv.org/abs/1803.09043)   

1. [Spatial Image Steganography Based on Generative Adversarial Network](http://cn.arxiv.org/abs/1804.07939)   
*2018-04-21* [paper](https://arxiv.org/abs/1804.07939)   

1. [StegNet: Mega Image Steganography Capacity with Deep Convolutional Network](http://cn.arxiv.org/abs/1806.06357)   
*2018-06-17* [paper](https://arxiv.org/abs/1806.06357) | [tensorflow](https://github.com/adamcavendish/Deep-Image-Steganography)-offical     

1. [Invisible Steganography via Generative Adversarial Networks](http://cn.arxiv.org/abs/1807.08571)   
*2018-07-23* [paper](https://arxiv.org/abs/1807.08571)   

1. [Efficient feature learning and multi-size image steganalysis based on CNN](http://cn.arxiv.org/abs/1807.11428)   
*2018-07-30* [paper](https://arxiv.org/abs/1807.11428)   
ZhuNet，任意尺寸输入，Inception 有效性证明；     


1. [StegoAppDB: a Steganography Apps Forensics Image Database](http://cn.arxiv.org/abs/1904.09360)   
*2019-04-19* [paper](https://arxiv.org/abs/1904.09360)   
数据集；   

1. [EncryptGAN: Image Steganography with Domain Transform](http://cn.arxiv.org/abs/1905.11582)   
*2019-05-28* [paper](https://arxiv.org/abs/1905.11582)   

### 2.4.3 音频
1. [Steganography between Silence Intervals of Audio in Video Content Using Chaotic Maps](http://cn.arxiv.org/abs/1610.04346)   
*2016-10-14* [paper](https://arxiv.org/abs/1610.04346)   
音轨中静默片段放水印；    

1. [StegIbiza: Steganography in Club Music Implemented in Python](http://cn.arxiv.org/abs/1705.07788)   
*2017-05-22* [paper](https://arxiv.org/abs/1705.07788)   

1. [AAG-Stega: Automatic Audio Generation-based Steganography](http://cn.arxiv.org/abs/1809.03463)   
AAAi 2019 *2018-09-10* [paper](https://arxiv.org/abs/1809.03463)   

1. [Hide and Speak: Deep Neural Networks for Speech Steganography](http://cn.arxiv.org/abs/1902.03083)   
*2019-02-07* [paper](https://arxiv.org/abs/1902.03083)    

1. [Heard More Than Heard: An Audio Steganography Method Based on GAN](http://cn.arxiv.org/abs/1907.04986)   
*2019-07-11* [paper](https://arxiv.org/abs/1907.04986)   


### 2.4.4 视频
1. [Convolutional Video Steganography with Temporal Residual Modeling](http://cn.arxiv.org/abs/1806.02941)   
*2018-06-08* [paper](https://arxiv.org/abs/1806.02941)   

### 2.4.5 网络模型
>给模型打水印；    

1. [DeepStego: Protecting Intellectual Property of Deep Neural Networks by Steganography](http://cn.arxiv.org/abs/1903.01743)    
*2019-03-05* [paper](https://arxiv.org/abs/1903.01743)   


### 2.4.6 跨模态
1. [Provably Secure Steganography on Generative Media](http://cn.arxiv.org/abs/1811.03732)   
*2018-11-09* [paper](https://arxiv.org/abs/1811.03732)   

# 3 攻击
1. [Fraternal Twins: Unifying Attacks on Machine Learning and Digital Watermarking](http://cn.arxiv.org/abs/1703.05561)   
*2017-03-16* [paper](https://arxiv.org/abs/1703.05561)   

1. [Attacks on Digital Watermarks for Deep Neural Networks](https://cs.uwaterloo.ca/~fkerschb/icassp19.pdf)   
*2019* [paper](https://cs.uwaterloo.ca/~fkerschb/icassp19.pdf)   


# 4 防篡改
`video tampering`     

1. [Computer-Aided Annotation for Video Tampering Dataset of Forensic Research](http://cn.arxiv.org/abs/1802.02308)     
*2018-02-07* [paper](https://arxiv.org/abs/1802.02308)     


1. [ARCHANGEL: Tamper-proofing Video Archives using Temporal Content Hashes on the Blockchain](http://cn.arxiv.org/abs/1904.12059)    
CVPR 2019 workshop *2019-04-26* [paper](https://arxiv.org/abs/1904.12059)    


-------------------  
[End](#head)
{:.warning}  

# 附录
## A 参考资料

## B 数据集

| 数据集 | 训练集（万张） | 验证集（万张） | 测试集（万张） | 分辨率 |
| --- | --- | --- | --- | --- |
| [BOSS](http://agents.fel.cvut.cz/boss/index.php?mode=VIEW&tmpl=materials) | 0.9 | 0.1 | | 512×512 |   
