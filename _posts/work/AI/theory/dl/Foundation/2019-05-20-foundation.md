---
layout: article
title:  "「DL」 深度学习基本技能资源汇总"
date:   2019-05-20 18:08:40 +0800
key: dl-foundation-20190520
aside:
  toc: true
category: [AI, DL, foundation]
tags: 资源
---
<span id='head'></span>  

<!--more-->


# 1 综述
1. [Deep Learning in Neural Networks: An Overview](http://cn.arxiv.org/abs/1404.7828)     
*2014-04-30* [paper](https://arxiv.org/abs/1404.7828)    
$\bullet \bullet$ overview   

1. [Deep Learning](https://pdfs.semanticscholar.org/425f/c05d848f0318289f496f7b5e8cad26b123f6.pdf)   
*2015* Hinton [PPT](https://pdfs.semanticscholar.org/425f/c05d848f0318289f496f7b5e8cad26b123f6.pdf)    
$\bullet \bullet$ - DL     

1. [Review of Deep Learning](http://cn.arxiv.org/abs/1804.01653)   
*2018-04-05* [paper](https://arxiv.org/abs/1804.01653)   
$\bullet \bullet$ - review   

1. [Democratisation of Usable Machine Learning in Computer Vision](http://cn.arxiv.org/abs/1902.06804)    
*2019-02-18* [paper](https://arxiv.org/abs/1902.06804)     
$\bullet \bullet$ usable

1. [A Selective Overview of Deep Learning](http://cn.arxiv.org/abs/1904.05526)       
*2019-04-10* [paper](https://arxiv.org/abs/1904.05526)    
$\bullet \bullet$ selective      
文章回答了与经典方法相比，深度学习有哪些新特征，理论基础是什么？   
从统计的角度介绍了常见的神经网络模型（例如卷积神经网络，递归神经网络，生成对抗网络）和训练技术（例如随机梯度下降，辍学，批量归一化）；并针对深度和参数化进行了解释；   

1. [A Survey on Distributed Machine Learning](http://cn.arxiv.org/abs/1912.09789)    
*2019-12-20* [paper](https://arxiv.org/abs/1912.09789)    
$\bullet \bullet$ Distributed      
分布式；    
1. [The Deep Learning Compiler: A Comprehensive Survey](https://arxiv.org/abs/2002.03794)    
*2020-02-06* [paper](https://arxiv.org/abs/2002.03794)    

# 2 基础

## 2.1 卷积
#### 2.1.1 标准卷积
1. [A guide to convolution arithmetic for deep learning](http://cn.arxiv.org/abs/1603.07285)    
*2016-03-23* [paper](https://arxiv.org/abs/1603.07285)    


#### 2.1.2 反卷积

#### 2.1.3 深度可分离卷积
1. [Network Decoupling: From Regular to Depthwise Separable Convolutions](http://cn.arxiv.org/abs/1808.05517)   
*2018-08-16* [paper](https://arxiv.org/abs/1808.05517)   

#### 2.1.4 维度卷积
1. [DiCENet: Dimension-wise Convolutions for Efficient Networks](http://cn.arxiv.org/abs/1906.03516)    
*2019-06-08* [paper](https://arxiv.org/abs/1906.03516) | [pytorch](https://github.com/sacmehta/EdgeNets)       

#### 2.1.5 形变卷积
1. [Deformable Convolutional Networks](/ai/cv/detection/2019/05/10/foundation.html#3deformable)    
ICCV 2017 oral *2017-03-17*    

#### 2.1.6 其他
1. [VarGNet: Variable Group Convolutional Neural Network for Efficient Embedded Computing](http://cn.arxiv.org/abs/1907.05653)   
*2019-07-12* [paper](https://arxiv.org/abs/1907.05653)    
在深度可分离卷积之上做了改进，使其在嵌入式设备上更易优化；    

1. [Random Shifting for CNN: a Solution to Reduce Information Loss in Down-Sampling Layers](https://www.ijcai.org/proceedings/2017/0486.pdf)    
IJCAI 2017 *2017* [paper](https://www.ijcai.org/proceedings/2017/0486.pdf)    


## 2.2 激活函数
1. [Neurons Activation Visualization and Information Theoretic Analysis](http://cn.arxiv.org/abs/1905.08618)   
*2019-05-14* [paper](https://arxiv.org/abs/1905.08618)   

## 2.3 神经网络
#### 2.3.1 神经网络
1. [Mean Field Limit of the Learning Dynamics of Multilayer Neural Networks](http://cn.arxiv.org/abs/1902.02880)   
*2019-02-07* [paper](https://arxiv.org/abs/1902.02880)   

1. [Loss Surface Modality of Feed-Forward Neural Network Architectures](http://cn.arxiv.org/abs/1905.10268)   
*2019-05-24* [paper](https://arxiv.org/abs/1905.10268)   

1. [What Can ResNet Learn Efficiently, Going Beyond Kernels?](http://cn.arxiv.org/abs/1905.10337)   
*2019-05-24* [paper](https://arxiv.org/abs/1905.10337)   

#### 2.3.2 反向传播
1. [Learning Internal Representations by Error Propagation](http://concepts.psych.wisc.edu/papers/711/RumelhartBackprop.pdf)   
*1985-09-05* Hinton [paper](http://concepts.psych.wisc.edu/papers/711/RumelhartBackprop.pdf)   

1. [Learning representations by back-propagating errors](https://www.iro.umontreal.ca/~vincentp/ift3395/lectures/backprop_old.pdf)    
*1986* Hinton [paper](https://www.iro.umontreal.ca/~vincentp/ift3395/lectures/backprop_old.pdf)     

1. [Memorized Sparse Backpropagation](http://cn.arxiv.org/abs/1905.10194)   
*2019-05-24* [paper](https://arxiv.org/abs/1905.10194)    

1. [Fully Decoupled Neural Network Learning Using Delayed Gradients](http://cn.arxiv.org/abs/1906.09108)   
*2019-06-21* [paper](https://arxiv.org/abs/1906.09108)   
延迟梯度下降：为了解决反向传播的串行执行方式；    


# 3 实践

## 3.1 初始化
1. [How to start training: The effect of initialization and architecture](http://cn.arxiv.org/abs/1803.01719)    
NIPS 2018 *2018-03-05* [paper](https://arxiv.org/abs/1803.01719)   

## 3.2 训练
#### 3.2.1 分类

1. [A Sensitivity Analysis of (and Practitioners' Guide to) Convolutional Neural Networks for Sentence Classification](http://cn.arxiv.org/abs/1510.03820)    
*2015-10-13* [paper](https://arxiv.org/abs/1510.03820)    
$\bullet \bullet \bullet \bullet \bullet$   

<span id="large_batch"> </span>
1. [Accurate, Large Minibatch SGD: Training ImageNet in 1 Hour](http://cn.arxiv.org/abs/1706.02677)    
*2017-06-08* [paper](https://arxiv.org/abs/1706.02677)    
$\bullet \bullet$ - large batch    
证明了大批次收敛困难，但是效果好；大批次的时候 SGD 和 moment 不好用；    


1. [Accelerated Training for Massive Classification via Dynamic Class Selection](http://cn.arxiv.org/abs/1801.01687)   
*2018-01-05* [paper](https://arxiv.org/abs/1801.01687)   

#### 3.2.2 检测

1. [Bag of Freebies for Training Object Detection Neural Networks](http://cn.arxiv.org/abs/1902.04103)  
*2019-02-11* [paper](https://arxiv.org/abs/1902.04103)      
$\bullet \bullet$ - freebies        
GluonCV 检测调参技巧​；    


1. [Training Object Detectors With Noisy Data](https://arxiv.org/abs/1905.07202)   
*2019-05-17* [paper](https://arxiv.org/abs/1905.07202)   
教师网络处理噪声图像；   

#### 3.2.3 其他

1. [Large Scale Distributed Deep Networks](https://www.cs.toronto.edu/~ranzato/publications/DistBeliefNIPS2012_withAppendix.pdf)   
NIPS 2012 *2012* [paper](https://www.cs.toronto.edu/~ranzato/publications/DistBeliefNIPS2012_withAppendix.pdf)   
大规模分布式训练；   


1. [Joint Training of Neural Network Ensembles](http://cn.arxiv.org/abs/1902.04422)    
*2019-02-12* [paper](https://arxiv.org/abs/1902.04422) | [pytorch](https://github.com/grey-area/modular-loss-experiments)    
模型集成及其联合训练问题；    

1. [Sequential training algorithm for neural networks](https://arxiv.org/abs/1905.07490)   
*2019-05-17* [paper](https://arxiv.org/abs/1905.07490)    
$\bullet \bullet$   
网络逐层单独训练，最终融合在一起；虽然效果不如整体训练好，但是对于算力有限情况下的大型网络训练很有帮助；   

1. [深度学习参数怎么调优，这12个trick告诉你](https://zhuanlan.zhihu.com/p/52189739)    

## 3.3 梯度爆炸
1. [On the difficulty of training Recurrent Neural Networks](http://cn.arxiv.org/abs/1211.5063)  
*2012-11-21* [paper](https://arxiv.org/abs/1211.5063)   

1. [Which Neural Net Architectures Give Rise To Exploding and Vanishing Gradients?](http://cn.arxiv.org/abs/1801.03744)   
NIPS 2018 *2018-01-11* [paper](https://arxiv.org/abs/1801.03744)     

1. [Products of Many Large Random Matrices and Gradients in Deep Neural Networks](http://cn.arxiv.org/abs/1812.05994)   
*2018-12-14* [paper](https://arxiv.org/abs/1812.05994)   
RELU 梯度问题测量；    

## 3.4 梯度消失
1. [On the difficulty of training Recurrent Neural Networks](http://cn.arxiv.org/abs/1211.5063)    
*2012-11-21* [paper](https://arxiv.org/abs/1211.5063)    

1. [Which Neural Net Architectures Give Rise To Exploding and Vanishing Gradients?](http://cn.arxiv.org/abs/1801.03744)     
NIPS 2018 *2018-01-11* [paper](https://arxiv.org/abs/1801.03744)    

## 3.5 过拟合
1. [Dropout:A Simple Way to Prevent Neural Networks from Overfitting](http://jmlr.org/papers/volume15/srivastava14a/srivastava14a.pdf)     
*2014* [paper](http://jmlr.org/papers/volume15/srivastava14a/srivastava14a.pdf) | [blog]（https://zhuanlan.zhihu.com/p/38200980       

1. [One-Step or Two-Step Optimization and the Overfitting Phenomenon: A Case Study on Time Series Classification](http://cn.arxiv.org/abs/1407.4364)   
*2014-07-16* [paper](https://arxiv.org/abs/1407.4364)   

1. [How much does your data exploration overfit? Controlling bias via information usage](http://cn.arxiv.org/abs/1511.05219)   
*2015-11-16* [paper](https://arxiv.org/abs/1511.05219)   

1. [Detecting Overfitting of Deep Generative Networks via Latent Recovery](http://cn.arxiv.org/abs/1901.03396)   
*2019-01-09* [paper](https://arxiv.org/abs/1901.03396)   

1. [Overfitting Mechanism and Avoidance in Deep Neural Networks](http://cn.arxiv.org/abs/1901.06566)   
*2019-01-19* [paper](https://arxiv.org/abs/1901.06566)   

1. [The Impact of Neural Network Overparameterization on Gradient Confusion and Stochastic Gradient Descent](http://cn.arxiv.org/abs/1904.06963)    
*2019-04-15* [paper](https://arxiv.org/abs/1904.06963)    

1. [GradMask: Reduce Overfitting by Regularizing Saliency](http://cn.arxiv.org/abs/1904.07478)   
*2019-04-16* [paper](https://arxiv.org/abs/1904.07478)   

1. [Overfitting in Synthesis: Theory and Practice](http://cn.arxiv.org/abs/1905.07457)   
*2019-05-17* [paper](https://arxiv.org/abs/1905.07457)   
$\bullet \bullet$    

1. [The advantages of multiple classes for reducing overfitting from test set reuse](http://cn.arxiv.org/abs/1905.10360)   
*2019-05-24* [paper](https://arxiv.org/abs/1905.10360)   

1. [Exploiting the Full Capacity of Deep Neural Networks while Avoiding Overfitting by Targeted Sparsity Regularization](https://arxiv.org/abs/2002.09237)     
*2020-02-21* [paper](https://arxiv.org/abs/2002.09237)     
稀疏正则避免过拟合，效果比 dropout 和 batchnorm 效果好；   

## 3.6 欠拟合

## 3.7 模型检验
>验证模型相关性，并检验过拟合和欠拟合；    

1. [Perturbed Model Validation: A New Framework to Validate Model Relevance](https://arxiv.org/abs/1905.10201)     
*2019-05-24* [paper](https://arxiv.org/abs/1905.10201)     
扰动模型验证；   


# 4 进阶
## 4.1 优化器
#### 4.1.1 综述
1. [An overview of gradient descent optimization algorithms](http://cn.arxiv.org/abs/1609.04747)   
*2016-09-15* [paper](https://arxiv.org/abs/1609.04747) | [bolg](http://ruder.io/optimizing-gradient-descent/index.html)       
博客的 paper 版；主要绍了 Batch gradient descent，Stochastic gradient descent，Mini-batch gradient descent 等方法；简洁明了的介绍了 Momentum，Nesterov accelerated gradient，Adagrad，Adadelta，RMSprop，Adam，AdaMax，Nadam 等；    

1. [A Survey of Optimization Methods from a Machine Learning Perspective](http://cn.arxiv.org/abs/1906.06821)   
*2019-06-17* [paper](https://arxiv.org/abs/1906.06821)    

#### 4.1.2 经典
1. [Two problems with backpropagation and other steepest-descent learning procedures for networks](http://incompleteideas.net/papers/sutton-86.pdf)   
*1986* [paper](http://incompleteideas.net/papers/sutton-86.pdf)   
指出SGD搜索的效率十分低下的缺陷；    

1. [Improving the convergence of back-propagation learning with second-order methods](http://yann.lecun.com/exdb/publis/pdf/becker-lecun-89.pdf)   
*1988* [paper](http://yann.lecun.com/exdb/publis/pdf/becker-lecun-89.pdf)    

1. [Acceleration of stochastic approximation by averaging](https://pdfs.semanticscholar.org/6dc6/1f37ecc552413606d8c89ffbc46ec98ed887.pdf)   
*1992-07* [paper](https://pdfs.semanticscholar.org/6dc6/1f37ecc552413606d8c89ffbc46ec98ed887.pdf)   
平均随机梯度下降；   

1. [Analysis of Natural Gradient Descent for Multilayer Neural Networks](http://cn.arxiv.org/abs/cond-mat/9901212)   
*1999-01-21* [paper](https://arxiv.org/abs/cond-mat/9901212)    

1. [On the momentum term in gradient descent learning algorithms](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.57.5612&rep=rep1&type=pdf)   
*1999* [paper](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.57.5612&rep=rep1&type=pdf)   
动量应用于SGD；    

1. [Adaptive Subgradient Methods for Online Learning and Stochastic Optimization](http://www.jmlr.org/papers/volume12/duchi11a/duchi11a.pdf)   
*2011-07* [paper](http://www.jmlr.org/papers/volume12/duchi11a/duchi11a.pdf)    
**Adagrade**：对每个参数有单独的学习速率；但是学习速度会快速下降；     

1. [ADADELTA: An Adaptive Learning Rate Method](http://cn.arxiv.org/abs/1212.5701)  
*2012-12-22* [paper](https://arxiv.org/abs/1212.5701)   
**AdadDelta**    

1. [Adam: A Method for Stochastic Optimization](http://cn.arxiv.org/abs/1412.6980)    
ICLR 2014 *2014-12-22* [paper](https://arxiv.org/abs/1412.6980)    
**Adam**：改进 RMSProp；可以为每个参数单独指定自适应学习速率，除了存储像RMSprop之类的过去梯度的平方的指数加权平均值之外，Adam还计算过去梯度的指数加权平均值，类似于动量；          

1. [Kalman-Based Stochastic Gradient Method with Stop Condition and Insensitivity to Conditioning](https://arxiv.org/abs/1512.01139)   
*2015-12-03* [paper](https://arxiv.org/abs/1512.01139)   
**kSGD**：基于卡尔曼的随机梯度下降，对超参不敏感，但是计算量太大；   

1. [Small steps and giant leaps: Minimal Newton solvers for Deep Learning](https://arxiv.org/abs/1805.08095)   
*2018-05-21* [paper](https://arxiv.org/abs/1805.08095) | [openreview](https://openreview.net/forum?id=Sygx4305KQ)     
直接替换当前使用的深度学习求解器的快速二阶方法；   

#### 4.1.2 其他

1. [No More Pesky Learning Rates](http://cn.arxiv.org/abs/1206.1106)   
*2012-06-06* [paper](https://arxiv.org/abs/1206.1106)   
自适应调整学习率；   

1. [YellowFin and the Art of Momentum Tuning](https://arxiv.org/abs/1706.03471)     
*2017-06-12* [paper](https://arxiv.org/abs/1706.03471)     
SGD 收敛慢，但是准确度比较高；    


1. [Aggregated Momentum: Stability Through Passive Damping](http://cn.arxiv.org/abs/1804.00325)   
*2018-04-01* [paper](https://arxiv.org/abs/1804.00325)   


1. [Adaptive Gradient Methods With Dynamic Bound Of Learning Rate](http://cn.arxiv.org/abs/1902.09843)   
ICLR 2019 *2019-02-26* [paper](https://arxiv.org/abs/1902.09843) | [pytorch](https://github.com/Luolc/AdaBound)-offical | [openreview](https://openreview.net/forum?id=Bkg3g2R9FX)      


#### 4.1.3 SGD
1. [Deep learning with Elastic Averaging SGD](http://cn.arxiv.org/abs/1412.6651)   
NIPS 2015 *2014-12-20* [paper](https://arxiv.org/abs/1412.6651)   

1. [Accurate, Large Minibatch SGD: Training ImageNet in 1 Hour](#large_batch)     
*2017-06-08*   
证明了大批次下 SGD 不稳定；   

1. [The Impact of Neural Network Overparameterization on Gradient Confusion and Stochastic Gradient Descent](https://arxiv.org/abs/1904.06963)   
*2019-04-15* [paper](https://arxiv.org/abs/1904.06963)   
$\bullet \bullet$ - Gradient Confusion    
SGD 对于模型收敛的影响，及相应网络结构的探索；   

1. [Time-Smoothed Gradients for Online Forecasting](http://cn.arxiv.org/abs/1905.08850)   
ICML 2019 *2019-05-21* [paper](https://arxiv.org/abs/1905.08850)   
PTS-SGD: 对学习率不敏感；计算快速；    

1. [Fine-grained Optimization of Deep Neural Networks](http://cn.arxiv.org/abs/1905.09054)   
*2019-05-22* [paper](https://arxiv.org/abs/1905.09054)   
FG-SGD:细粒度优化，确保收敛到最小值；   

1. [Momentum-Based Variance Reduction in Non-Convex SGD](http://cn.arxiv.org/abs/1905.10018)   
*2019-05-24* [paper](https://arxiv.org/abs/1905.10018)   


## 4.2 归一化
1. [Self-Normalizing Neural Networks](https://arxiv.org/abs/1706.02515)   
*2017-06-08* [Paper](https://arxiv.org/abs/1706.02515) | [tensorflow](https://github.com/bioinf-jku/SNNs) | [zhihu](https://www.zhihu.com/question/60910412) | [reddit](https://www.reddit.com/r/MachineLearning/comments/6g5tg1/r_selfnormalizing_neural_networks_improved_elu/dio0qac/)      

1. [Fixup Initialization: Residual Learning Without Normalization](http://cn.arxiv.org/abs/1901.09321)   
ICLR 2019 *2019-01-27* [paper](https://arxiv.org/abs/1901.09321) | [openreview](https://openreview.net/forum?id=H1gsz30cKX)   
归一化的理论和有效性的探讨；   

1. [ROI Regularization for Semi-supervised and Supervised Learning](http://cn.arxiv.org/abs/1905.08615)   
*2019-05-15* [paper](https://arxiv.org/abs/1905.08615)  



## 4.3 模型可解释性
1. [Explainable Machine Learning for Scientific Insights and Discoveries](http://cn.arxiv.org/abs/1905.08883)   
*2019-05-21* [paper](https://arxiv.org/abs/1905.08883)   

1. [On the Learning Dynamics of Two-layer Nonlinear Convolutional Neural Networks](http://cn.arxiv.org/abs/1905.10157)   
*2019-05-24* [paper](https://arxiv.org/abs/1905.10157)   

## 4.4 分布式
1. A Quick Survey on Large Scale Distributed Deep Learning Systems    
*2018*    
深度学习分布式问题汇总；   

-------------------  
[End](#head)
{:.warning}  

# 附录
## A 参考资料
1. [Machine Learning for Beginners: An Introduction to Neural Networks](https://towardsdatascience.com/machine-learning-for-beginners-an-introduction-to-neural-networks-d49f22d238f9)      
1. [A Beginner's Guide to Neural Networks and Deep Learning](https://skymind.ai/wiki/neural-network)      
