---
layout: article
title:  "「DL」 无监督学习资源汇总"
date:   2019-05-23 16:08:40 +0800
key: unsupervised-foundation-20190523
aside:
  toc: true
category: [AI, DL, unsupervised]
tags: 资源
---
<span id='head'></span>
>训练数据不包含标注信息的情况下完成目标任务；    
[表示学习资源](/ai/dl/representation/2020/02/20/foundation.html)    

`unsupervised learning`

<!--more-->

# 1 综述
1. [A survey on Semi-, Self- and Unsupervised Techniques in Image Classification](/ai/cv/classification/2019/05/15/foundation.html#unsupervised)    
*2020-02-20*    

# 2 理论

# 3 生成式
1. [A fast learning algorithm for deep belief nets](https://www.cs.toronto.edu/~hinton/absps/fastnc.pdf)   
*2006* [paper](https://www.cs.toronto.edu/~hinton/absps/fastnc.pdf)   

1. [Unsupervised representation learning by predicting image rotations](http://cn.arxiv.org/abs/1803.07728)    
ICLR 2018 *2018-03-21* [paper](https://arxiv.org/abs/1803.07728) | [pytorch](https://github.com/gidariss/FeatureLearningRotNet)-official | [openreview](https://openreview.net/forum?id=r1tJKuyRZ)     
通过图像旋转进行学习；   

1. [AET vs. AED: Unsupervised Representation Learning by Auto-Encoding Transformations rather than Data](http://cn.arxiv.org/abs/1901.04596)    
CVPR 2019 *2019-01-14* [paper](https://arxiv.org/abs/1901.04596)    
无监督通过数据还是自编码网络进行学习的讨论；   


# 4 判别式
## 4.1 对比学习
1. [Dimensionality reduction by learning an invariant mapping](http://yann.lecun.com/exdb/publis/pdf/hadsell-chopra-lecun-06.pdf)    
CVPR 2006 *2006* [paper](http://yann.lecun.com/exdb/publis/pdf/hadsell-chopra-lecun-06.pdf) | [blog](https://blog.csdn.net/zhaoyin214/article/details/94396243)       
$\bullet \bullet$   
首次提出对比学习；   

1. [Discriminative unsupervised feature learning with convolutional neural networks](http://cn.arxiv.org/abs/1406.6909)    
NIPS 2014 *2014-06-26* [paper](https://arxiv.org/abs/1406.6909v2) | [caffe](https://github.com/yihui-he/Exemplar-CNN) | [blog](https://zhuanlan.zhihu.com/p/34269303)     
Exemplar-CNN    
首次使用正负样本对抗；   

1. [Data-Efficient Image Recognition with Contrastive Predictive Coding](http://cn.arxiv.org/abs/1905.09272)   
*2019-05-22* [paper](https://arxiv.org/abs/1905.09272) | [openreview](https://openreview.net/forum?id=rJerHlrYwH) | [blog](https://blog.csdn.net/u010420283/article/details/94160244) | [blog](https://zhuanlan.zhihu.com/p/75517749)     
使用了特殊的网络结构，用了 layer norm 和 数据增广；当时最好的方法；    

1. [Learning representations by maximizing mutual information across views](http://cn.arxiv.org/abs/1906.00910)     
*2019-06-03* [paper](https://arxiv.org/abs/1906.00910) | [pytorch](https://github.com/Philip-Bachman/amdim-public)-official | [blog](https://www.zhihu.com/question/355779873/answer/896850345)       
$\bullet \bullet$ - AMDIM     
判别式对比学习，使用了特殊的网络结构，并且改动了数据增广；   

1. [Momentum contrast for unsupervised visual representation learning](http://cn.arxiv.org/abs/1911.05722)    
*2019-11-13* [paper](https://arxiv.org/abs/1911.05722) | [blog](https://www.zhihu.com/question/355779873) | [blog](https://blog.csdn.net/Nin7a/article/details/103311103) | [blog](https://lixiuyu.cc/2019/12/25/MoCo/) | [pytorch](https://github.com/HobbitLong/CMC)   
$\bullet \bullet$ - MoCo        
对数据做了混洗，用了 ResNet × n，耗费存储；   
<span id="SimCLR"> </span>
1. [A Simple Framework for Contrastive Learning of Visual Representations](http://cn.arxiv.org/abs/2002.05709)    
AAAI 2020 *2020-02-13* [paper](https://arxiv.org/abs/2002.05709) | [blog](https://m.thepaper.cn/newsDetail_forward_6019161)    
$\bullet \bullet$ SimCLR    
**定位**：探索基于对比学习的判别式半监督网络，包括数据增广，特征提取和相似度计算；    
**总结**：文章收录了较为全面的半监督学习相关信息，并对各环节做了实验，最终给除了效果最好的组合——SimCLR，达到 SOTA；   
**核心**：各环节做了丰富的对比实验，对工程有很大指导作用；  
>
- 各环节只给出实验结果，缺乏理论分析；    
- 只给了实验结果，未给出实验细节；   
- 文章的核心“对比学习”就是孪生网络，相关任务有图片检索（人脸验证，REID 等）；不知道为什么非要换个名字；   
- 对比学习用于无监督分类准确度测试的时候，也没给出测试细节——怎么实现的半监督学习；    
- 结论说 SimCLR*（基于 4×ResNet）*在微调后达到监督学习*（基于 ResNet）*的水平是噱头，因为 backbone 不一样；   
>
>*看起来像是很努力但不聪明又的人写的文章；*    

## 4.2 其他
1. [Unsupervised Visual Representation Learning by Context Prediction](http://cn.arxiv.org/abs/1505.05192)    
ICCV 2015 *2015-05-19* [paper](https://arxiv.org/abs/1505.05192) | [caffe](https://github.com/cdoersch/deepcontext)      

1. [Unsupervised Feature Learning via Non-Parametric Instance-level Discrimination](http://cn.arxiv.org/abs/1805.01978)    
CVPR 2018 *2018-05-05* [paper](https://arxiv.org/abs/1805.01978) | [pytorch](https://github.com/zhirongw/lemniscate.pytorch)-official | [pytorch](https://github.com/HobbitLong/CMC) | [blog](https://zhuanlan.zhihu.com/p/37097100) | [blog](https://zhuanlan.zhihu.com/p/91347205)     
$\bullet \bullet$ InsDis    

# 5 应用
## 5.1 视觉异常检测
>[异常检测](/ai/data_mining/anomaly_detect/2019/07/15/foundation.html)   

1. [Manifolds for Unsupervised Visual Anomaly Detection](http://cn.arxiv.org/abs/2006.11364)  
*2020-06-19* [paper](https://arxiv.org/abs/2006.11364) | [crack 分割数据集]（https://github.com/khanhha/crack_segmentation）     
无监督 VAE 从医疗图像中识别出癌症图片；    

# 6 其他
1. [Deep Clustering for Unsupervised Learning of Visual Features](http://cn.arxiv.org/abs/1807.05520)   
ECCV 2018 *2018-07-15* [paper](https://arxiv.org/abs/1807.05520) | [解读](/ai/cv/unsupervised/paper_reading/2019/03/04/Deep-Clustering-for-Unsupervised-Learning-of-Visual-Features.html)    

1. [Self-Supervised Representation Learning by Rotation Feature Decoupling](http://openaccess.thecvf.com/content_CVPR_2019/papers/Feng_Self-Supervised_Representation_Learning_by_Rotation_Feature_Decoupling_CVPR_2019_paper.pdf)    
CVPR 2019 *2019* [paper](http://openaccess.thecvf.com/content_CVPR_2019/papers/Feng_Self-Supervised_Representation_Learning_by_Rotation_Feature_Decoupling_CVPR_2019_paper.pdf)    


-------------------  
[End](#head)
{:.warning}  
# 附录
## A 数据集
## B 资源
1. [paper with code](https://paperswithcode.com/task/unsupervised-representation-learning)    
