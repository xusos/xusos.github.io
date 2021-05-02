---
layout: article
title:  "「CV」 人群计数资源汇总"
date:   2019-05-14 14:06:40 +0800
key: crowd-count-foundation-20190514
aside:
  toc: true
category: [AI, CV, human, crowd_counting]
tags: 资源
---
<span id="head"></span>

<!--more-->

# 1 综述  
1. [A Survey of Human-Sensing: Methods for Detecting Presence, Count, Location, Track, and Identity](http://thiagot.com/papers/teixeira_techrep10_survey_of_human_sensing.pdf)   
CSUR 2010 *2010* [paper](http://thiagot.com/papers/teixeira_techrep10_survey_of_human_sensing.pdf)     

1. [Fast crowd density estimation with convolutional neural networks](https://www.sciencedirect.com/science/article/abs/pii/S0952197615000871)    
AI 2015 *2015* [paper](https://www.sciencedirect.com/science/article/abs/pii/S0952197615000871)   

1. [Crowded Scene Analysis：A Survey](http://cn.arxiv.org/abs/1502.01812)    
IEEE Transactions on Circuits and Systems for Video Technology 2015 *2015-02-06* [paper](https://arxiv.org/abs/1502.01812)    

1. [An Evaluation of Crowd Counting Methods, Features and Regression Models](https://eprints.qut.edu.au/75845/4/75845.pdf)   
CVIU 2015 *2015* [paper](https://eprints.qut.edu.au/75845/4/75845.pdf)    

1. [Advances and Trends in Visual Crowd Analysis: A Systematic Survey and Evaluation of Crowd Modelling Techniques](https://home.isr.uc.pt/~jorge/wp-content/uploads/85.pdf)   
Neurocomputing 2016 *2016* [paper](https://home.isr.uc.pt/~jorge/wp-content/uploads/85.pdf)   

1. [A Survey of Recent Advances in CNN-based Single Image Crowd Counting and Density Estimation](http://cn.arxiv.org/abs/1707.01202)   
PR Letters 2018 *2017-07-05* [paper](https://arxiv.org/abs/1707.01202)   

1. [Beyond Counting：Comparisons of Density Maps for Crowd Analysis Tasks](http://cn.arxiv.org/abs/1705.10118)    
T-CSVT2018 *2017-05-29* [paper](https://arxiv.org/abs/1705.10118)    

# 2 理论

# 3 通用
1. [Crowd Counting Via Scale-adaptive Convolutional Neural Network](https://arxiv.org/abs/1711.04433)   
WACV 2018 *2017-11-13* [paper](http://cn.arxiv.org/abs/1711.04433) | [caffe](https://github.com/miao0913/SaCNN-CrowdCounting-Tencent_Youtu)        
<span id="SaCNN">**SaCNN**</span>      

1. [Revisiting Perspective Information for Efficient Crowd Counting](http://cn.arxiv.org/abs/1807.01989)    
CVPR 2019 *2018-07-05* [paper](https://arxiv.org/abs/1807.01989)   
<span id="PACNN">**PACNN**</span>   

1. [Context-Aware Crowd Counting](http://cn.arxiv.org/abs/1811.10452)   
CVPR 2019 *2018-11-26* [paper](https://arxiv.org/abs/1811.10452) | [pytorch](https://github.com/CommissarMa/Context-Aware_Crowd_Counting-pytorch)       
<span id="CAN">**CAN**</span>   

1. [ADCrowdNet: An Attention-injective Deformable Convolutional Network for Crowd Understanding](http://cn.arxiv.org/abs/1811.11968)   
CVPR 2019 *2018-11-29* [paper](https://arxiv.org/abs/1811.11968)   
<span id="ADCrowdNet">**ADCrowdNet**</span>   

1. [Adaptive Scenario Discovery for Crowd Counting](http://cn.arxiv.org/abs/1812.02393)   
ICASSP 2019 *2018-12-06* [paper](https://arxiv.org/abs/1812.02393)    
<span id="ASD">**ASD**</span>   

1. [Almost Unsupervised Learning for Dense Crowd Counting](https://pdfs.semanticscholar.org/d882/da8d831b7fb6c459f052f9e12c9a3ea9adac.pdf)   
AAAI 2019 *2019* 云从 [paper](https://pdfs.semanticscholar.org/d882/da8d831b7fb6c459f052f9e12c9a3ea9adac.pdf) | [blog](https://www.cnblogs.com/hugeng007/p/9753752.html)     
<span id="GWTA-CCNN">**GWTA-CCNN**</span>     

1. [Scale Pyramid Network for Crowd Counting](http://cn.arxiv.org/abs/1901.06026)    
WACV 2019 *2019-01-17* [paper](https://arxiv.org/abs/1901.06026)    
<span id="SPN">**SPN**</span>   

1. [Exploiting Unlabeled Data in CNNs by Self-supervised Learning to Rank](http://cn.arxiv.org/abs/1902.06285)   
T-PAMI 2019 *2019-02-17* [paper](https://arxiv.org/abs/1902.06285)   
<span id="SL2R">**SL2R**</span>   

1. [Crowd Counting and Density Estimation by Trellis Encoder-Decoder Networks](http://cn.arxiv.org/abs/1903.00853)   
CVPR 2019 *2019-03-03* [paper](https://arxiv.org/abs/1903.00853)   
<span id="TEDnet">**TEDnet**</span>   

1. [Crowd Counting Using Scale-Aware Attention Networks](http://cn.arxiv.org/abs/1903.02025)    
WACV 2019 *2019-03-05* [paper](https://arxiv.org/abs/1903.02025)    
<span id="SAAN">**SAAN**</span>   

1. [Crowd Counting via Multi-View Scale Aggregation Networks]()   
ICME 2019 *2019*    

1. [Dynamic Region Division for Adaptive Learning Pedestrian Counting]()   
ICME 2019 *2019*    

1. [Locality-Constrained Spatial Transformer Network for Video Crowd Counting]()   
ICME 2019 *2019*    

1. [Learning from Synthetic Data for Crowd Counting in the Wild](http://cn.arxiv.org/abs/1903.03303)    
CVPR 2019 *2019-03-08* [paper](https://arxiv.org/abs/1903.03303) | [project](https://gjy3035.github.io/GCC-CL/) | [pytorch](https://github.com/gjy3035/GCC-SFCN) | [dataset](https://mailnwpueducn-my.sharepoint.com/personal/gjy3035_mail_nwpu_edu_cn/Documents/Forms/All.aspx?cid=b7584bbb-7d1a-426a-9520-95b8e3743427&RootFolder=%2Fpersonal%2Fgjy3035_mail_nwpu_edu_cn%2FDocuments%2F%E8%AE%BA%E6%96%87%E5%BC%80%E6%BA%90%E6%95%B0%E6%8D%AE%2FGCC%20Dataset&FolderCTID=0x012000B11760F9CD00774384C33CD380EA40D3)| [标注工具](https://github.com/gjy3035/GCC-CL)            
<span id="CCWld">**CCWld**</span>   
开源了一个数据集 GCC；     

1. [CODA: Counting Objects via Scale-aware Adversarial Density Adaption](http://cn.arxiv.org/abs/1903.10442)   
ICME 2019 *2019-03-25* [paper](https://arxiv.org/abs/1903.10442) | [code](https://github.com/Willy0919/CODA)-offical-coming        
<span id="CODA">**CODA**</span>   

1. [Counting with Focus for Free](http://cn.arxiv.org/abs/1903.12206)   
*2019-03-28* [paper](https://arxiv.org/abs/1903.12206)   

1. [Cross-Line Pedestrian Counting Based on Spatially-Consistent Two-Stage Local Crowd Density Estimation and Accumulation](https://ieeexplore.ieee.org/document/8295124)    
IEEE T-CSVT 2019 *2019* [paper](https://ieeexplore.ieee.org/document/8295124)    

1. [Point in, Box out: Beyond Counting Persons in Crowds](http://cn.arxiv.org/abs/1904.01333)   
CVPR 2019 *2019-04-02* [paper](https://arxiv.org/abs/1904.01333)   
<span id="PSDDN">**PSDDN**</span>   

1. [PCC Net: Perspective Crowd Counting via Spatial Convolutional Network](http://cn.arxiv.org/abs/1905.10085)   
IEEE T-CSVT 2019 *2019-05-24* [paper](https://arxiv.org/abs/1905.10085) | [pytorch](https://github.com/gjy3035/PCC-Net)-offical       
<span id="PCC-Net">**PCC-Net**</span>    
$\bullet \bullet$   

1. [Leveraging Heterogeneous Auxiliary Tasks to Assist Crowd Counting](http://openaccess.thecvf.com/content_CVPR_2019/papers/Zhao_Leveraging_Heterogeneous_Auxiliary_Tasks_to_Assist_Crowd_Counting_CVPR_2019_paper.pdf)   
CVPR 2019 *2019* [paper](http://openaccess.thecvf.com/content_CVPR_2019/papers/Zhao_Leveraging_Heterogeneous_Auxiliary_Tasks_to_Assist_Crowd_Counting_CVPR_2019_paper.pdf)    
<span id="AT-CFCN">**AT-CFCN**</span>   

1. [Wide-Area Crowd Counting via Ground-Plane Density Maps and Multi-View Fusion CNNs](http://openaccess.thecvf.com/content_CVPR_2019/papers/Zhang_Wide-Area_Crowd_Counting_via_Ground-Plane_Density_Maps_and_Multi-View_Fusion_CVPR_2019_paper.pdf)   
CVPR 2019 *2019* [paper](http://openaccess.thecvf.com/content_CVPR_2019/papers/Zhang_Wide-Area_Crowd_Counting_via_Ground-Plane_Density_Maps_and_Multi-View_Fusion_CVPR_2019_paper.pdf)   
<span id="MVMS">**MVMS**</span>   

1. [Residual Regression with Semantic Prior for Crowd Counting](http://openaccess.thecvf.com/content_CVPR_2019/papers/Wan_Residual_Regression_With_Semantic_Prior_for_Crowd_Counting_CVPR_2019_paper.pdf)   
CVPR 2019 *2019* [paper](http://openaccess.thecvf.com/content_CVPR_2019/papers/Wan_Residual_Regression_With_Semantic_Prior_for_Crowd_Counting_CVPR_2019_paper.pdf)    
<span id="RRSP">**RRSP**</span>   

1. [Density Map Regression Guided Detection Network for RGB-D Crowd Counting and Localization](http://openaccess.thecvf.com/content_CVPR_2019/papers/Lian_Density_Map_Regression_Guided_Detection_Network_for_RGB-D_Crowd_Counting_CVPR_2019_paper.pdf)   
CVPR 2019 *2019* [paper](http://openaccess.thecvf.com/content_CVPR_2019/papers/Lian_Density_Map_Regression_Guided_Detection_Network_for_RGB-D_Crowd_Counting_CVPR_2019_paper.pdf)   
<span id="RDNet">**RDNet**</span>   

1. [Recurrent Attentive Zooming for Joint Crowd Counting and Precise Localization](http://openaccess.thecvf.com/content_CVPR_2019/papers/Liu_Recurrent_Attentive_Zooming_for_Joint_Crowd_Counting_and_Precise_Localization_CVPR_2019_paper.pdf)   
CVPR 2019 *2019* [paper](http://openaccess.thecvf.com/content_CVPR_2019/papers/Liu_Recurrent_Attentive_Zooming_for_Joint_Crowd_Counting_and_Precise_Localization_CVPR_2019_paper.pdf)   
<span id="RAZ-Net">**RAZ-Net**</span>   

1. [Content-aware Density Map for Crowd Counting and Density Estimation](http://cn.arxiv.org/abs/1906.07258)    
*2019-06-17* [paper](https://arxiv.org/abs/1906.07258)   

1. [Locate, Size and Count: Accurately Resolving People in Dense Crowds via Detection](http://cn.arxiv.org/abs/1906.07538)   
*2019-06-18* [paper](https://arxiv.org/abs/1906.07538) | [pytorch](https://github.com/val-iisc/lsc-cnn)-offical     

1. [Dense Scale Network for Crowd Counting](http://cn.arxiv.org/abs/1906.09707)   
*2019-06-24* [paper](https://arxiv.org/abs/1906.09707)    

1. [Inverse Attention Guided Deep Crowd Counting Network](http://cn.arxiv.org/abs/1907.01193)   
AVSS 2019 *2019-07-02* [paper](https://arxiv.org/abs/1907.01193)   
<span id="IA-DNN">**IA-DNN**</span>   

1. [C^3 Framework: An Open-source PyTorch Code for Crowd Counting](http://cn.arxiv.org/abs/1907.02724)   
*2019-07-05* [paper](https://arxiv.org/abs/1907.02724) | [pytorch](https://github.com/gjy3035/C-3-Framework)-offical | [blog](https://zhuanlan.zhihu.com/p/65650998)-offical       


# 4 基于视频
1. [Video Crowd Counting via Dynamic Temporal Modeling](http://cn.arxiv.org/abs/1907.02198)   
*2019-07-04* [paper](https://arxiv.org/abs/1907.02198)    


-------------------  
[End](#head)
{:.warning}  


# 附录
## A 参考资料
1. gjy3035. Awesome Crowd Counting. <https://github.com/gjy3035/Awesome-Crowd-Counting>. /2019-07-16.    
1. paper with code. Crowd Counting. <https://paperswithcode.com/task/crowd-counting/codeless>. -/2019-07-16.   
1. [人群计数（Crowd Counting）研究综述](https://mp.weixin.qq.com/s/osG6LuulHApi_kZV2L1VqA)    

## B 性能比对

### ShanghaiTech Part A

| Year-Conference/Journal | Methods           | MAE   | MSE   | PSNR  | SSIM | Params | Pre-trained   Model |
| ---- | ------------------------------------ | ----- | ----- | ----- | ---- | ------ | ------------------- |
| 2016--CVPR | [MCNN](#MCNN)     | 110.2 | 173.2 | 21.4<sup>[CSR](#CSR)</sup> | 0.52<sup>[CSR](#CSR)</sup>  | 0.13M<sup>[SANet](#SANet)</sup>  | None  |
| 2017--AVSS | [CMTL](#CMTL)                                | 101.3 | 152.4 | -  | -  | -  | None        |
| 2017--CVPR | [Switching CNN](#SCNN)                       | 90.4  | 135.0 | -  | -  | 15.11M<sup>[SANet](#SANet)</sup>  | VGG-16      |
| 2017--ICIP | [MSCNN](#MSCNN)                              | 83.8  | 127.4 | -  | -  | -  | -           |
| 2017--ICCV | [CP-CNN](#CP-CNN) | 73.6  | 106.4 | 21.72<sup>[CP-CNN](#CP-CNN)</sup> | 0.72<sup>[CP-CNN](#CP-CNN)</sup>  | 68.4M<sup>[SANet](#SANet)</sup>  | - |
| 2018--AAAI | [TDF-CNN](#TDF-CNN)                          | 97.5  | 145.1 | -  | -  | -  | -           |
| 2018--WACV | [SaCNN](#SaCNN)                              | 86.8  | 139.2 | -  | -  | -  | -           |
| 2018--CVPR | [ACSCP](#ACSCP)                              | 75.7  | 102.7 | -  | -  | 5.1M | None      |
| 2018--CVPR | [D-ConvNet-v1](#D-ConvNet)                   | 73.5  | 112.3 | -  | -  | -  | -           |
| 2018--CVPR | [IG-CNN](#IG-CNN)                            | 72.5  | 118.2 | -  | -  | -  | -           |
| 2018--CVPR | [L2R](#L2R) (Multi-task,   Query-by-example) | 72.0  | 106.6 | -  | -  | -  | VGG-16      |
| 2018--CVPR | [L2R](#L2R) (Multi-task,   Keyword)          | 73.6  | 112.0 | -  | -  | -  | VGG-16      |
| 2018--IJCAI| **[DRSAN](#DRSAN)**                          | 69.3  | **96.4**   | -  | -  | - | -       |
| 2018--ECCV | [ic-CNN](#ic-CNN) (one stage)                | 69.8  | 117.3 | -  | -  | -  | -           |
| 2018--ECCV | [ic-CNN](#ic-CNN) (two stages)               | 68.5  | 116.2 | -  | -  | -  | -           |
| 2018--CVPR | [CSRNet](#CSR)   | 68.2  | 115.0 | 23.79 | 0.76 | 16.26M<sup>[SANet](#SANet)</sup> |VGG-16|
| 2018--ECCV | [SANet](#SANet)                              | 67.0  | 104.5 | -  | -  | 0.91M | None     |
| 2019--AAAI | [GWTA-CCNN](#GWTA-CCNN)                      | 154.7 | 229.4 | -  | -  | -  | -           |
| 2019--ICASSP | [ASD](#ASD)                                | 65.6  | 98.0  | -  | -  | -  | -           |
| 2019--CVPR | [SFCN](#CCWld)                               | 64.8  | 107.5 | -  | -  | -  | -           |
| 2019--CVPR | [TEDnet](#TEDnet)                            | 64.2  | 109.1 | 25.88 | 0.83 | 1.63M | -   |
| 2019--CVPR | [ADCrowdNet](#ADCrowdNet)(AMG-bAttn-DME)     | 63.2  | 98.9  | 24.48 | 0.88 | -     | -   |
| 2019--CVPR | [PACNN](#PACNN)                              | 66.3  | 106.4 | -  | -  | -  | -           |
| 2019--CVPR | [PACNN+CSRNet](#PACNN)                       | 62.4  | 102.0 | -  | -  | -  | -           |
| 2019--CVPR | [CAN](#CAN)                                  | 62.3  | 100.0 | -  | -  | -  | -           |
| 2019--WACV |**[SPN](#SPN)**                               | **61.7** | 99.5 | - | - | -  | -           |

### ShanghaiTech Part B

| Year-Conference/Journal | Methods                          | MAE   | MSE   |
| ---- | ---------------- | ----- | ---- |
| 2016--CVPR | [MCNN](#MCNN)                                 | 26.4  | 41.3  |
| 2017--ICIP | [MSCNN](#MSCNN)                               | 17.7  | 30.2  |
| 2017--AVSS | [CMTL](#CMTL)                                 | 20.0  | 31.1  |
| 2017--CVPR | [Switching CNN](#SCNN)                        | 21.6  | 33.4  |
| 2017--ICCV | [CP-CNN](#CP-CNN)                             | 20.1  | 30.1  |
| 2018--TIP  | [BSAD](#BSAD)                                 | 20.2  | 35.6  |
| 2018--WACV | [SaCNN](#SaCNN)                               | 16.2  | 25.8  |
| 2018--CVPR | [ACSCP](#ACSCP)                               | 17.2  | 27.4  |
| 2018--CVPR | [CSRNet](#CSR)                                | 10.6  | 16.0  |
| 2018--CVPR | [IG-CNN](#IG-CNN)                             | 13.6  | 21.1  |
| 2018--CVPR | [D-ConvNet-v1](#D-ConvNet)                    | 18.7  | 26.0  |
| 2018--CVPR | [DecideNet](#DecideNet)                       | 21.53 | 31.98 |
| 2018--CVPR | [DecideNet + R3](#DecideNet)                  | 20.75 | 29.42 |
| 2018--CVPR | [L2R](#L2R) (Multi-task,   Query-by-example)  | 14.4  | 23.8  |
| 2018--CVPR | [L2R](#L2R) (Multi-task,   Keyword)           | 13.7  | 21.4  |
| 2018--IJCAI| [DRSAN](#DRSAN)                               | 11.1  | 18.2  |
| 2018--AAAI | [TDF-CNN](#TDF-CNN)                           | 20.7  | 32.8  |
| 2018--ECCV | [ic-CNN](#ic-CNN) (one stage)                 | 10.4  | 16.7  |
| 2018--ECCV | [ic-CNN](#ic-CNN) (two stages)                | 10.7  | 16.0  |
| 2018--ECCV | [SANet](#SANet)                               | 8.4   | 13.6  |
| 2019--WACV | [SPN](#SPN)                                   | 9.4   | 14.4  |
| 2019--ICASSP | [ASD](#ASD)                                 | 8.5   | 13.7  |
| 2019--CVPR | [TEDnet](#TEDnet)                             | 8.2   | 12.8  |
| 2019--CVPR | [CAN](#CAN)                                   | 7.8   | 12.2  |
| 2019--CVPR | [ADCrowdNet](#ADCrowdNet)(AMG-attn-DME)       | 7.7   | 12.9  |
| 2019--CVPR | **[ADCrowdNet](#ADCrowdNet)(AMG-DME)**        | **7.6** | 13.9  |
| 2019--CVPR | **[SFCN](#CCWld)**                            | **7.6** | 13.0 |
| 2019--CVPR | [PACNN](#PACNN)                               | 8.9   | 13.5  |
| 2019--CVPR | **[PACNN+CSRNet](#PACNN)**                    | **7.6** | **11.8** |

### UCF-QNRF

| Year-Conference/Journal | Method | C-MAE | C-NAE | C-MSE | DM-MAE | DM-MSE | DM-HI | L- Av. Precision	| L-Av. Recall | L-AUC |
| --- | --- | --- | --- |--- | --- | --- |--- | --- | --- | ---|
| 2013--CVPR | [Idrees 2013](#Idrees2013)<sup>[CL](#CL)</sup>| 315 | 0.63 | 508 | - | - | - | - | - | - |
| 2016--CVPR | [MCNN](#MCNN)<sup>[CL](#CL)</sup> | 277 | 0.55 |  |0.006670| 0.0223 | 0.5354 |59.93% | 63.50% | 0.591|
| 2017--AVSS | [CMTL](#CMTL)<sup>[CL](#CL)</sup>            | 252 | 0.54 | 514 | 0.005932 | 0.0244 | 0.5024 | - | - | - |
| 2017--CVPR | [Switching CNN](#SCNN)<sup>[CL](#CL)</sup>   | 228 | 0.44 | 445 | 0.005673 | 0.0263 | 0.5301 | - | - | - |
| 2018--ECCV | [CL](#CL)     | 132 | 0.26 | 191 | 0.00044| 0.0017 | 0.9131 | 75.8% | 59.75%	| 0.714|
| 2019--CVPR | [TEDnet](#TEDnet)   | 113 | - | 188 | - | - | - | - | - | - |
| 2019--CVPR | [CAN](#CAN)   | 107 | - | 183 | - | - | - | - | - | - |
| 2019--CVPR | **[SFCN](#CCWld)**  | **102.0** | - | **171.4** | - | - | - | - | - | - |


### UCF_CC_50

| Year-Conference/Journal | Methods                         | MAE   | MSE   |
| ---- | ---------------- | ----- | ---- |
| 2013--CVPR | [Idrees 2013](#Idrees2013)                   | 468.0 | 590.3  |
| 2015--CVPR | [Zhang 2015](#Zhang2015)                     | 467.0 | 498.5  |
| 2016--ACM MM | [CrowdNet](#CrowdNet)                      | 452.5 |   -    |
| 2016--CVPR | [MCNN](#MCNN)                                | 377.6 | 509.1  |
| 2016--ECCV | [CNN-Boosting](#CNN-Boosting)                | 364.4 |   -    |
| 2016--ECCV | [Hydra-CNN](#Hydra-CNN)                      | 333.73| 425.26 |
| 2016--ICIP | [Shang 2016](#Shang2016)                     | 270.3 |   -    |
| 2017--ICIP | [MSCNN](#MSCNN)                              | 363.7 | 468.4  |
| 2017--AVSS | [CMTL](#CMTL)                                | 322.8 | 397.9  |
| 2017--CVPR | [Switching CNN](#SCNN)                       | 318.1 | 439.2  |
| 2017--ICCV | [CP-CNN](#CP-CNN)                            | 298.8 | 320.9  |
| 2017--ICCV | [ConvLSTM-nt](#ConvLSTM)                     | 284.5 | 297.1  |
| 2018--TIP  | [BSAD](#BSAD)                                | 409.5 | 563.7  |
| 2018--AAAI | [TDF-CNN](#TDF-CNN)                          | 354.7 | 491.4  |
| 2018--WACV | [SaCNN](#SaCNN)                              | 314.9 | 424.8  |
| 2018--CVPR | [IG-CNN](#IG-CNN)                            | 291.4 | 349.4  |
| 2018--CVPR | [ACSCP](#ACSCP)                              | 291.0 | 404.6  |
| 2018--CVPR | [L2R](#L2R) (Multi-task,   Query-by-example) | 291.5 | 397.6  |
| 2018--CVPR | [L2R](#L2R) (Multi-task,   Keyword)          | 279.6 | 388.9  |
| 2018--CVPR | [D-ConvNet-v1](#D-ConvNet)                   | 288.4 | 404.7  |
| 2018--CVPR | [CSRNet](#CSR)                               | 266.1 | 397.5  |
| 2018--ECCV | [ic-CNN](#ic-CNN) (two stages)               | 260.9 | 365.5  |
| 2018--ECCV | [SANet](#SANet)                              | 258.4 | 334.9  |
| 2018--IJCAI| [DRSAN](#DRSAN)                              | 219.2 | 250.2  |
| 2019--AAAI | [GWTA-CCNN](#GWTA-CCNN)                      | 433.7 | 583.3  |
| 2019--WACV | [SPN](#SPN)                                  | 259.2 | 335.9  |
| 2019--CVPR | [ADCrowdNet](#ADCrowdNet)(DME)               | 257.1 | 363.5  |
| 2019--CVPR | [TEDnet](#TEDnet)                            | 249.4 | 354.5  |
| 2019--CVPR | [PACNN](#PACNN)                              | 267.9 | 357.8  |
| 2019--CVPR | [PACNN+CSRNet](#PACNN)                       | 241.7 | 320.7  |
| 2019--CVPR | [SFCN](#CCWld)                               | 214.2 | 318.2  |
| 2019--CVPR | **[CAN](#CAN)**                              | 212.2 | **243.7**  |
| 2019--ICASSP| **[ASD](#ASD)**                             | **196.2** | 270.9  |

### WorldExpo'10

| Year-Conference/Journal | Method | S1 | S2 | S3 | S4 | S5 | Avg. |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 2015--CVPR | [Zhang 2015](#Zhang2015)              | 9.8  | 14.1  | 14.3  | 22.2 | 3.7  | 12.9 |
| 2016--CVPR | [MCNN](#MCNN)                         | 3.4  | 20.6  | 12.9  | 13.0 | 8.1  | 11.6 |
| 2017--ICIP | [MSCNN](#MSCNN)                       | 7.8  | 15.4  | 14.9  | 11.8 | 5.8  | 11.7 |
| 2017--ICCV | [ConvLSTM-nt](#ConvLSTM)              | 8.6  | 16.9  | 14.6  | 15.4 | 4.0  | 11.9 |
| 2017--ICCV | [ConvLSTM](#ConvLSTM)                 | 7.1  | 15.2  | 15.2  | 13.9 | 3.5  | 10.9 |
| 2017--ICCV | [Bidirectional   ConvLSTM](#ConvLSTM) | 6.8  | 14.5  | 14.9  | 13.5 | 3.1  | 10.6 |
| 2017--CVPR | [Switching CNN](#SCNN)                | 4.4  | 15.7  | 10.0  | 11.0 | 5.9  | 9.4  |
| 2017--ICCV | [CP-CNN](#CP-CNN)                     | 2.9  | 14.7  | 10.5  | 10.4 | 5.8  | 8.86 |
| 2018--AAAI | [TDF-CNN](#TDF-CNN)                   | 2.7  | 23.4  | 10.7  | 17.6 | 3.3  | 11.5 |
| 2018--CVPR | [IG-CNN](#IG-CNN)                     | 2.6  | 16.1  | 10.15 | 20.2 | 7.6  | 11.3 |
| 2018--TIP  | [BSAD](#BSAD)                         | 4.1  | 21.7  | 11.9  | 11.0 | 3.5  | 10.5 |
| 2018--ECCV | [ic-CNN](#ic-CNN)                     | 17.0 | 12.3  | 9.2   | 8.1  | 4.7  | 10.3 |
| 2018--CVPR | [DecideNet](#DecideNet)               | 2.0  | 13.14 | 8.9   | 17.4 | 4.75 | 9.23 |
| 2018--CVPR | **[D-ConvNet-v1](#D-ConvNet)**        | 1.9  | 12.1  | 20.7  | 8.3  | **2.6** | 9.1  |
| 2018--CVPR | **[CSRNet](#CSR)**                    | 2.9  | 11.5  | **8.6** | 16.6 | 3.4 | 8.6 |
| 2018--WACV | [SaCNN](#SaCNN)                       | 2.6  | 13.5  | 10.6  | 12.5 | 3.3  | 8.5  |
| 2018--ECCV | [SANet](#SANet)                       | 2.6  | 13.2  | 9.0   | 13.3 | 3.0  | 8.2  |
| 2018--IJCAI| [DRSAN](#DRSAN)                       | 2.6  | 11.8  | 10.3  | 10.4 | 3.7  | 7.76 |
| 2018--CVPR | [ACSCP](#ACSCP)                       | 2.8  | 14.05 | 9.6   | 8.1  | 2.9  | 7.5  |
| 2019--CVPR | **[TEDnet](#TEDnet)**                 | 2.3  | 10.1  | 11.3  | 13.8 | **2.6**  | 8.0  |
| 2019--CVPR | [PACNN](#PACNN)                       | 2.3  | 12.5  | 9.1   | 11.2 | 3.8  | 7.8  |
| 2019--CVPR | **[ADCrowdNet](#ADCrowdNet)(AMG-bAttn-DME)** | 1.7   | 14.4  | 11.5 | **7.9** | 3.0 | 7.7 |
| 2019--CVPR | **[ADCrowdNet](#ADCrowdNet)(AMG-attn-DME)**  | **1.6** | 13.2 | 8.7 | 10.6 | **2.6** | 7.3 |
| 2019--CVPR | **[CAN](#CAN)**                       | 2.9  | 12.0  | 10.0  | **7.9** | 4.3 | 7.4  |
| 2019--CVPR | **[CAN](#CAN)(ECAN)**                 | 2.4  | **9.4** | 8.8 | 11.2 | 4.0 | **7.2** |



### UCSD

| Year-Conference/Journal | Method | MAE | MSE |
| --- | --- | --- | --- |
| 2015--CVPR | [Zhang 2015](#Zhang2015)                | 1.60 | 3.31 |
| 2016--ECCV | [Hydra-CNN](#Hydra-CNN)                 | 1.65 |  -   |
| 2016--ECCV | [CNN-Boosting](#CNN-Boosting)           | 1.10 |  -   |
| 2016--CVPR | [MCNN](#MCNN)                           | 1.07 | 1.35 |
| 2017--ICCV | [ConvLSTM-nt](#ConvLSTM)                | 1.73 | 3.52 |
| 2017--CVPR | [Switching CNN](#SCNN)                  | 1.62 | 2.10 |
| 2017--ICCV | [ConvLSTM](#ConvLSTM)                   | 1.30 | 1.79 |
| 2017--ICCV | [Bidirectional   ConvLSTM](#ConvLSTM)   | 1.13 | 1.43 |
| 2018--CVPR | [CSRNet](#CSR)                          | 1.16 | 1.47 |
| 2018--CVPR | [ACSCP](#ACSCP)                         | 1.04 | 1.35 |
| 2018--ECCV | [SANet](#SANet)                         | 1.02 | 1.29 |
| 2018--TIP  | [BSAD](#BSAD)                           | 1.00 | 1.40 |
| 2019--WACV | [SPN](#SPN)                             | 1.03 | 1.32 |
| 2019--CVPR | [ADCrowdNet](#ADCrowdNet)(DME)          | 0.98 | 1.25 |
| 2019--CVPR | **[PACNN](#PACNN)**                     | **0.89** | **1.18** |

### Mall

| Year-Conference/Journal | Method | MAE | MSE |
| --- | --- | --- | --- |
| 2012--BMVC | [Chen 2012](#Chen2012)                  | 3.15 | 15.7 |
| 2016--ECCV | [CNN-Boosting](#CNN-Boosting)           | 2.01 |  -   |
| 2017--ICCV | [Bidirectional   ConvLSTM](#ConvLSTM)   | 2.10 | 7.6  |
| 2018--CVPR | **[DecideNet](#DecideNet)**             | **1.52** | **1.90** |
