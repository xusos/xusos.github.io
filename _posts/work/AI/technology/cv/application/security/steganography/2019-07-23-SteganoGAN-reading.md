---
layout: article
title:  "「论文解读」SteganoGAN: High Capacity Image Steganography with GANs"
date:   2019-07-23 10:00:40 +0800
key: SteganoGAN-reading-20190723
aside:
  toc: true
category: [AI, CV, security, digital_watermarking, paper_reading]
---
<span id='head'></span>

>
论文发表时间：2019-01-12  
论文地址：<https://arxiv.org/abs/1901.03892>  
文档: <https://dai-lab.github.io/SteganoGAN/>  
官方代码：(pytorch) <https://github.com/DAI-Lab/SteganoGAN>   

<!--more-->

# 1 一句话总结文章
GAN 实现往图像上打水印（图像）的操作；   

# 2 方案
前导知识：`深度学习基本知识`，`CNN`，`GAN`， `3D`     

## 2.1 模型结构
<center class="half">
  <img src="/assets/images/cv/info_security/steganography/SteganoGAN/net.png"/>&emsp;<br>图1：网络结构   
</center>
其中编码器可以是[编码器结构](#encoder)中任意一种；   

# 3 损失函数



# 4 实验
## 4.1 数据集

## 4.2 实验结果



### 4.2.1 精度


### 4.2.2 速度


# 5 思考



# 6 总结



-------------------  
[End](#head)
{:.warning}  

# 附录
## A 基础
<span id="encoder">**1. 编码器结构**</span>
<center class="half">
  <img src="/assets/images/cv/info_security/steganography/SteganoGAN/basic_encoder.png"/>&emsp;<br>图3：基本编码网络<br><img src="/assets/images/cv/info_security/steganography/SteganoGAN/res_encoder.png"/>&emsp;<br>图4：残差编码网络<br><img src="/assets/images/cv/info_security/steganography/SteganoGAN/dense_encoder.png"/>&emsp;<br>图5：Dense 编码网络   
</center>
