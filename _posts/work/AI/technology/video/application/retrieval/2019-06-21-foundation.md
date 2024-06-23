---
layout: article
title:  "「VIDEO」 视频检索资源汇总"
date:   2019-06-21 18:06:40 +0800
key: video-retrieval-foundation-20190621
aside:
  toc: true
category: [AI, video, video_retrieval]
tags: 资源
sidebar:
  nav: NDVR
---
<span id='head'></span>
>**相似视频检索**: 相似指的是通过修改原视频的到新的视频；      
相关资料：[检索概述](/ai/video/video_retrieval/2019/07/30/survey.html) · [图像检索资源](/ai/cv/retrieval/2019/05/22/foundation.html) · [音频检索资源](/ai/audio/audio_retrieval/2019/08/14/foundation.html)    

<!--more-->
`video fingerprinting` · `video DNA` · `video signature` · `video hash` · `video content-based watermarking`;      
`video retrieval`; `near-duplicate video detection` · `video copy detection` · `video forgery detection` · `video content identification`; `video vreification` · `video authentication` ;            


*发现这方面论文很凌乱，关键字都有很多个版本；每个方向也不多*      

不同的应用场景下，是否应该用相同的策略
{:.warning}    

# 1 综述

**1.1 重复视频检测**    
1. [Large-scale near-duplicate web video search: Challenge and opportunity](http://vireo.cs.cityu.edu.hk/tansong/icme09-oral.pdf)    
*2009* [paper](http://vireo.cs.cityu.edu.hk/tansong/icme09-oral.pdf)    

1. [Million-scale Near-duplicate Video Retrieval System](http://www.cs.cmu.edu/~caiyang/papers/msndvr-cai-11.pdf)    
*2011-11-28* [paper](http://www.cs.cmu.edu/~caiyang/papers/msndvr-cai-11.pdf)    
$\bullet \bullet$    
使用颜色特征； K-Means++ 选择特征，倒排加速搜索；      

1. [Spatio-temporal video copy detection](http://summit.sfu.ca/system/files/iritems1/11976/etd6860_RHarvey.pdf)     
*2011* [paper](http://summit.sfu.ca/system/files/iritems1/11976/etd6860_RHarvey.pdf)     


1. [An Exploration based on Multifarious Video Copy Detection Strategies](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.428.9010&rep=rep1&type=pdf)     
*2013* [paper](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.428.9010&rep=rep1&type=pdf)    


1. [Near-Duplicate Video Retrieval: Current Research and Future Trends](http://vireo.cs.cityu.edu.hk/papers/a44-liu.pdf)    
*2013-08* [paper](http://vireo.cs.cityu.edu.hk/papers/a44-liu.pdf)    
使用了一款视频编辑软件；阐述了全局特征的劣势——忽略了中间物体；        

1. [Survey on Web Scale Based Near Duplicate Video Retrieval](https://pdfs.semanticscholar.org/c6b0/0a76cb8c540b4824369ddbf7def551720394.pdf)   
*2016* [paper](https://pdfs.semanticscholar.org/c6b0/0a76cb8c540b4824369ddbf7def551720394.pdf)    

1. [视频拷贝检测方法综述](http://crad.ict.ac.cn/CN/article/downloadArticleFile.do?attachType=PDF&id=3395)    
*2017-04* 复旦·计算机 姜育刚 [paper](http://crad.ict.ac.cn/CN/article/downloadArticleFile.do?attachType=PDF&id=3395)    
全方位的概述；    

1. [GVoS: A General System for Near-Duplicate Video Related Applications on Storm](http://net.pku.edu.cn/~cuibin/Papers/2017%20TOIS.pdf)    
*2017* [paper](http://net.pku.edu.cn/~cuibin/Papers/2017%20TOIS.pdf)    

1. [A Systematic Review of Near Duplicate Video Retrieval Techniques](https://acadpubl.eu/hub/2018-118-24/3/569.pdf)    
*2018-05-27* [paper](https://acadpubl.eu/hub/2018-118-24/3/569.pdf)    
>太简单，就是一个粗糙的博客；没有思考性的东西，也缺乏大量实验比对；图表模糊，不合格；     

**1.2 拷贝检测**

1. [Video Copy Detection: a Comparative Study](https://www.irisa.fr/vista/Papers/2007_civr_law-to.pdf)   
*2007* [paper](https://www.irisa.fr/vista/Papers/2007_civr_law-to.pdf)    

1. [A Survey On Video Forgery Detection](http://cn.arxiv.org/abs/1503.00843)    
*2015-03-03* [paper](https://arxiv.org/abs/1503.00843)   

1. [Recent advances in content based video copy detection](http://cn.arxiv.org/abs/1610.09087)    
*2016-10-28* [paper](https://arxiv.org/abs/1610.09087)   

1. A review on robust video copy detection     
*2019* [springer](https://link.springer.com/article/10.1007/s13735-018-0159-x)      
$\bullet \bullet$ VCD Review     

**1.3 视频签名**   

1. [Video Content Identification Using Video Signature: Survey](https://pdfs.semanticscholar.org/772a/ac1375c51bd984ac400c2bc4ccedd5fa0b43.pdf)    
*2017-07* [paper](https://pdfs.semanticscholar.org/772a/ac1375c51bd984ac400c2bc4ccedd5fa0b43.pdf)   

**1.4 基于内容的视频检索**     

1. [Content-Based Image Retrieval at the end of the early years](https://pdfs.semanticscholar.org/9199/577de9d71f7575c86e5e685c02f84f1ccc99.pdf?_ga=2.250936527.833172005.1572513273-129004075.1557370518)    
*2000* [paper](https://pdfs.semanticscholar.org/9199/577de9d71f7575c86e5e685c02f84f1ccc99.pdf?_ga=2.250936527.833172005.1572513273-129004075.1557370518)    
汇总了各种方法，展示了遗留的问题；   

1. [Content based Video Retrieval: A Survey](https://pdfs.semanticscholar.org/379e/b29b015daa3fac6e0de2f6132733f16d46c7.pdf)    
*2015-01* [paper](https://pdfs.semanticscholar.org/379e/b29b015daa3fac6e0de2f6132733f16d46c7.pdf)     

1. [Content-Based Video Retrieval in Historical Collections of the German Broadcasting Archive](http://cn.arxiv.org/abs/1702.03790)      
*2017-02-13* [paper](https://arxiv.org/abs/1702.03790)     
提供了丰富的视频检索流程；     

1. [FIVR: Fine-grained Incident Video Retrieval](http://cn.arxiv.org/abs/1809.04094)    
*2018-09-11* [paper](https://arxiv.org/abs/1809.04094)   
发布了新数据集  FIVR-200K；     

1. [Interactive video retrieval in the age of deep learning](http://www.icmr2019.org/wp-content/uploads/2019/05/ICMR_tutorial_Interactive-video-retrieval-in-the-age-of-deep-learning.pdf)     
ICMR 2019 toturial *2019* [paper](http://www.icmr2019.org/wp-content/uploads/2019/05/ICMR_tutorial_Interactive-video-retrieval-in-the-age-of-deep-learning.pdf)    

**1.5 跨模态视频检索**    
1. [Find and Focus: Retrieve and Localize Video Events with Natural Language Queries](http://openaccess.thecvf.com/content_ECCV_2018/papers/Dian_SHAO_Find_and_Focus_ECCV_2018_paper.pdf)     
ECCV 2018 *2018* [paper](http://openaccess.thecvf.com/content_ECCV_2018/papers/Dian_SHAO_Find_and_Focus_ECCV_2018_paper.pdf) | [home](http://www.xiongyu.me/projects/find_and_focus/)        

1. [Deep Learning for Video Retrieval by Natural Language](http://delivery.acm.org/10.1145/3360000/3350565/p2-li.pdf?ip=38.131.99.234&id=3350565&acc=OPEN&key=4D4702B0C3E38B35%2E4D4702B0C3E38B35%2E4D4702B0C3E38B35%2E6D218144511F3437&__acm__=1573809259_9e1d3adc16be2fed7c07a7d89df5c67c)     
*2019-10-25* [paper](http://delivery.acm.org/10.1145/3360000/3350565/p2-li.pdf?ip=38.131.99.234&id=3350565&acc=OPEN&key=4D4702B0C3E38B35%2E4D4702B0C3E38B35%2E4D4702B0C3E38B35%2E6D218144511F3437&__acm__=1573809259_9e1d3adc16be2fed7c07a7d89df5c67c)     



**1.6 版权保护**       
1. [DETECTING DIGITAL COPYRIGHT VIOLATIONS ON THE INTERNET](http://infolab.stanford.edu/~shiva/Pubs/thesis.pdf)    
*1999* [paper](http://infolab.stanford.edu/~shiva/Pubs/thesis.pdf)    

**1.7 视频指纹**     
1. [Introduction to Video Fingerprinting](http://disp.ee.ntu.edu.tw/~pujols/Introduction%20to%20Video%20Fingerprinting.pdf)     
*2009* [paper](http://disp.ee.ntu.edu.tw/~pujols/Introduction%20to%20Video%20Fingerprinting.pdf)     

1. [Video fingerprinting for copy identification: From research to industry applications](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.394.4048&rep=rep1&type=pdf)     
*2009* [paper](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.394.4048&rep=rep1&type=pdf)     


1. [The Core of Video Fingerprinting: Examples of Feature](http://disp.ee.ntu.edu.tw/~pujols/The%20Core%20of%20Video%20Fingerprinting.pdf)     
*2009* [paper](http://disp.ee.ntu.edu.tw/~pujols/The%20Core%20of%20Video%20Fingerprinting.pdf)      
$\bullet \bullet$    


# 2 理论

# 3 技术点
## 3.1 [关键帧提取](/ai/video/key_frame/2019/06/12/foundation.html)
`keyframe extract` · `shot boundary detection`;      

## 3.2 特征提取
>包括**低层特征**：颜色、边缘、纹理、动作；    
**中级特征**：运动轨迹、物体颜色；    
**高级特征**：；    

`feature extract` · `video fingerprinting` · `video DNA` · `video signature` · `video hash` · `video content-based watermarking`;          

**3.2.1 [帧特征](/ai/cv/retrieval/2019/05/22/foundation.html#31-特征提取)**     

**3.2.2 视频特征**     
1. [Robust video signature based on ordinal measure](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.69.8192&rep=rep1&type=pdf)     
*2004* [paper](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.69.8192&rep=rep1&type=pdf)     
重采样应对帧率变化；顺序度量特征，固定滑窗计算相似度；    

1. [Video Shot Characterization∗](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.99.7150&rep=rep1&type=pdf)     
[paper](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.99.7150&rep=rep1&type=pdf)    


1. [A Rotation Invariant Descriptor for Robust Video Copy Detection](http://www.jdl.link/doc/2011/201112291745236454_pcm2011-a%20rotation%20invariant%20descriptor%20for%20robust%20video%20copy%20detection.pdf)     
*2007* [paper](http://www.jdl.link/doc/2011/201112291745236454_pcm2011-a%20rotation%20invariant%20descriptor%20for%20robust%20video%20copy%20detection.pdf)   

1. [Content-based video fingerprinting method for fast key generation and retrieval]()

1. [VIDEO COPY DETECTION USING FINGERPRINTING WITH FAST IMAGE PROCESSING](https://pdfs.semanticscholar.org/04cd/3343d2e951d108f406bcc9ee784000f939fa.pdf)    
*2016-04* [paper](https://pdfs.semanticscholar.org/04cd/3343d2e951d108f406bcc9ee784000f939fa.pdf)    

1. [Deep Video Hashing](http://ivg.au.tsinghua.edu.cn/paper/2017_Deep%20video%20hashing.pdf)     
*2016* [paper](http://ivg.au.tsinghua.edu.cn/paper/2017_Deep%20video%20hashing.pdf)     
$\bullet \bullet$ Deep Video Hashing    

1. Video Copy Detection Based On Temporal Contextual Hashing    
*2016*    
时序二进制 hash；   

1. [Unsupervised Deep Video Hashing with Balanced Rotation](https://pdfs.semanticscholar.org/6b6e/2c2ff6fcc5837523940c69cf2e9e94bc0503.pdf)     
IJCAI 2017 *2017* [paper](https://pdfs.semanticscholar.org/6b6e/2c2ff6fcc5837523940c69cf2e9e94bc0503.pdf)    
$\bullet \bullet$     
无监督特征提取；   

1. [Deep Hashing with Category Mask for Fast Video Retrieval](http://cn.arxiv.org/abs/1712.08315)     
*2017-12-22* 美图 [paper](https://arxiv.org/abs/1712.08315) | [blog](https://juejin.im/post/5b4d5a816fb9a04fcf59c9a5)       
$\bullet \bullet$ Hash Mask    
使用网络提取**视频特征**：先用 backbone 网络针对每一帧提取特征，然后将多个特征进行融合，得到固定维度的特征就是视频特征；    
得到特征后使用阈值进行量化，得到 Hash 码；然后计算 hamming 距离；     
>
- 该方案的可扩展性有待深究（阈值的设定、特征融合对于输入帧数的限制）；   
- 文章默认未考虑视频剪辑的情况；因为只适应从视频采样出固定的几帧，那么就只能完成检索任务，没有办法定位到时间；且如果采样到不相关的帧，对检索结果影响也较大；   
- 文章对于如何采样并没有说明；感觉工作不是很严谨；整体方案应是只停留在理想环境；    

1. [Convolutional Hashing for Automated Scene Matching](http://cn.arxiv.org/abs/1802.03101)     
*2018-02-09* [paper](https://arxiv.org/abs/1802.03101)     

1. [A Video Database Management System for Advancing Video Database Research](http://cn.arxiv.org/abs/1802.03101)     
*2018-02-09* [paper](https://arxiv.org/abs/1802.03101)     
cnn hash，设计了新的 loss 函数；   

1. Finding Near-Duplicate Videos in Large-Scale Collections     
*2019*  

1. [A Survey of Deep Learning Solutions for Multimedia Visual Content Analysis](http://repository.essex.ac.uk/24887/1/08744516.pdf)     
*2019* [paper](http://repository.essex.ac.uk/24887/1/08744516.pdf)     

1. [Extracting camera-based fingerprints for video forensics](https://pdfs.semanticscholar.org/2ef8/3bb794d35765ca02c0fad4ba0781de0ede3a.pdf?_ga=2.158555002.1153843306.1572339852-129004075.1557370518)     
CVPR 2019 workshop *2019* [paper](https://pdfs.semanticscholar.org/2ef8/3bb794d35765ca02c0fad4ba0781de0ede3a.pdf?_ga=2.158555002.1153843306.1572339852-129004075.1557370518)    



**3.2.3 多帧融合**     
**3.2.3.1 聚类**     
1. [Towards effective indexing for very large video sequence database](http://staff.itee.uq.edu.au/zxf/_papers/SIGMOD05.pdf)      
对帧特征进行聚类；     

1. [Comprehensive Feature-based Robust Video Fingerprinting Using Tensor Model](http://cn.arxiv.org/abs/1601.07270)     
*2016-01-27* [paper](https://arxiv.org/abs/1601.07270)      
$\bullet \bullet$    
特征融合及索引；    

**3.2.3.2 降维**     
1. [UQLIPS: A Real-time Near-duplicate Video Clip Detection System](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.129.4492&rep=rep1&type=pdf)     
*2007* [paper](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.129.4492&rep=rep1&type=pdf)     
使用 PCA 对多帧视频特征降维得到视频特征；       

1. [Bounded coordinate system indexing for real-time video clip search](http://net.pku.edu.cn/~cuibin/Papers/2009-TOIS-vedio.pdf)      
*2009* [paper](http://net.pku.edu.cn/~cuibin/Papers/2009-TOIS-vedio.pdf)     
使用 BCS（PCA+） 对多帧视频特征降维得到视频特征；       

1. [Real-time Large Scale Near-duplicate Web Video Retrieval](#RLDW_LBP_BOW)     

**3.2.3.3 Fisher vector**     
1. [SHOT AGGREGATING STRATEGY FOR NEAR-DUPLICATE VIDEO RETRIEVAL](https://www.eurasip.org/Proceedings/Eusipco/Eusipco2015/papers/1570097527.pdf)    
*2015* [paper](https://www.eurasip.org/Proceedings/Eusipco/Eusipco2015/papers/1570097527.pdf)    
镜头聚合；     

**3.2.3.4 稀疏编码**     
1. Compact CNN Based Video Representation for Efficient Video Copy Detection    
*2016-12*      
$\bullet \bullet$     
CNN 提取特征，然后稀疏编码到固定长度；     

**3.2.3.4 VLAD**     
1. [Aggregating local descriptors into a compact image representation](https://lear.inrialpes.fr/pubs/2010/JDSP10/jegou_compactimagerepresentation.pdf)     
*2010* [paper](https://lear.inrialpes.fr/pubs/2010/JDSP10/jegou_compactimagerepresentation.pdf)     


**3.2.3.5 其他**     

1. [Video histogram: A novel video signature for efficient Web video duplicate detection](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.91.1722&rep=rep1&type=pdf)     
*2007* [paper](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.91.1722&rep=rep1&type=pdf)    
相关直方图；    

1. [Practical elimination of near-duplicates from Web video search](http://vireo.cs.cityu.edu.hk/papers/mm07wu1.pdf)    
*2007* [paper](http://vireo.cs.cityu.edu.hk/papers/mm07wu1.pdf)     
CC_Web_VIDEO 数据集，基于关键帧，一阶段用颜色，累积直方图，过滤不相似的视频；而阶段用 PCA-SIFT + 滑窗；     

1. [CNN Features Off-the-Shelf: An Astounding Baseline for Recognition](http://cn.arxiv.org/abs/1403.6382)     
*2014-03-23* [paper](https://arxiv.org/abs/1403.6382)    
$\bullet \bullet$    

1. [A discriminative CNN video representation for event detection](http://cn.arxiv.org/abs/1411.4006)    
*2014-11-14* [paper](https://arxiv.org/abs/1411.4006)     


1. [Hierarchical feature fusion hashing for near-duplicate video retrieval](http://engine.scichina.com/doi/pdf/54032229BB484DC5A232803260489F9B)     
*2016* [paper](http://engine.scichina.com/doi/pdf/54032229BB484DC5A232803260489F9B)      
$\bullet \bullet$   

1. [Detecting near-duplicate videos by aggregating features from intermediate CNN layers](https://www.researchgate.net/publication/221572367_Detection_and_location_of_near-duplicate_video_sub-clips_by_finding_dense_subgraphs)    
*2016-08* [paper](https://www.researchgate.net/publication/221572367_Detection_and_location_of_near-duplicate_video_sub-clips_by_finding_dense_subgraphs) | [tensorflow](https://github.com/Chinmay26/Near-Duplicate-Video-Detection)        
$\bullet \bullet$    

1. [Near-duplicate video retrieval by aggregating intermediate cnn layers](https://www.researchgate.net/profile/Giorgos_Kordopatis-Zilos/publication/311990276_Near-Duplicate_Video_Retrieval_by_Aggregating_Intermediate_CNN_Layers/links/59e1d80c458515393d57bc5e/Near-Duplicate-Video-Retrieval-by-Aggregating-Intermediate-CNN-Layers.pdf)      
*2017* [paper](https://www.researchgate.net/profile/Giorgos_Kordopatis-Zilos/publication/311990276_Near-Duplicate_Video_Retrieval_by_Aggregating_Intermediate_CNN_Layers/links/59e1d80c458515393d57bc5e/Near-Duplicate-Video-Retrieval-by-Aggregating-Intermediate-CNN-Layers.pdf) | [caffe](https://github.com/MKLab-ITI/intermediate-cnn-features)           
$\bullet \bullet$ NDVR CNN      
流程：CNN 提取特征（每层都提）；K-Means 生成码本（最佳值是 1000）；Apache Spark 助力计算；   
对比了 AlexNet、VGG、GoogleNet 在视频检索中的表现；并且与传统方法做了比较；效果更好；     
>实验很细致，也给出了一个相对完整的视频检索流程；只是没有考虑剪辑的情况；      


1. Effective Multiple Feature Hashing for Large-Scale Near-Duplicate Video Retrieval      
*2013*     
$\bullet \bullet$ MFH      
监督学习进行特征 hash；   


**3.2.4 压缩域**    
>无需解码视频，根据编码信息提取特征，可应对裁剪等拷贝操作；  

1. [Bit Rate-based H. 264 Video Copy Detection](https://jit.ndhu.edu.tw/article/download/1629/1637)     
*2018-01* [paper](https://jit.ndhu.edu.tw/article/download/1629/1637)     
$\bullet \bullet$ h.264       
**流程**：镜头检测（I 帧判断）——压缩域提取特征（P 帧比特率）——比对（$\chi^2$ + 编辑距离）；   
**结果**：只能与部分算法持平；且压缩域极易受剪辑攻击；     
>这个方法不可行；关于 I 帧找镜头的方法还不错；    

**3.2.5 其他**    
1. [Submodular Video Hashing: A Unified Framework Towards Video Pooling and Indexing](http://www.ee.columbia.edu/~zgli/papers/MM12_VideoHashing.pdf)    
*2012* [paper](http://www.ee.columbia.edu/~zgli/papers/MM12_VideoHashing.pdf)    

1. [Unsupervised t-Distributed Video Hashing and Its Deep Hashing Extension](https://www.research.manchester.ac.uk/portal/files/58965691/final.pdf)    
$\bullet \bullet$ t-UDH     
*2016-12* [paper](https://www.research.manchester.ac.uk/portal/files/58965691/final.pdf)    

1. [Joint Audio-Video Fingerprint Media Retrieval Using Rate-Coverage Optimization](http://cn.arxiv.org/abs/1609.01331)    
*2016-09-05* [paper](https://arxiv.org/abs/1609.01331)   
$\bullet \bullet$ Rate Coverage    

1. [Unsupervised Deep Video Hashing via Balanced Code for Large-Scale Video Retrieval](https://eprints.lancs.ac.uk/id/eprint/130708/1/TIP_author_accepted_manuscript.pdf)    
*2018* [paper](https://eprints.lancs.ac.uk/id/eprint/130708/1/TIP_author_accepted_manuscript.pdf)    
$\bullet \bullet$ UDVH   


## 3.3  索引
**3.3.1 综述**    
1. Review of Image and Video Indexing Techniques      
*1997* [semanticscholar](https://www.semanticscholar.org/paper/Review-of-Image-and-Video-Indexing-Techniques-Idris-Panchanathan/ce61e49a9a3c88152e1f1b1b6e2e803328cc48f1)     

1. [Image and video indexing in the compressed domain](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.40.8228&rep=rep1&type=pdf)      
*1997* [paper](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.40.8228&rep=rep1&type=pdf)     
另一个名字是 `A critical evaluation of image and video indexing techniques in the compressed domain`      
针对频域索引技术进行了比对，包括傅立叶变换，余弦变换，Karhunen-Loeve变换，子带和小波的变换域技术；还有矢量量化和分形的空间域技术和基于运动矢量的时间索引技术；    

1. [A state-of-the-art review on multimodal video indexing](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.479.2287&rep=rep1&type=pdf)      
*2002* [paper](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.479.2287&rep=rep1&type=pdf)     


1. [Multimodal video indexing: A review of the state-of-the-art](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.77.8258&rep=rep1&type=pdf)    
*2005* [paper](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.77.8258&rep=rep1&type=pdf)     
多模态索引；     

1. [A Survey on Visual Content-Based Video Indexing and Retrieval](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.295.6377&rep=rep1&type=pdf)     
*2011* [paper](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.295.6377&rep=rep1&type=pdf)     


1. [Multimedia Indexing and Retrieval Techniques: A Review](https://pdfs.semanticscholar.org/3cc4/3cceddaa0e9ad7f3ae11932a9317cf742f31.pdf)     
*2012* [paper](https://pdfs.semanticscholar.org/3cc4/3cceddaa0e9ad7f3ae11932a9317cf742f31.pdf)     


**3.3.2 树形结构**    
1. [Prover: Probabilistic video retrieval using the Gauss-tree](https://www.dbs.ifi.lmu.de/Publikationen/Papers/icde-prover.pdf)     
*2007* [paper](https://www.dbs.ifi.lmu.de/Publikationen/Papers/icde-prover.pdf)     

**3.3.3 VA-File**    
1. [A quantitative analysis and performance study for similarity-search methods in high-dimensional spaces](https://pdfs.semanticscholar.org/63ea/eb0c48175065ffd096aad10aed712c6d7bbb.pdf)     
*1998* [paper](https://pdfs.semanticscholar.org/63ea/eb0c48175065ffd096aad10aed712c6d7bbb.pdf)    

1. [ Trading quality for time with nearest-neighbor search](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.38.5809&rep=rep1&type=pdf)     
*2000* [paper](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.38.5809&rep=rep1&type=pdf)    

1. [iDistance: An Adaptive B+-Tree Based Indexing Method for Nearest Neighbor Search](https://people.eng.unimelb.edu.au/zr/publications/Tods05_idistance.pdf)     
*2007* [paper](https://people.eng.unimelb.edu.au/zr/publications/Tods05_idistance.pdf)     
iDistance;     

1. [Indexing High-Dimensional Data in Dual Distance Spaces: A Symmetrical Encoding Approach](https://openproceedings.org/2008/conf/edbt/ZhuangZLCY08.pdf)   
*2008* [paper](https://openproceedings.org/2008/conf/edbt/ZhuangZLCY08.pdf)    

1. Online Near-Duplicate Video Clip Detection and Retrieval: An Accurate and Fast System     
*2009*     

1. [Towards effective indexing for very large video sequence database](https://www.comp.nus.edu.sg/~ooibc/sigmod-video.pdf)     
*2005* [paper](https://www.comp.nus.edu.sg/~ooibc/sigmod-video.pdf)      
iDistance;    

**3.3.4 Hash**    
1. [A Posteriori Multi-Probe Locality Sensitive Hashing](https://www.cs.princeton.edu/courses/archive/spring13/cos598C/p209-joly.pdf)     
*2008* [paper](https://www.cs.princeton.edu/courses/archive/spring13/cos598C/p209-joly.pdf)    
LSH: 提升准确度；    

1. [Quality and Efficiency in High Dimensional Nearest Neighbor Search](https://www.cse.ust.hk/~yike/sigmod09-lsb.pdf)    
*2009* [paper](https://www.cse.ust.hk/~yike/sigmod09-lsb.pdf)    
LSH: 改映射函数；    

1. [An Image-Based Approach to Video Copy Detection With Spatio-Temporal Post-Filtering](https://hal.inria.fr/file/index/docid/604034/filename/douze_tmm.pdf)      
*2010* [paper](https://hal.inria.fr/file/index/docid/604034/filename/douze_tmm.pdf)      
基于关键点，LSH 改进，词袋模型；    

1. Large-scale video copy retrieval with temporal-concentration SIFT     
*2016*     
改进 sift；LSH：位置敏感 hash，解决高维特征检索慢的问题；        

1. [Stochastic Multiview Hashing for Large-Scale Near-Duplicate Video Retrieval ](https://www.research.manchester.ac.uk/portal/files/46115431/Manuscript_final_with_bios.pdf)    
*2016-09-15* [paper](https://www.research.manchester.ac.uk/portal/files/46115431/Manuscript_final_with_bios.pdf)    
$\bullet \bullet$ stochastic hash       
镜头边界检测，汉明距离，map；多视角随机 hash 提升检索精度和速度；     

**3.3.5 倒排**    
1. [Video Google: a text retrieval approach to object matching in videos](http://www.robots.ox.ac.uk/~vgg/publications/papers/sivic03.pdf)    
*2003* [paper](http://www.robots.ox.ac.uk/~vgg/publications/papers/sivic03.pdf)    


<span id="SDP"></span>
1. [Scalable Detection of Partial Near-Duplicate Videos by Visual-Temporal Consistency](https://lms.comp.nus.edu.sg/sites/default/files/publication-attachments/acmmm09-tan.pdf)     
*2009* [paper](https://lms.comp.nus.edu.sg/sites/default/files/publication-attachments/acmmm09-tan.pdf)     
$\bullet \bullet$ Network Flow   
倒排，针对弱几何一致性做了改进；使用了图对齐；     

<span id='RLDW_LBP_BOW'></span>
1. [Real-time Large Scale Near-duplicate Web Video Retrieval](https://www.microsoft.com/en-us/research/wp-content/uploads/2010/10/MM10_Real-time-Large-Scale-Near-Duplicate-Web-Video-Identification.pdf)    
*2010* [paper](https://www.microsoft.com/en-us/research/wp-content/uploads/2010/10/MM10_Real-time-Large-Scale-Near-Duplicate-Web-Video-Identification.pdf)    
倒排，map+准确度+召回率；LBP 直方图相交；词袋模型+时序特征；     

## 3.4 时间对齐
`temporal alignment` · `local alignment`     

**3.4.1 滑窗**       
1. [Compact video description for copy detection with precise temporal alignment](https://lear.inrialpes.fr/pubs/2010/DJSP10/douze_eccv10.pdf)     
ECCV 2010 *2010* [paper](https://lear.inrialpes.fr/pubs/2010/DJSP10/douze_eccv10.pdf)    
分层索引，霍夫投票；     

**3.4.2 树形结构**    
1. [Searching for repeated video sequences](http://www.cs.bilkent.edu.tr/~duygulu/papers/MIR2007.pdf)     
*2007* [paper](http://www.cs.bilkent.edu.tr/~duygulu/papers/MIR2007.pdf)     

**3.4.3 动态规划**     
1. [Detection of video sequences using compact signatures](https://people.eng.unimelb.edu.au/jzobel/fulltext/acmtois06.pdf)     
*2006* [paper](https://people.eng.unimelb.edu.au/jzobel/fulltext/acmtois06.pdf)    

**3.4.4 图对齐**     
>[最大流](/ai/algorithms/graph/2019/10/20/maximum-flow.html)      


1. [Effective and Efficient Query Processing for Video Subsequence Identification](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.296.7068&rep=rep1&type=pdf)     
*2007* [paper](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.296.7068&rep=rep1&type=pdf)     
$\bullet \bullet$ MSM SMSM   

1. [Scalable Detection of Partial Near-Duplicate Videos by Visual-Temporal Consistency](#SDP)    

1. Efficient mining of multiple partial near-duplicate alignments by temporal network       
*2010*     

1. [Detection and location of near-duplicate video sub-clips by finding dense subgraphs](http://www.jdl.link/doc/2011/2011122916194090694_p1173-tianlongchenacmmm2011.pdf)     
*2011* [paper](http://www.jdl.link/doc/2011/2011122916194090694_p1173-tianlongchenacmmm2011.pdf)     

1. [Identification of video subsequence using bipartite graph matching](https://link.springer.com/content/pdf/10.1007/s13173-011-0036-4.pdf)     
*2011* [paper](https://link.springer.com/content/pdf/10.1007/s13173-011-0036-4.pdf)    
$\bullet \bullet$ Graph bipartite

1. A two-step video subsequence identification based on bipartite graph matching
加了个命中函数；    

1. [Video Hyperlinking: Libraries and Tools for Threading and Visualizing Large Video Collection](http://vireo.cs.cityu.edu.hk/papers/mm12-pang.pdf)     
*2012* [paper](http://vireo.cs.cityu.edu.hk/papers/mm12-pang.pdf) | [tool](https://sourceforge.net/projects/vireovh/)        

1. Video Copy Detection Based on Path Merging and Query Content Prediction     
*2015-10*    
基于图模型的路径合并；     


**3.4.5 DL**     
1. [Temporal Cycle-Consistency Learning](http://cn.arxiv.org/abs/1904.07846)     
CVPR 2019 *2019-04-16* Google & Deepmind [paper](https://arxiv.org/abs/1904.07846) | [project](https://sites.google.com/view/temporal-cycle-consistency) | [tensorflow](https://github.com/google-research/google-research/tree/master/tcc)-official              

<span id="TA3N1"></span>
1. [Temporal Attentive Alignment for Video Domain Adaptation](http://cn.arxiv.org/abs/1905.10861)     
CVPR 2019 workshop *2019-05-26* [paper](https://arxiv.org/abs/1905.10861) | [pytorch](https://github.com/cmhungsteve/TA3N)-official           
与 [Temporal Attentive Alignment for Large-Scale Video Domain Adaptation](#TA3N2) 是同一团队；    

<span id="TA3N2"></span>
1. [Temporal Attentive Alignment for Large-Scale Video Domain Adaptation](http://cn.arxiv.org/abs/1907.12743)     
ICCV 2019 oral *2019-07-30* [paper](https://arxiv.org/abs/1907.12743) | [pytorch](https://github.com/cmhungsteve/TA3N)-official | [reddit](https://www.reddit.com/r/MachineLearning/comments/cn9eqd/research_temporal_attentive_alignment_for/)        
与 [Temporal Attentive Alignment for Video Domain Adaptation](#TA3N1) 是同一团队；    

**3.4.6 蛋白质序列**     
1. [Searching for Near-Duplicate Video Sequences from a Scalable Sequence Aligner](https://hal.archives-ouvertes.fr/hal-00906327/document)     
*2013-11-19* [paper](https://hal.archives-ouvertes.fr/hal-00906327/document)     


**3.4.7 多项式逼近**     
>只能应对滑窗试匹配；   

`polynomial approximation`     

1. [A novel scheme for fast and efficient video sequence matching using compact signatures](http://www.ifp.illinois.edu/~milind/papers/conferences/spie60.ps.gz)     
*2000* [paper](http://www.ifp.illinois.edu/~milind/papers/conferences/spie60.ps.gz)    
特征使用的 DCT 直方图，针对片段匹配；    

**3.4.8 其他**     
1. [Video sequence matching based on temporal ordinal measurement](https://www.ee.ucl.ac.uk/~fstentif/PR%20Letters%20manuscript.pdf)     
*2007* [paper](https://www.ee.ucl.ac.uk/~fstentif/PR%20Letters%20manuscript.pdf)    
提取了时间维度特征；   

1. [Fast Visual Retrieval Using Accelerated Sequence Matching](http://lbmedia.ece.ucsb.edu/resources/ref/ITMM.pdf)    
*2010* [paper](http://lbmedia.ece.ucsb.edu/resources/ref/ITMM.pdf)     


1. Efficient video copy detection via aligning video signature time series     
*2012*    
基于倾斜的时间对齐；对齐时引入了帧的插入、删除和替换策略；         

1. [Frame filtering and path verification for improving video copy detection](http://mic.bjtu.edu.cn/resouce/Frame%20Filtering%20and%20Path%20Verification%20for%20Improving%20Video%20Copy%20Detection.pdf)       
*2013* [paper](http://mic.bjtu.edu.cn/resouce/Frame%20Filtering%20and%20Path%20Verification%20for%20Improving%20Video%20Copy%20Detection.pdf)    
$\bullet \bullet$   
针对定位精度和就三效率做了处理；   

1. [Block based video alignment with linear time and space complexity](https://miliadis.github.io/papers/ICIP_video_align.pdf)    
ICIP *2016-09* [paper](https://miliadis.github.io/papers/ICIP_video_align.pdf)     
$\bullet \bullet$ DDWT    
线性时间和空间复杂度；    

1. [Energy based fast event retrieval in video with temporal match kernel](http://home.ustc.edu.cn/~pjh/publications/ICIP2017Energy/paper.pdf)      
ICIP 2017 *2017-09* [paper](http://home.ustc.edu.cn/~pjh/publications/ICIP2017Energy/paper.pdf) |  [ppt](https://pdfs.semanticscholar.org/2d1d/b02a45e0a8152c14c80102211e2fec7ae999.pdf)     
乘积量化；    

1. Temporal Matching Kernel with Embedded Stability-Sensitive Filter      
*2017-12*     

1. [Circulant Temporal Encoding for Video Retrieval and Temporal Alignment](http://cn.arxiv.org/abs/1506.02588)     
*2015-06-08* [paper](https://arxiv.org/abs/1506.02588)     
$\bullet \bullet$ Circulant    
使用复数处理特征，以达到精确匹配；    

1. [Burst-survive Temporal Matching Kernel with Fibonacci Periods](http://150.162.46.34:8080/icassp2019/ICASSP2019/pdfs/0002062.pdf)     
ICASSP 2019 *2019* [paper](http://150.162.46.34:8080/icassp2019/ICASSP2019/pdfs/0002062.pdf) | [python](https://github.com/fyang93/BURST)          

1. [Neighborhood Preserving Hashing for Scalable Video Retrieval](http://openaccess.thecvf.com/content_ICCV_2019/papers/Li_Neighborhood_Preserving_Hashing_for_Scalable_Video_Retrieval_ICCV_2019_paper.pdf)    
ICCV 2019 *2019* 清华深研院 [paper](http://openaccess.thecvf.com/content_ICCV_2019/papers/Li_Neighborhood_Preserving_Hashing_for_Scalable_Video_Retrieval_ICCV_2019_paper.pdf)    



## 3.5 相似度度量
>[序列相似度度量](/ai/data_mining/sequence_alignment/2019/11/05/foundation.html)、[字符串匹配](/software/algorithms/string/2019/10/29/pattern-match-foundation.html)

`sequence matching` · `similarity measure`    
`longest common sub-sequence`     

### 3.5.1 全局匹配
**3.5.1.1 编辑距离**    
1. [A distance measure for video sequence similarity matching](http://www.cs.cuhk.edu.hk/~king/PUB/adjeroh98b.pdf)   
*1998* 香港中文 [paper](http://www.cs.cuhk.edu.hk/~king/PUB/adjeroh98b.pdf)    
`distance measure` · `edit distance` · `sequence-tosequence matching` · `video string`     
**贡献**：在传统 edit distance 上融入了 vstring 的概念，并加入了三种操作来适应序列间的匹配；    
**说明**：vstring 负责序列数据的组织，edit distance 负责非等长数据之间的匹配；        
**算法特点**：对空间特征的鲁棒性要求较高；空间和时间复杂度较高；      
**疑问**：    
- vstring 怎么实现的；    
- edit distance 怎么实现的；     
>感觉 ED 系列的方法都是针对本身就相似的特征，使用串匹配的方法详细计算其相似度，所以更适合用来计算数据之间的相似性，而不适合用在拷贝检测相关问题中；因为拷贝检测问题是为了找出该视频副本，也就是副本和原视频越相似越好；而 ED 则是很客观地给出副本和原视频的不相似程度；      

1. [Comparison of distance measures for video copy detection](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.88.5791&rep=rep1&type=pdf)    
*2001* IBM [paper](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.88.5791&rep=rep1&type=pdf)    
$\bullet \bullet$ IBM    
比较了几种特征度量的方法；    
**特征**：直方图（RGB，HSV，梯度）、局部梯度、不变矩、差分；    
**度量**：Hash（直方图相交，分块），L2（max·min）；     
>针对图像相似度计算做了简单汇总（更像是个博客）；
拿视频当幌子，根本没提序列匹配及时间定位问题；


1. Spatiotemporal sequence matching for efficient video copy detection     
*2005* [Semantic Scholar](https://www.semanticscholar.org/paper/Spatiotemporal-sequence-matching-for-efficient-copy-Kim-Vasudev/59f16dc158240afbe655277c3a94ccfc380e8c31)     

1. [Beyond Distance Measurement: Constructing Neighborhood Similarity for Video Annotation](https://609bfb8a-a-62cb3a1a-s-sites.googlegroups.com/site/mengwangsite/Beyond%20Distance%20Measurement%2C%20Constructing%20Neighborhood%20Similarity%20for%20Video%20Annotation.pdf?attachauth=ANoY7cpOe6s5Ln5nEabdOgssXaRBy07ln5N1ej2ADWkPTd_jSNhoEsjcae21mgLCMAR6bfkr5nKCnkbHJ3FtL8PuoQnJa_PEnauMScYJ4A5jNVq3Qgq26izhAitJJC4nyJmlX_ZcOvkBH5uFXqBWCV2dDG3seMVumKAkOQpJqZltGUUmf6jaKXHomyTLvHIxp-zR-ZHlIlD_btYJnqb4AgaGre0bBxEsaaB6EI1qgon9guO5kN_Zs98kh4KBfhZjnNhYsJP9u3QVYJw4Y8FcA3s_mkXkVOCtfzKpHEKjiIawW8KzLYfbwDe7jYcKZqeiXmW9xYCzv7cT&attredirects=0)    
*2009-04* [paper](https://609bfb8a-a-62cb3a1a-s-sites.googlegroups.com/site/mengwangsite/Beyond%20Distance%20Measurement%2C%20Constructing%20Neighborhood%20Similarity%20for%20Video%20Annotation.pdf?attachauth=ANoY7cpOe6s5Ln5nEabdOgssXaRBy07ln5N1ej2ADWkPTd_jSNhoEsjcae21mgLCMAR6bfkr5nKCnkbHJ3FtL8PuoQnJa_PEnauMScYJ4A5jNVq3Qgq26izhAitJJC4nyJmlX_ZcOvkBH5uFXqBWCV2dDG3seMVumKAkOQpJqZltGUUmf6jaKXHomyTLvHIxp-zR-ZHlIlD_btYJnqb4AgaGre0bBxEsaaB6EI1qgon9guO5kN_Zs98kh4KBfhZjnNhYsJP9u3QVYJw4Y8FcA3s_mkXkVOCtfzKpHEKjiIawW8KzLYfbwDe7jYcKZqeiXmW9xYCzv7cT&attredirects=0)         
邻域度量；     

1. [Visual word proximity and linguistics for semantic video indexing and near-duplicate retrieval](http://www.ee.columbia.edu/~yjiang/publication/cviu09_yjiang.pdf)     
*2009* [paper](http://www.ee.columbia.edu/~yjiang/publication/cviu09_yjiang.pdf)    
$\bullet \bullet$ proximity    
针对关键帧检索任务（通过文字或图像检索），在单帧的局部特征上用词袋模型，合成帧的全局特征，然后用 EMD 算法计算距离；    


1. An image-based near-duplicate video retrieval and localization using improved edit distance    
*2017*    
改进 ED， 可以过滤不相似的帧；    

### 3.5.2 局部匹配
**3.5.2.1 沃特曼**    

1. [Video copy detection by fast sequence matching](http://lbmedia.ece.ucsb.edu/resources/ref/civr09.pdf)     
*2009* [paper](http://lbmedia.ece.ucsb.edu/resources/ref/civr09.pdf)     
$\bullet \bullet$ Fast Sequence    
先前的相似度计算方法是基于关键帧的，没有考虑时间连续性；编辑距离 ED（最长公共子序列是 ED 的特例）虽然考虑了时序，但是他是针对全局序列的匹配，无法应对剪辑和拼接；文章就此提出了针对局部序列匹配的改进版 ED 算法；    
采样：固定时间采样（1s）；    
特征：-VSMF-color（半全局特征，马尔可夫）；       
相似度：一方面，整体框架使用了 [史密斯·沃特曼算法](https://zh.wikipedia.org/wiki/%E5%8F%B2%E5%AF%86%E6%96%AF-%E6%B2%83%E7%89%B9%E6%9B%BC%E7%AE%97%E6%B3%95)，内有 ED 的概念；另一方面，替换操作定义为常量减去两帧之间的距离；     
$$
\begin{align}
v(q_i, r_i) &= c - d(q_i, r_i) \\
d(q_i, r_i) &= \chi^2 = \sum_j {\frac{(q_{ij} - r_{ij})^2}{r_{ij}}} \\
\end{align}
$$
$i$ 是帧号，$x_i$ 是一帧图像的特征向量，$x_{ij}$ 是特征向量中的一个值；    

**3.5.2.2 最优时间公共子序列**    
`Optimal Temporal Common Subsequence`    

1. [Efficient and Effective State-based Framework for News Video Retrival](https://pdfs.semanticscholar.org/554f/724ac379ab70c68f807c208a5a4a8608d6f4.pdf?_ga=2.75141723.833172005.1572513273-129004075.1557370518)    
*2010* [paper](https://pdfs.semanticscholar.org/554f/724ac379ab70c68f807c208a5a4a8608d6f4.pdf?_ga=2.75141723.833172005.1572513273-129004075.1557370518)     
当作多维字符串处理；    
$\bullet \bullet$    

1. The Optimal Temporal Common Subsequence     
*2010* [library](https://ieeexplore.ieee.org/abstract/document/5542904)    

1. [Multiscale video sequence matching for near-duplicate detection and retrieval](http://www.jdl.link/doc/2011/2019110_Multiscale%20video%20sequence%20matching%20for%20near-duplicate%20detection%20and%20retrieval.pdf)    
*2018-05-04* [paper](http://www.jdl.link/doc/2011/2019110_Multiscale%20video%20sequence%20matching%20for%20near-duplicate%20detection%20and%20retrieval.pdf)    
$\bullet \bullet$ MS-VSM    
多阶段检索；     


**3.5.2.3 DTW**    

1. [A Time Warping Based Approach for Video Copy Detection](https://6ed7c0c4-a-62cb3a1a-s-sites.googlegroups.com/site/chihyichiu/material/ICPR_2006.pdf?attachauth=ANoY7cpGVxIAVlysd5XGrdNIXrTk1DWwZ6geM04ej4CG-PEDmpHomXZOGibW1u6GUYFj1cSOM2sx-AE6W2xu6lSE-1NigvSm_V0smhde9tDsikWqEd5i29rdfx1OTzw0VGrMukKQF6Uxp8vTeKrU7Z2ps_QR2HAq4ingB1otjB8v7_el3DIH9F-EPoN8Zx4AOgsOkew2YHW0HY5TMTBFAC1vSg7dRyc62IMO90RKn1cB5Qn5TZ1JYPk%3D&attredirects=0)     
*2006* [paper](https://6ed7c0c4-a-62cb3a1a-s-sites.googlegroups.com/site/chihyichiu/material/ICPR_2006.pdf?attachauth=ANoY7cpGVxIAVlysd5XGrdNIXrTk1DWwZ6geM04ej4CG-PEDmpHomXZOGibW1u6GUYFj1cSOM2sx-AE6W2xu6lSE-1NigvSm_V0smhde9tDsikWqEd5i29rdfx1OTzw0VGrMukKQF6Uxp8vTeKrU7Z2ps_QR2HAq4ingB1otjB8v7_el3DIH9F-EPoN8Zx4AOgsOkew2YHW0HY5TMTBFAC1vSg7dRyc62IMO90RKn1cB5Qn5TZ1JYPk%3D&attredirects=0)   
$\bullet \bullet$ DTW    
文章认为之前的方法速度太慢，且没有考虑视频间序列变化问题；因此进行了如下改进：   
**优化速度**：    
提取关键帧：拉氏变换 + 时序峰值；     
提取片段：基于关键帧，确定可用的起止位置；组合后得到可用的片段；    
**提升准确度**：    
精确计算视频距离（时间差分）：当前对应帧距离 + 关联帧距离（关联帧距离中的最小值）；    
>文章所说的 DTW 中的动态，也只是在候选片段上多跑几次，没有太大的理论意义；    
文章大量篇幅在讲关键帧，但是未曾引用相关论文，且 TW 模块也是；因此论文工作量不足，可信度和理论解释也一般；     


## 3.6 多特征&多模态
1. [A MULTIMODAL VIDEO COPY DETECTION APPROACH WITH SEQUENTIAL PYRAMID MATCHING∗](https://projet.liris.cnrs.fr/imagine/pub/proceedings/ICIP-2011/papers/1569407283.pdf)    
*2011* [paper](https://projet.liris.cnrs.fr/imagine/pub/proceedings/ICIP-2011/papers/1569407283.pdf)    


# 4 应用方向
## 4.1 重复视频检测
>又叫视频拷贝检测，Content Based Copy Detection, CDBC: 作用等同于水印，主要用于版权保护；不同之处在与他是直接从视频本身提取一些特征；     

`video copy detection` · `video forgery detection` · `near-duplicate video detection` · `video tampering` · `video manipulation`        

1. [Real time repeated video sequence identification](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.578.2230&rep=rep1&type=pdf)    
*2003* [paper](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.578.2230&rep=rep1&type=pdf)     


1. [Efficient Near-duplicate Detection and Sub-image Retrieval](http://www.cs.cmu.edu/~rahuls/pub/mm2004-pcasift-rahuls.pdf)     
*2004* [paper](http://www.cs.cmu.edu/~rahuls/pub/mm2004-pcasift-rahuls.pdf)    
哈希；   


1. [Feature statistical retrieval applied to content-based copy identification](https://www-sop.inria.fr/members/Alexis.Joly/ajolyICIP04.pdf)     
*2004* [paper](https://www-sop.inria.fr/members/Alexis.Joly/ajolyICIP04.pdf)    
兴趣点签名，对打数据检索高效；   

1. [Efficient and Effective Video Copy Detection Based on Spatiotemporal Analysis](https://www.iis.sinica.edu.tw/papers/song/15904-F.pdf)    
*2007* [paper](https://www.iis.sinica.edu.tw/papers/song/15904-F.pdf)   

1. [Scalable mining of large video databases using copy detection](http://cedric.cnam.fr/~crucianm/src/poullot08scalable.pdf)   
*2008* [paper](http://cedric.cnam.fr/~crucianm/src/poullot08scalable.pdf)   

1. [A Framework for Handling Spatiotemporal Variations in Video Copy Detection](http://mclab.cs.ccu.edu.tw/files/ken2585699/A%20Framework%20for%20Handling%20Spatiotemporal%20Variations%20in%20Video%20Copy%20Detection/A%20Framework%20for%20Handling%20Spatiotemporal%20Variations%20in%20Video%20Copy%20Detection.rar)   
*2008* [rar](http://mclab.cs.ccu.edu.tw/files/ken2585699/A%20Framework%20for%20Handling%20Spatiotemporal%20Variations%20in%20Video%20Copy%20Detection/A%20Framework%20for%20Handling%20Spatiotemporal%20Variations%20in%20Video%20Copy%20Detection.rar)    

1. [A compact, effective descriptor for video copy detection](http://www.csie.ntnu.edu.tw/~myeh/papers/mm09.pdf)   
*2009* [paper](http://www.csie.ntnu.edu.tw/~myeh/papers/mm09.pdf)    

1. [Video Copy Detection by Fast Sequence Matching ](http://lbmedia.ece.ucsb.edu/resources/ref/civr09.pdf)    
*2009* [paper](http://lbmedia.ece.ucsb.edu/resources/ref/civr09.pdf)    

1. [Scale-Rotation Invariant Pattern Entropy for Keypoint-based Near-Duplicate Detection](http://vireo.cs.cityu.edu.hk/papers/tip09_zhao.pdf)    
*2009* [paper](http://vireo.cs.cityu.edu.hk/papers/tip09_zhao.pdf)    


1. [Realtime near duplicate elimination for web video search with content and context](http://vireo.cs.cityu.edu.hk/papers/TMM_Context_wuxiao.pdf)    
*2009* [paper](http://vireo.cs.cityu.edu.hk/papers/TMM_Context_wuxiao.pdf)   

1. [A Robust and Fast Video Copy Detection System Using Content-Based Fingerprinting](http://www.cs.sjsu.edu/faculty/stamp/papers/topics/topic12/05672596.pdf)     
*2011* [paper](http://www.cs.sjsu.edu/faculty/stamp/papers/topics/topic12/05672596.pdf)     


1. [Frame Fusion for Video Copy Detection](http://www.avc2-lab.net/~eczhu/FILE/J-17.pdf)    
*2011* [paper](http://www.avc2-lab.net/~eczhu/FILE/J-17.pdf)   


1. [Multiple feature hashing for real-time large scale near-duplicate video retrieval](https://nanopdf.com/download/multiple-feature-hashing-for-real-time-large-scale-near_pdf)     
*2011-12* [ppt](https://nanopdf.com/download/multiple-feature-hashing-for-real-time-large-scale-near_pdf)    
发布了数据集 [UQ_VIDEO](http://staff.itee.uq.edu.au/shenht/UQ_VIDEO/)     

1. [Content Based Video Copy Detection: Issues and Practices](http://www.iitg.ac.in/iciss2012/pdf/Tutorials/Sanjoy_Saha.pdf)     
*2012* [paper](http://www.iitg.ac.in/iciss2012/pdf/Tutorials/Sanjoy_Saha.pdf)     


1. [Implementation of a Content Based Video Copy Detection Using Spatio-Temporal Measure](https://pdfs.semanticscholar.org/5faf/d40a490c10866afc0b375e71907b07e421a9.pdf?_ga=2.255512769.833172005.1572513273-129004075.1557370518)    
*2012* [paper](https://pdfs.semanticscholar.org/5faf/d40a490c10866afc0b375e71907b07e421a9.pdf?_ga=2.255512769.833172005.1572513273-129004075.1557370518)     
基于镜头；或许并未考虑序列问题；       


1. [Content-Based Video Copy Detection Benchmarking at TRECVID](https://repository.ubn.ru.nl/bitstream/handle/2066/129924/129924pre.pdf?sequence=3)    
*2014* [paper](https://repository.ubn.ru.nl/bitstream/handle/2066/129924/129924pre.pdf?sequence=3)    

1. [VCDB: A Large-Scale Database for Partial Copy Detection in Videos](http://www.yugangjiang.info/publication/eccv14-VCDB.pdf)    
*2014* [paper](http://www.yugangjiang.info/publication/eccv14-VCDB.pdf)    
发布了数据集    

1. [Detection and Localization of Video Copy-Move Forgery in Temporal and Spatial Domain](https://pdfs.semanticscholar.org/26d2/c8c5ccef3867c3d5d85a0e577b018fd7a525.pdf)    
*2015* [paper](https://pdfs.semanticscholar.org/26d2/c8c5ccef3867c3d5d85a0e577b018fd7a525.pdf)     


1. [Pattern-Based Near-Duplicate Video Retrieval and Localization on Web-Scale Videos](https://www.semanticscholar.org/paper/Pattern-Based-Near-Duplicate-Video-Retrieval-and-on-Chou-Chen/b0a2b8945c947816ff0efa5605016c5ab25ef6a8)   
*2015* [paper](https://www.semanticscholar.org/paper/Pattern-Based-Near-Duplicate-Video-Retrieval-and-on-Chou-Chen/b0a2b8945c947816ff0efa5605016c5ab25ef6a8)    
$\bullet \bullet$     
基于模式的特征处理，过滤不相似的视频；     

1. [Frame-level matching of near duplicate videos based on ternary frame descriptor and iterative refinement](http://ijariie.com/AdminUploadPdf/FRAME_LEVEL_MATCHING_OF_NEAR_DUPLICATE_VIDEOS_BASED_ON_TERNARY_FRAME_DESCRIPTOR_AND_ITERATIVE_REFINEMENT_ijariie5350.pdf)     
ICIP 2015 *2015* [paper](http://ijariie.com/AdminUploadPdf/FRAME_LEVEL_MATCHING_OF_NEAR_DUPLICATE_VIDEOS_BASED_ON_TERNARY_FRAME_DESCRIPTOR_AND_ITERATIVE_REFINEMENT_ijariie5350.pdf)    


1. [Partial Copy Detection in Videos: A Benchmark and An Evaluation of Popular Methods](http://yugangjiang.info/publication/TBD-VCDB.pdf)   
*2016-03-01* [paper](http://yugangjiang.info/publication/TBD-VCDB.pdf)   
$\bullet \bullet$ TBD    
公开 VCDB 数据集，有 10 万条视频，9000 对；深度局部特征+词袋模型；    

1. [Near-Duplicate Video Detection Based on an Approximate Similarity Self-Join Strategy](https://hal.inria.fr/hal-01305691/document)    
*2016-04* [paper](https://hal.inria.fr/hal-01305691/document)    

1. [Near Duplicate Video Retrieval using Spatio Temporal Approach with Multifeature Mechanism](http://www.ijirset.com/upload/2016/june/174_Near.pdf)    
*2016-06* [paper](http://www.ijirset.com/upload/2016/june/174_Near.pdf)    

1. [Near-Duplicate Video Retrieval with Deep Metric Learning](http://openaccess.thecvf.com/content_ICCV_2017_workshops/papers/w5/Kordopatis-Zilos_Near-Duplicate_Video_Retrieval_ICCV_2017_paper.pdf)         
ICCV 2017 workshop *2017* [paper](http://openaccess.thecvf.com/content_ICCV_2017_workshops/papers/w5/Kordopatis-Zilos_Near-Duplicate_Video_Retrieval_ICCV_2017_paper.pdf)     
$\bullet \bullet$ DML       

1. [Video Copyright Detection Using High Level Objects in Video Clip](https://pdfs.semanticscholar.org/15f7/239ba1b1789bccffbcbe8168b2383806ed09.pdf?_ga=2.7552891.833172005.1572513273-129004075.1557370518)     
*2017-12* [paper](https://pdfs.semanticscholar.org/15f7/239ba1b1789bccffbcbe8168b2383806ed09.pdf?_ga=2.7552891.833172005.1572513273-129004075.1557370518)    
$\bullet \bullet$ objects   
基于镜头找相似片段；    

1. [A new technique for video copy-move forgery detection](https://pdfs.semanticscholar.org/738d/9c24ad3b14778454f2333622a59f2b52eb21.pdf?_ga=2.197873775.1153843306.1572339852-129004075.1557370518)     
*2017* [paper](https://pdfs.semanticscholar.org/738d/9c24ad3b14778454f2333622a59f2b52eb21.pdf?_ga=2.197873775.1153843306.1572339852-129004075.1557370518)    

1. [A PatchMatch-based Dense-field Algorithm for Video Copy-Move Detection and Localization](http://cn.arxiv.org/abs/1703.04636)    
*2017-03-14* [paper](https://arxiv.org/abs/1703.04636)    
发布了新的数据集；     

1. [Autoencoder with recurrent neural networks for video forgery detection](http://cn.arxiv.org/abs/1708.08754)     
*2017-08-29* [paper](https://arxiv.org/abs/1708.08754)    

1. [TRECVID 2018: Benchmarking Video Activity Detection, Video Captioning and Matching, Video Storytelling Linking and Video Search](https://hal.archives-ouvertes.fr/hal-01919873/document)   
*2018-11-12* [paper](https://hal.archives-ouvertes.fr/hal-01919873/document)    


1. [A Coarse-to-fine Deep Convolutional Neural Network Framework for Frame Duplication Detection and Localization in Forged Videos](http://cn.arxiv.org/abs/1811.10762)    
*2018-11-27* [paper](https://arxiv.org/abs/1811.10762)   
$\bullet \bullet$ coarse-fine cnn    


1. [Simple Yet Efficient Content Based Video Copy Detection](http://cn.arxiv.org/abs/1804.07019)   
*2018-04-19* [paper](https://arxiv.org/abs/1804.07019)   

1. [Capsule-forensics: Using Capsule Networks to Detect Forged Images and Videos](http://cn.arxiv.org/abs/1810.11215)    
*2018-10-26* [paper](https://arxiv.org/abs/1810.11215)    


1. [Geometrically robust video hashing based on ST-PCT for video copy](https://link.springer.com/article/10.1007/s11042-019-7513-8)     
*2019-04-08*    

1. [Video tampering localisation using features learned from authentic content](https://link.springer.com/content/pdf/10.1007%2Fs00521-019-04272-z.pdf)    
*2019-01-11* [paper](https://link.springer.com/content/pdf/10.1007%2Fs00521-019-04272-z.pdf)    
$\bullet \bullet$ tampering localisation      

1. [We Need No Pixels: Video Manipulation Detection Using Stream Descriptors](https://arxiv.org/abs/1906.08743)     
ICML 2019 Worksop *2019-06-20* [paper](https://arxiv.org/abs/1906.08743)    

1. Partial-copy detection of non-simulated videos using learning at decision level     
*2019*   
$\bullet \bullet$ decision level   

1. [SVD: A Large-Scale Short Video Dataset for Near-Duplicate Video Retrieval](http://openaccess.thecvf.com/content_ICCV_2019/papers/Jiang_SVD_A_Large-Scale_Short_Video_Dataset_for_Near-Duplicate_Video_Retrieval_ICCV_2019_paper.pdf)     
ICCV 2019 *2019* 抖音+南大 lambda [paper](http://openaccess.thecvf.com/content_ICCV_2019/papers/Jiang_SVD_A_Large-Scale_Short_Video_Dataset_for_Near-Duplicate_Video_Retrieval_ICCV_2019_paper.pdf)    
$\bullet \bullet$ SVD    
发布了 SVD 数据集；   

## 4.2 签名验证
`video vreification`     

1. [Online Signature Verification Based on Writer Specific Feature Selection and Fuzzy Similarity Measure](http://cn.arxiv.org/abs/1905.08574)   
CVPR 2019 (Applications to Media Forensics) *2019-05-21* [paper](https://arxiv.org/abs/1905.08574)   


## 4.3 基于内容的视频检索
>CBVR: 用于相似场景检测；    

`content based video retrieval` · `video content identification`    

1. Video sequence matching    
*1998*     
基于动作做的检索；并且进行了时间对齐；    

1. [A Fully Automated Content-Based Video Search Engine Supporting Spatiotemporal Queries](https://pdfs.semanticscholar.org/ad44/ffbad45b2de2147585016e5272a7d745cb57.pdf)     
*1998* [paper](https://pdfs.semanticscholar.org/ad44/ffbad45b2de2147585016e5272a7d745cb57.pdf)     

1. [Retrieval of News Video using Video Sequence Matching](https://lms.comp.nus.edu.sg/sites/default/files/publication-attachments/mmm05-young.pdf)    
*2005* [paper](https://lms.comp.nus.edu.sg/sites/default/files/publication-attachments/mmm05-young.pdf)    

1. [Content based video retrieval systems](http://cn.arxiv.org/abs/1205.1641)    
*2012-05-08* [paper](https://arxiv.org/abs/1205.1641)    

1. [Content Based Video Retrieval](https://pdfs.semanticscholar.org/c0f5/baaf479ed048d7061e4f7fe36919e314eb2c.pdf?_ga=2.231257823.1153843306.1572339852-129004075.1557370518)     
*2016-05* [paper](https://pdfs.semanticscholar.org/c0f5/baaf479ed048d7061e4f7fe36919e314eb2c.pdf?_ga=2.231257823.1153843306.1572339852-129004075.1557370518)    
$\bullet \bullet$ CBVR    

1. [Content-based Video Indexing and Retrieval Using Corr-LDA](http://cn.arxiv.org/abs/1602.08581)    
*2016-02-27* [paper](https://arxiv.org/abs/1602.08581)    

1. [Exploiting detected visual objects for frame-level video filtering](http://net.pku.edu.cn/daim/hongzhi.yin/papers/WWWJ17-Xingzhong.pdf)     
*2017* [paper](http://net.pku.edu.cn/daim/hongzhi.yin/papers/WWWJ17-Xingzhong.pdf)     
$\bullet \bullet$    
融入了目标检测和跟踪；    

1. [Use What You Have: Video Retrieval Using Representations From Collaborative Experts](http://cn.arxiv.org/abs/1907.13487)    
BMVC 2019 *2019-07-31* [paper](https://arxiv.org/abs/1907.13487) | [pytorch](https://github.com/albanie/collaborative-experts)-official       

## 4.4 重定位
>找到给定视频在目标视频中的位置；     

`video relocation`     

1. [AVA: A Video Dataset of Spatio-temporally Localized Atomic Visual Actions](http://cn.arxiv.org/abs/1705.08421)     
CVPR 2018 *2018-05-23* [paper](https://arxiv.org/abs/1705.08421) | [AVA](https://research.google.com/ava/)-dataset         


1. [Video Re-localization](http://cn.arxiv.org/abs/1808.01575)    
ECCV 2018 *2018-08-05* 腾讯 AI Lab + 美国罗切斯特大学 [paper](https://arxiv.org/abs/1808.01575) | [tensorflow](https://github.com/fengyang0317/video_reloc)-official        
重组 ActivityNet 数据集视频，生成了一个符合研究需求的新数据集，并提出一种交叉过滤的双线性匹配模型；        

1. [Spatio-temporal Video Re-localization by Warp LSTM](http://cn.arxiv.org/abs/1905.03922)     
*2019-05-10* [paper](https://arxiv.org/abs/1905.03922)     


## 4.5 跨模态检索
`multi-modal hashing` · `cross-modal retrieval`；    
`siam-network`；    
`Zero-Example Video Retrieval` · `Text-Video Retrieval`；     
`Video-Music Retrieval`；    

| 年份 | AAAI | ICML | NIPS | CVPR | ICCV | ECCV |
| --- | --- | --- | --- | --- | --- | --- |
| 2019 | 2 | 0 |  | 1 |  |  |
| 2018 | 0 |  | 0 | 0 |  | 0 |
| 2017 | 1 |  |  | 0 | 0 |  |
| 2016 | 1 |  |  | 0 |  |  |
| 2015 | 0 |  |  | 1 | 0 |  |
| 2014 | 0 |  |  | 0 |  |  |
| 2013 | 0 |  |  | 0 | 0 |  |


1. [一种多模态融合的网络视频相关性度量方法](http://html.rhhz.net/tis/html/20160311.htm)    
1. [多模态视频分析技术研究与应用](https://www.jishuwen.com/d/2FPy#tuit)    
1. [优酷在多模态内容理解上的研究及应用](https://www.infoq.cn/article/xgP_eyfidAA2l5ShcCPp)     

### 4.5.1 跨模态

1. [Coupled CycleGAN: Unsupervised Hashing Network for Cross-Modal Retrieval](http://cn.arxiv.org/abs/1903.02149)    
AAAI 2019 *2019-03-06* [paper](https://arxiv.org/abs/1903.02149)     
UCH： 为了解决跨模态散列问题，使用 GAN 将特征提取和哈希连接起来；       



### 4.5.2 图片
#### 4.5.2.1 [行人重识别](/ai/cv/human/human_reid/2019/05/14/foundation.html#352-视频)    
#### 4.5.2.2 商品检索
1. [Video2Shop: Exactly Matching Clothes in Videos to Online Shopping Images](http://cn.arxiv.org/abs/1804.05287)  
CVPR 2017 *2018-04-14* 西南交大、阿里巴巴 [paper](https://arxiv.org/abs/1804.05287)     
**AsymNet**: 用 FasterRCNN 检测出物体，然后进行比对；          

1. [Asymmetric Spatio-Temporal Embeddings for Large-Scale Image-to-Video Retrieval](https://pdfs.semanticscholar.org/8e6d/6c4f5696e5e3430e0862e9defc66034e1133.pdf?_ga=2.164909311.1970495203.1573369005-504939339.1571502740)     
BMVC 2018 *2018* [paper](https://pdfs.semanticscholar.org/8e6d/6c4f5696e5e3430e0862e9defc66034e1133.pdf?_ga=2.164909311.1970495203.1573369005-504939339.1571502740)     


### 4.5.3 [文本](/ai/video/video_caption/2019/08/23/foundation.html#4-零样本检索)

#### 4.5.3.1 广告植入
>根据输入的关键词，给出视频中与之呼应的情景片段；    


### 4.5.4 音频

1. [Content-Based Video-Music Retrieval Using Soft Intra-Modal Structure Constraint](http://cn.arxiv.org/abs/1704.06761)  
*2017-04-22* [paper](https://arxiv.org/abs/1704.06761) | [示例](https://youtu.be/ZyINqDMo3Fg) | [tensorflow](https://github.com/csehong/VM-NET)-official    


1. [Cross-modal Embeddings for Video and Audio Retrieval](http://cn.arxiv.org/abs/1801.02200)  
*2018-01-07* [paper](https://arxiv.org/abs/1801.02200) | [Youtube-8m](https://github.com/surisdi/youtube-8m)-训练   



-------------------  
[End](#head)
{:.warning}  


# 附录
## A 参考资料
1. [Cross-Modal Retrieval](https://paperswithcode.com/task/cross-modal-retrieval)-paper_with_code     
1. [InVID H2020 Project](https://zenodo.org/communities/invid-h2020/?page=1&size=20)    
1. [Multiple feature hashing for real-time large scale near-duplicate video retrieval](https://scite.ai/reports/multiple-feature-hashing-for-real-time-JX3G1Y)-引用文献     
1. [scinapse](https://scinapse.io/papers/2165798132)    
1. [video-retrieval](https://github.com/topics/video-retrieval)-github    
1. [爱奇艺视频版权保护技术与维权实践](https://blog.csdn.net/vn9PLgZvnPs1522s82g/article/details/85333786) | [视频回放](https://www.baijiayun.com/web/playback/index?classid=18111593840768&token=kCJkdBjUx0PhKKZLIMQ5hoiYViZO8QEZLKLt7BL9Umj0GUNuUZj_b_JUF7ZGPr3cCqdH1zJ1Si0%20%E2%80%94%E2%80%94%E2%80%94%E2%80%94%E2%80%94%E2%80%94%E2%80%94%E2%80%94%E2%80%94%E2%80%94%E2%80%94%E2%80%94%E2%80%94%E2%80%94%E2%80%94%E2%80%94%20%E7%89%88%E6%9D%83%E5%A3%B0%E6%98%8E%EF%BC%9A%E6%9C%AC%E6%96%87%E4%B8%BACSDN%E5%8D%9A%E4%B8%BB%E3%80%8CLiveVideoStack_%E3%80%8D%E7%9A%84%E5%8E%9F%E5%88%9B%E6%96%87%E7%AB%A0%EF%BC%8C%E9%81%B5%E5%BE%AA%20CC%204.0%20BY-SA%20%E7%89%88%E6%9D%83%E5%8D%8F%E8%AE%AE%EF%BC%8C%E8%BD%AC%E8%BD%BD%E8%AF%B7%E9%99%84%E4%B8%8A%E5%8E%9F%E6%96%87%E5%87%BA%E5%A4%84%E9%93%BE%E6%8E%A5%E5%8F%8A%E6%9C%AC%E5%A3%B0%E6%98%8E%E3%80%82%20%E5%8E%9F%E6%96%87%E9%93%BE%E6%8E%A5%EF%BC%9Ahttps://blog.csdn.net/vn9PLgZvnPs1522s82g/article/details/85333786) | [陈赫](http://beijing2018.livevideostack.com/topic/187)     
从「发布之前」、「分发播放」、「盗版追踪」、「维权处理」四个环节介绍爱奇艺在版权保护方面的相关技术以及具体应用情况；    
1. [awesomeCVpapers](https://github.com/aliensunmin/awesomeCVpapers/blob/master/README.md) ： 特征提取；     

## B 报告
1. ICIP 2017 [Near-Duplicate Video Detection Exploiting Noise Residual Traces](https://pdfs.semanticscholar.org/e604/9608e35f9633bb3c2cf50896f2d26d29a9cd.pdf)    
1. [Introduction to video hashing](http://signal.ee.psu.edu/VideoHashing_Version4.pdf)-limu      

## C 数据集

重复视频检测：    

| 名称 | 类型 | 数量(训练/测试) | 说明 | 发布日期 |
| --- | --- | --- | --- | --- |
| [TRECVID](https://trecvid.nist.gov/) & [data](https://www-nlpir.nist.gov/projects/trecvid/trecvid.data.html) |  |  | 著名的视频拷贝检测竞赛 | 2001~2019 |
| [CC_WEB_VIDEO](http://vireo.cs.cityu.edu.hk/webvideo/) |  |  | 包含颜色亮度变换，画面编辑和拼接 | 2007 |
| [MuscleVCD ST1](https://www.video-comparer.com/product-benchmark.php) |  |  |  |  |
| [UQ_VIDEO](http://staff.itee.uq.edu.au/shenht/UQ_VIDEO/) |  | 169,952 | 查询视频 400 个，检索视频 20 万；单个视频对应的检索视频最多 1000 个；<br>提取到的关键帧有 3,305,525 个；<br>共 15G； | 2011 |
| [Copy-move forgeries dataset](https://sites.google.com/site/rewindpolimi/downloads/datasets/video-copy-move-forgeries-dataset) |  |  |  |  |
| [VCDB](http://www.yugangjiang.info/research/VCDB/) |  |  | 8G | 2014 |
| [FIVR](http://ndd.iti.gr/fivr/) |  | 225,960/100 |  | 2019 |
| [AVA](https://research.google.com/ava/download.html) |  |  |  |  |
| [SVD](https://svdbase.github.io/) | 抖音开源 | 500,000 | ICCV 2019 | 2019 |
|  |  |  |  |  |


## D 项目
1. [ThreatExchange](https://developers.facebook.com/docs/threat-exchange/v4.0)    
[code](https://github.com/facebook/ThreatExchange) | [TMK + PDQF](https://github.com/facebook/ThreatExchange/tree/master/hashing/tmk)-相似视频识别 | [PDQ](https://github.com/facebook/ThreatExchange/tree/master/hashing/pdq)-相似图片识别    
1. [duplicate video search](http://duplicatevideosearch.com/)        

## E 比赛
1. [TREC Video Retrieval Evaluation: TRECVID](https://trecvid.nist.gov/)     

## F 研究员
1. [OLIVES Research](https://ghassanalregib.info/)、[github](https://github.com/olivesgatech)       
