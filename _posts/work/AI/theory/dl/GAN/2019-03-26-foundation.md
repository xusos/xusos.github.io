---
layout: article
title:  "「DL」 GAN 资源汇总"
date:   2019-03-26 11:08:40 +0800
key: gan-foundation-20190326
aside:
  toc: true
category: [AI, DL, GAN]
sidebar:
  nav: GAN
tags: 资源
---
<span id='head'></span>  

<!--more-->

<center class="half">
  <img src="/assets/images/AI/dl/GAN/GAN-trend.png" /><br>图1：GAN 的 论文数量&emsp;
</center>

# 1 学术
>第一篇论文

1. :o: [Generative Adversarial Nets](http://cn.arxiv.org/abs/1406.2661)    
*2014-06-10* [Paper](https://arxiv.org/abs/1406.2661) | [Code](https://github.com/goodfeli/adversarial)     

## 1.1 综述
1. :o: Goodfellow I. [NIPS 2016 tutorial: generative adversarial networks](http://cn.arxiv.org/abs/1701.00160). arXiv preprint [arXiv: 1701.00160](http://cn.arxiv.org/abs/1701.00160), 2016.    
2016-12-31  

1. [How Generative Adversarial Networks and its variants Work: An Overview of GAN](http://cn.arxiv.org/abs/1711.05914)   
2017-11 [Paper](http://cn.arxiv.org/abs/1711.05914), [中文笔记](https://www.jiqizhixin.com/articles/2019-03-19-12?from=synced&keyword=GAN)   

1. [生成式对抗网络 GAN 的研究进展与展望](http://www.aas.net.cn/CN/10.16383/j.aas.2017.y000003)   
2017 中科院自动化所，中文综述；   


## 1.2 理论

1.  [Energy-based generative adversarial network](http://cn.arxiv.org/abs/1609.03126)   
[Code](https://github.com/buriburisuri/ebgan)  
Lecun paper   

1.  [Improved Techniques for Training GANs](http://cn.arxiv.org/abs/1606.03498)    
[Code](https://github.com/openai/improved-gan)  
Goodfellow's paper  

1.  [Mode Regularized Generative Adversarial Networks](https://openreview.net/pdf?id=HJKkY35le)    
Yoshua Bengio , ICLR 2017   

1.  [Improving Generative Adversarial Networks with Denoising Feature Matching](https://openreview.net/pdf?id=S1X7nhsxl)   
[Code](https://github.com/hvy/chainer-gan-denoising-feature-matching)   
Yoshua Bengio , ICLR 2017   

1.  [Sampling Generative Networks](http://cn.arxiv.org/abs/1609.04468)   
[Code](https://github.com/dribnet/plat)   

1.  [How to train Gans](https://github.com/soumith/ganhacks#authors)   

1.  [Towards Principled Methods for Training Generative Adversarial Networks](http://openreview.net/forum?id=Hk4_qw5xe)    
ICLR 2017    

1.  [Unrolled Generative Adversarial Networks](http://cn.arxiv.org/abs/1611.02163)     
[Code](https://github.com/poolio/unrolled_gan)   
ICLR 2017   

1.  [Least Squares Generative Adversarial Networks](http://cn.arxiv.org/abs/1611.04076)    
[Code](https://github.com/pfnet-research/chainer-LSGAN)   
ICCV 2017   

1.  [Wasserstein GAN](http://cn.arxiv.org/abs/1701.07875)   
[Code](https://github.com/martinarjovsky/WassersteinGAN)   

1.  [Improved Training of Wasserstein GANs](http://cn.arxiv.org/abs/1704.00028)   
[Code](https://github.com/igul222/improved_wgan_training)   
The improve of wgan    

1.  [Towards Principled Methods for Training Generative Adversarial Networks](http://cn.arxiv.org/abs/1701.04862)   

1.  [Generalization and Equilibrium in Generative Adversarial Nets](http://cn.arxiv.org/abs/1703.00573)   
ICML 2017   

1.  [GANs Trained by a Two Time-Scale Update Rule Converge to a Local Nash Equilibrium](http://cn.arxiv.org/abs/1706.08500)  
[Code](https://github.com/bioinf-jku/TTUR)   

1.  [Spectral Normalization for Generative Adversarial Networks](https://openreview.net/forum?id=B1QRgziT-)    
[Code](https://github.com/minhnhat93/tf-SNDCGAN)   
ICLR 2018

1.  [Which Training Methods for GANs do actually Converge](http://cn.arxiv.org/abs/1801.04406)    
[Code](https://github.com/LMescheder/GAN_stability)   
ICML 2018   

1.  [Self-Supervised Generative Adversarial Networks](http://cn.arxiv.org/abs/1811.11212)  
[Code](https://github.com/google/compare_gan)   
CVPR 2019   

1. [Generative Flow via Invertible nxn Convolution](https://arxiv.org/abs/1905.10170)  
*2019-05-24* [paper](https://arxiv.org/abs/1905.10170)   


## 1.3 经典网络
1. [StarGAN: Unified Generative Adversarial Networks for Multi-Domain Image-to-Image Translation](http://cn.arxiv.org/abs/1711.09020)       
*2017-11-24* [paper](https://arxiv.org/abs/1711.09020) | [pytorch](https://github.com/yunjey/StarGAN)      
多领域图像转换     
<span id="DCGAN"> </span>
1.  [Unsupervised Representation Learning with Deep Convolutional Generative Adversarial Networks](http://cn.arxiv.org/abs/1511.06434)      
ICLR 2015 *2015-11-19* [Theano](https://github.com/Newmu/dcgan_code) | [Keras](https://github.com/jacobgil/keras-dcgan) | [Pytorch](https://github.com/pytorch/examples/tree/master/dcgan) | [Pytorch-MNIST/CelebA](https://github.com/znxlwm/pytorch-MNIST-CelebA-GAN-DCGAN) | [Tensorflow](https://github.com/carpedm20/DCGAN-tensorflow) | [Torch](https://github.com/soumith/dcgan.torch)     
DCGAN    
将卷积网络引入 GAN 中，且使用了 BN，证明了池化在 GAN 中不能使用；提供了许多有趣的生成结果；     

## 1.4 模型评估
1. [An empirical study on evaluation metrics of generative adversarial networks](http://cn.arxiv.org/abs/1806.07755)    
*2018-06* [paper](https://arxiv.org/abs/1806.07755)   


1. [Pros and cons of gan evaluation measures](http://cn.arxiv.org/abs/1801.03446)    
*2018-02* [paper](https://arxiv.org/abs/1801.03446)       

1. [How good is my GAN?](http://cn.arxiv.org/abs/1807.09499)     
ECCV 2018 *2018-07* [paper](https://arxiv.org/abs/1807.09499)   

## 1.5 不确定性
>GAN 生成图像的不确定性——不连贯；     

1. [Visual Indeterminacy in Generative Neural Art](http://cn.arxiv.org/abs/1910.04639)     
NIPS 2019 workshop *2019-10-10* [paper](https://arxiv.org/abs/1910.04639)     

# 2 技术应用

## 2.1 半监督学习

1.  [Adversarial Training Methods for Semi-Supervised Text Classification](http://cn.arxiv.org/abs/1605.07725)  
[Note](https://github.com/dennybritz/deeplearning-papernotes/blob/master/notes/adversarial-text-classification.md)   
 Ian Goodfellow Paper   

1.  [Improved Techniques for Training GANs](http://cn.arxiv.org/abs/1606.03498)  
[Code](https://github.com/openai/improved-gan)   
Goodfellow's paper

1.  [Unsupervised and Semi-supervised Learning with Categorical Generative Adversarial Networks](http://cn.arxiv.org/abs/1511.06390)   
ICLR   

1.  [Semi-Supervised QA with Generative Domain-Adaptive Nets](http://cn.arxiv.org/abs/1701.02206)   
ACL 2017  

1.  [Good Semi-supervised Learning that Requires a Bad GAN](http://cn.arxiv.org/abs/1705.09783)  
[Code](https://github.com/kimiyoung/ssl_bad_gan)  
NIPS 2017  

## 2.2 集成学习

1.  [AdaGAN: Boosting Generative Models](http://cn.arxiv.org/abs/1701.02386)    
[Code]
Google Brain  

1.  [GP-GAN: Towards Realistic High-Resolution Image Blending](http://cn.arxiv.org/abs/1703.07195)  
[Code](https://github.com/wuhuikai/GP-GAN)   


## 2.3 条件对抗

1.  [Conditional Generative Adversarial Nets](http://cn.arxiv.org/abs/1411.1784)  
[Code](https://github.com/zhangqianhui/Conditional-Gans)   

1.  [InfoGAN: Interpretable Representation Learning by Information Maximizing Generative Adversarial Nets](http://cn.arxiv.org/abs/1606.03657)  
[Code](https://github.com/buriburisuri/supervised_infogan)  [Code](https://github.com/openai/InfoGAN)   

1.  [Conditional Image Synthesis With Auxiliary Classifier GANs](http://cn.arxiv.org/abs/1610.09585)   
[Code](https://github.com/buriburisuri/ac-gan)   
GoogleBrain ICLR 2017

1.  [Pixel-Level Domain Transfer](http://cn.arxiv.org/abs/1603.07442v2)  
[Code](https://github.com/fxia22/pldtgan)   

1.  [Invertible Conditional GANs for image editing](http://cn.arxiv.org/abs/1611.06355)  
[Code](https://github.com/Guim3/IcGAN)   

1.  [Plug & Play Generative Networks: Conditional Iterative Generation of Images in Latent Space](http://cn.arxiv.org/abs/1611.00005v1)  
[Code](https://github.com/Evolving-AI-Lab/ppgn)   



1. [Lifelong GAN: Continual Learning for Conditional Image Generation](http://cn.arxiv.org/abs/1907.10107)    
ICCV 2019 *2019-07-23* [paper](https://arxiv.org/abs/1907.10107)     


## 2.4 强化学习

1.  [Connecting Generative Adversarial Networks and Actor-Critic Methods](http://cn.arxiv.org/abs/1610.01945)   
NIPS 2016 workshop  

## 2.5 RNN

1.  [C-RNN-GAN: Continuous recurrent neural networks with adversarial training](http://cn.arxiv.org/abs/1611.09904)  
[Code](https://github.com/olofmogren/c-rnn-gan)   

1.  [SeqGAN: Sequence Generative Adversarial Nets with Policy Gradient](http://cn.arxiv.org/abs/1609.05473)   
[Code](https://github.com/LantaoYu/SeqGAN)(AAAI 2017)


## 2.6 离散分布生成

1.  [Maximum-Likelihood Augmented Discrete Generative Adversarial Networks](http://cn.arxiv.org/abs/1701.07983v1)   

1.  [Boundary-Seeking Generative Adversarial Networks](http://cn.arxiv.org/abs/1701.08431)   

1.  [GANS for Sequences of Discrete Elements with the Gumbel-softmax Distribution](http://cn.arxiv.org/abs/1611.04051)  

# 3 业务
## 3.1 CV
#### 3.1.1 高质量生成

##### 3.1.1.1 [通用图像生成资源](/ai/cv/image_generation/2019/03/29/foundation.html)
##### 3.1.1.2 [人脸生成](/ai/cv/human/face_generation/2019/10/09/foundation.html)
##### 3.1.1.3 [人脸编辑](/ai/cv/human/facial_attribute_editing/2019/10/09/foundation.html)
##### 3.1.1.4 [季节变换](/ai/cv/nature/season_translation/2020/01/02/foundation.html)
##### 3.1.1.5 [风格迁移资源](/ai/cv/style_transfer/2020/02/18/foundation.html)
##### 3.1.1.6 其他
1.  [Generative Adversarial Text to Image Synthesis](http://cn.arxiv.org/abs/1605.05396)  
[Code](https://github.com/reedscot/icml2016)  [Code](https://github.com/paarthneekhara/text-to-image)   

1.  [Improved Techniques for Training GANs](http://cn.arxiv.org/abs/1606.03498)   
[Code](https://github.com/openai/improved-gan)   
Goodfellow's paper  

1.  [Plug & Play Generative Networks: Conditional Iterative Generation of Images in Latent Space](http://cn.arxiv.org/abs/1611.00005v1)    
[Code](https://github.com/Evolving-AI-Lab/ppgn)   

1.  [StackGAN: Text to Photo-realistic Image Synthesis with Stacked Generative Adversarial Networks](http://cn.arxiv.org/abs/1611.03242)  
*2016-11-10* [paper](https://arxiv.org/abs/1611.03242) | [tensorflow](https://github.com/hanzhanggit/StackGAN) | [pytorch](https://github.com/hanzhanggit/StackGAN-Pytorch) | [v2-pytorch](https://github.com/hanzhanggit/StackGAN-v2)    
StackGAN:     

1.  [Improved Training of Wasserstein GANs](http://cn.arxiv.org/abs/1704.00028)     
[Code](https://github.com/igul222/improved_wgan_training)   

1.  [Boundary Equibilibrium Generative Adversarial Networks Implementation in Tensorflow](http://cn.arxiv.org/abs/1703.10717)   
[Code](https://github.com/artcg/BEGAN)   

1.  [Progressive Growing of GANs for Improved Quality, Stability, and Variation](http://research.nvidia.com/publication/2017-10_Progressive-Growing-of)  
[Code](https://github.com/tkarras/progressive_growing_of_gans)[[Tensorflow Code]](https://github.com/zhangqianhui/PGGAN-tensorflow)   

1.  [ Self-Attention Generative Adversarial Networks ](http://cn.arxiv.org/abs/1805.08318)  
[Code](https://github.com/heykeetae/Self-Attention-GAN)  
NIPS 2018  

1.  [Large Scale GAN Training for High Fidelity Natural Image Synthesis](http://cn.arxiv.org/abs/1809.11096)   
ICLR 2019   

1.  [A Style-Based Generator Architecture for Generative Adversarial Networks](http://cn.arxiv.org/pdf/1811.04948)  
[Code](https://github.com/NVlabs/stylegan)  

1. [Dilated Spatial Generative Adversarial Networks for Ergodic Image Generation](http://cn.arxiv.org/abs/1905.08613)   
*2019-05-15* [paper](https://arxiv.org/abs/1905.08613)    
膨胀卷积助力边缘清晰；    

1. [Variational Hetero-Encoder Randomized Generative Adversarial Networks for Joint Image-Text Modeling](http://cn.arxiv.org/abs/1905.08622)   
*2019-05-18* [paper](https://arxiv.org/abs/1905.08622) | [OpenReview](https://openreview.net/forum?id=S1eX-nA5KX)      


#### 3.1.2 检测

1.  [Perceptual generative adversarial networks for small object detection](http://cn.arxiv.org/abs/1706.05274v2)  
CVPR 2017  

1.  [A-Fast-RCNN: Hard Positive Generation via Adversary for Object Detection](http://abhinavsh.info/papers/pdfs/adversarial_object_detection.pdf)  
[Code](https://github.com/xiaolonw/adversarial-frcnn)  
CVPR 2017

#### 3.1.3 分类&识别

1. [Generative OpenMax for Multi-Class Open Set Classification](http://cn.arxiv.org/abs/1707.07418)   
BMVC 2017   

1. [Controllable Invariance through Adversarial Feature Learning](http://cn.arxiv.org/abs/1705.11122)  
[Code](https://github.com/github-pengge/adversarial_invariance_feature_learning)   
NIPS 2017

1. [Unlabeled Samples Generated by GAN Improve the Person Re-identification Baseline in vitro](http://cn.arxiv.org/abs/1701.07717)  
[Code](https://github.com/layumi/Person-reID_GAN)   
ICCV2017  

1. [Learning from Simulated and Unsupervised Images through Adversarial Training](http://cn.arxiv.org/abs/1611.07828)  
[Code](https://github.com/carpedm20/simulated-unsupervised-tensorflow)（Apple paper, CVPR 2017 Best Paper）

#### 3.1.4 数据增强
1. [LiDAR Sensor modeling and Data augmentation with GANs for Autonomous driving](http://cv.arxiv.org/abs/1905.07290)   
ICML Workshop on AI for Autonomous Driving 2019 *2019-05-17* [paper](https://arxiv.org/abs/1905.07290)   

#### 3.1.5 显著性检测
`Saliency Prediction`    

1. [SalGAN: Visual Saliency Prediction with Generative Adversarial Networks](http://cn.arxiv.org/abs/1701.01081)  
*2017-01-04* [paper](https://arxiv.org/abs/1701.01081) | [theano](https://github.com/imatge-upc/saliency-salgan-2017)   

#### 3.1.6 检索
1. [IRGAN: A Minimax Game for Unifying Generative and Discriminative Information Retrieval Models](http://cn.arxiv.org/abs/1705.10513)     
*2017-05-30* [paper](https://arxiv.org/abs/1705.10513)    
IRGAN:     


#### 3.1.7 异常检测
`Anomaly Detection`    

1.  [Unsupervised Anomaly Detection with Generative Adversarial Networks to Guide Marker Discovery](http://cn.arxiv.org/abs/1703.05921)   
IPMI 2017 *2017-03-17* [paper](https://arxiv.org/abs/1703.05921)    
医疗；    

## 3.2 视频
#### 3.2.1 视频生成

1.  [Deep multi-scale video prediction beyond mean square error](http://cn.arxiv.org/abs/1511.05440)  
[Code](https://github.com/dyelax/Adversarial_Video_Generation)  
Yann LeCun's paper   

1.  [Generating Videos with Scene Dynamics](http://cn.arxiv.org/abs/1609.02612)   
[Web](http://web.mit.edu/vondrick/tinyvideo/)  [Code](https://github.com/cvondrick/videogan)  

1.  [MoCoGAN: Decomposing Motion and Content for Video Generation](http://cn.arxiv.org/abs/1707.04993)   


## 3.3 NLP
#### 3.3.1 图像翻译

1.  [UNSUPERVISED CROSS-DOMAIN IMAGE GENERATION](http://cn.arxiv.org/abs/1611.02200)  
[Code](https://github.com/yunjey/domain-transfer-network)  

1. [Image-to-image translation using conditional adversarial nets](http://cn.arxiv.org/pdf/1611.07004v1.pdf)  
[Code](https://github.com/phillipi/pix2pix)   
[Code](https://github.com/yenchenlin/pix2pix-tensorflow)  

1. [Learning to Discover Cross-Domain Relations with Generative Adversarial Networks](http://cn.arxiv.org/abs/1703.05192)  
[Code](https://github.com/carpedm20/DiscoGAN-pytorch)  
<span id="CycleGAN"> </span>
1. [Unpaired Image-to-Image Translation using Cycle-Consistent Adversarial Networks](http://cn.arxiv.org/abs/1703.10593)  
ICCV 2017 *2017-03-30* [paper](https://arxiv.org/abs/1703.10593) | [torch](https://github.com/junyanz/CycleGAN)-official | [pytorch](https://github.com/junyanz/pytorch-CycleGAN-and-pix2pix)-official | [project](https://junyanz.github.io/CycleGAN/) | [blog](https://blog.csdn.net/hhy_csdn/article/details/82913776)           
CycleGAN    

1.  [CoGAN: Coupled Generative Adversarial Networks](http://cn.arxiv.org/abs/1606.07536)  
[Code](https://github.com/andrewliao11/CoGAN-tensorflow)  
NIPS 2016  

1.  [Unsupervised Image-to-Image Translation with Generative Adversarial Networks](http://cn.arxiv.org/pdf/1701.02676.pdf)   
NIPS 2017  

1.  [Unsupervised Image-to-Image Translation Networks](http://cn.arxiv.org/abs/1703.00848)   

1.  [Triangle Generative Adversarial Networks](http://cn.arxiv.org/abs/1709.06548)  

1.  [High-Resolution Image Synthesis and Semantic Manipulation with Conditional GANs](http://cn.arxiv.org/abs/1711.11585)    
[Code](https://github.com/NVIDIA/pix2pixHD)  
掩码转图像；    

1.  [XGAN: Unsupervised Image-to-Image Translation for Many-to-Many Mappings](http://cn.arxiv.org/abs/1711.05139)   
Reviewed

1.  [UNIT: UNsupervised Image-to-image Translation Networks](http://cn.arxiv.org/abs/1703.00848)  
[Code](https://github.com/mingyuliutw/UNIT)  
NIPS 2017  

1.  [Toward Multimodal Image-to-Image Translation](http://cn.arxiv.org/abs/1711.11586)  
[Code](https://github.com/junyanz/BicycleGAN)
NIPS 2017

1.  [Multimodal Unsupervised Image-to-Image Translation](http://cn.arxiv.org/abs/1804.04732)  
[Code](https://github.com/nvlabs/MUNIt)   

1.  [Video-to-Video Synthesis](https://tcwang0509.github.io/vid2vid/)   
[Code](https://github.com/NVIDIA/vid2vid)  

1.  [Everybody Dance Now](http://cn.arxiv.org/abs/1808.07371)  
[Code](https://github.com/nyoki-mtl/pytorch-EverybodyDanceNow)  

1.  [GestureGAN for Hand Gesture-to-Gesture Translation in the Wild](http://cn.arxiv.org/abs/1808.04859)  
[Code](https://github.com/Ha0Tang/GestureGAN)  

1.  [Art2Real: Unfolding the Reality of Artworks via Semantically-Aware Image-to-Image Translation](http://cn.arxiv.org/abs/1811.10666)   
CVPR 2019   

1. [Fonts-2-Handwriting: A Seed-Augment-Train framework for universal digit classification](https://arxiv.org/abs/1905.08633)   
ICLR 2019 *2019-05-16* [paper](https://arxiv.org/abs/1905.08633) | [code](https://github.com/unifyid-labs/DeepGenStruct-Notebooks)       
手写数字生成；   

1. [Toward Learning a Unified Many-to-Many Mapping for Diverse Image Translation](https://arxiv.org/abs/1905.08766)   
*2019-05-21* [paper](https://arxiv.org/abs/1905.08766)    

## 3.4 音频
#### 3.4.1 MUSIC

1.  [MidiNet: A Convolutional Generative Adversarial Network for Symbolic-domain Music Generation using 1D and 2D Conditions](http://cn.arxiv.org/abs/1703.10847)  
[HOMEPAGE](https://richardyang40148.github.io/TheBlog/midinet_arxiv_demo.html)  


## 3.5 多模态
#### 3.5.1 融合
1. [M3D-GAN: Multi-Modal Multi-Domain Translation with Universal Attention](http://cn.arxiv.org/abs/1907.04378)   
*2019-07-09* [paper](https://arxiv.org/abs/1907.04378)   

#### 3.5.2 语义图转照片
1. [S-Flow GAN](http://cn.arxiv.org/abs/1905.08474)   
*2019-05-21* [paper](https://arxiv.org/abs/1905.08474)    

# 4 其他
1. [Deep Generative Image Models using a Laplacian Pyramid of Adversarial Networks](http://cn.arxiv.org/abs/1506.05751)  
*2015-01-18* [paper](https://arxiv.org/abs/1506.05751) | [torch](https://github.com/facebook/eyescream)    

1. [Adversarial Autoencoders](http://cn.arxiv.org/abs/1511.05644)  
*2015-11-18* [paper](https://arxiv.org/abs/1511.05644) | [chainer](https://github.com/musyoku/adversarial-autoencoder)    

1. [Generating Images with Perceptual Similarity Metrics based on Deep Networks](http://cn.arxiv.org/abs/1601.02644)   
*2016-02-08* [paper](https://arxiv.org/abs/1602.02644) | [tensorflow](https://github.com/shijx12/DeepSim)        
**DeepSim**   

1. [Generating images with recurrent adversarial networks](http://cn.arxiv.org/abs/1601.05110)  
*2016-02-16* [paper](https://arxiv.org/abs/1602.05110) | [theano](https://github.com/ofirnachum/sequence_gan)    
**GRAN**    

1. [Generative Visual Manipulation on the Natural Image Manifold](http://cn.arxiv.org/abs/1609.03552)  
ECCV 2016 *2016-09-12* [paper](https://arxiv.org/abs/1609.03552) | [theano](https://github.com/junyanz/iGAN)    
**iGAN**    

1. [Learning What and Where to Draw](http://cn.arxiv.org/abs/1610.02454)     
NIPS 2016 *2016-10-08* [paper](https://arxiv.org/abs/1610.02454) | [torch](https://github.com/reedscot/nips2016)    

1. [Adversarial Training for Sketch Retrieval](http://cn.arxiv.org/abs/1607.02748)   
ECCV 2016 *2016-07-10* [paper](https://arxiv.org/abs/1607.02748)      

1. [Generative Image Modeling using Style and Structure Adversarial Networks](http://cn.arxiv.org/abs/1603.05631)  
*2016-03-17* [paper](https://arxiv.org/abs/1603.05631) | [torch](https://github.com/xiaolonw/ss-gan)    

1. [Synthesizing the preferred inputs for neurons in neural networks via deep generator networks](http://cn.arxiv.org/abs/1605.09304)   
NIPS *2016-05-30* [paper](https://arxiv.org/abs/1605.09304) | [caffe](https://github.com/Evolving-AI-Lab/synthesizing) | [project](http://www.evolvingai.org/synthesizing)   
**synthesizing**    

1. [Adversarial Feature Learning](http://cn.arxiv.org/abs/1605.09782)  
ICLR 2017 *2016-05-31* [paper](https://arxiv.org/abs/1605.09782)   

1. [Adversarially Learned Inference](http://cn.arxiv.org/abs/1606.00704)   
*2016-06-02* [paper](https://arxiv.org/abs/1606.00704) | [theano](https://github.com/IshmaelBelghazi/ALI)    
**ALI**    

1. [Generative Adversarial Networks as Variational Training of Energy Based Models](http://www.mathpubs.com/detail/1611.01799v1/Generative-Adversarial-Networks-as-Variational-Training-of-Energy-Based-Models)   
ICLR 2017 *2016-11-06* [paper](https://arxiv.org/abs/1611.01799) | [theano](https://github.com/Shuangfei/vgan)-offical    



-------------------  
[End](#head)
{:.warning}  

# 附录
## A 数据集

## B 研究员
1. [Ian Goodfellow](http://www.iangoodfellow.com/)   
1. [GAN 汇总](https://blog.csdn.net/love666666shen/article/details/74953970)   
1. [Awesome Adversarial Machine Learning](https://github.com/yenchenlin/awesome-adversarial-machine-learning)   
1. [TaehoonKim github](https://github.com/carpedm20/)    
1. [Kuntal Ganguly](https://github.com/Kuntal-G)    
1. [Adversarial network](http://www.inference.vc/)(inFERENCe)   
1. [InfoGan](http://www.inference.vc/infogan-variational-bound-on-mutual-information-twice/)   
1. [Deconvolution and Image Generation](http://distill.pub/2016/deconv-checkerboard/)   
1. [Gan theory](http://www.yingzhenli.net/home/blog/?p=421http://www.yingzhenli.net/home/blog/?p=421)(yingzhenli)   
1. [Generative model](https://openai.com/blog/generative-models/)(OpenAI)   


## C 报告
1. [Ian Goodfellow 演讲](http://www.iangoodfellow.com/slides/)  
1. [OpenAI](https://openai.com/blog/generative-models/)   


## D 参考资料
#### a 论文
1. [GAN Zoo](https://github.com/hindupuravinash/the-gan-zoo)
汇总了所有的 GANs；   

1. [AdversarialNetsPapers](https://github.com/zhangqianhui/AdversarialNetsPapers)   
GANs 论文分类汇总；   

1. [GAN Timeline](https://github.com//dongb5/GAN-Timeline)   
GANs 项目汇总；   

1. [GAN 论文汇总(韩东)](https://handong1587.github.io/deep_learning/2015/10/09/gan.html)    

#### b 代码
1. [GANotebooks](https://github.com/tjwei/GANotebooks)   

1. [generative-models](https://github.com/wiseodd/generative-models)   
pytorch 和 tensorflow 实现的 GAN 和 VAE；   


#### c 技能

1. **GAN 训练技巧**
[How to Train a GAN?](https://github.com/soumith/ganhacks)   

#### d 书籍
<center class="half">
  <img src="/assets/images/AI/dl/GAN/BOOK/GANs-in-action.png" height="200"/>&emsp;<img src="/assets/images/AI/books/baimian_ml.jpeg" height="200"/>&emsp;<img src="/assets/images/AI/dl/GAN/BOOK/learning-GAN.png" height="200"/>&emsp;<img src="/assets/images/AI/dl/GAN/BOOK/GAN-foundation.jpeg" height="200"/>&emsp;<img src="/assets/images/AI/dl/GAN/BOOK/web-GAN.jpeg" height="200"/>&emsp;
</center>

1. **《GANs in Action》**  
`akub Langr, Vladimir Bok. GANs in Action[M]. -. 2019`  
[主页](https://www.manning.com/books/gans-in-action)   

1. **《百面机器学习》**  
`诸葛越. 百面机器学习[M]. 北京:人民邮电出版社. 2018.298-332`  

1. **《Learning GAN》·《GAN 实战生成对抗网络》**  
`Kuntal G. 著, 刘梦馨 译. GAN 实战生成对抗网络[M]. 北京:电子工业出版社, 2018.`  
[英文版本](https://github.com/Kuntal-G/Books/tree/master/Learning-Generative-Adversarial-Network)    

1. **《生成对抗网络入门指南》**  
`史丹青. 生成对抗网络入门指南[M]. 北京:机械工业出版社, 2018.`  

1. **《Web 安全之强化学习与 GAN》**  
`刘淼. Web 安全之强化学习与 GAN[M]. 北京:机械工业出版社, 2018.`    

#### e 课程
[1]. 李宏毅. 李宏毅对抗生成网络(GAN)(2018)[EB/OL]. <https://www.bilibili.com/video/av24011528?from=search&seid=14571953395351333549>.    
[课件](http://speech.ee.ntu.edu.tw/~tlkagk/courses_MLDS18.html)    
