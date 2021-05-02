---
layout: article
title:  "「CV」 超分辨率资源汇总"
date:   2019-05-23 14:28:40 +0800
key: super-resolution-foundation-20190523
aside:
  toc: true
category: [AI, CV, super_resolution]
tags: 资源
---
<span id='head'></span>  
>扩大图像的分辨率，获得清晰画质；在医疗和卫星成像上有着重要应用；     

`super resolution`    

<!--more-->
2019 年 超分辨率顶会论文数量真的是爆炸了；
好奇怪，这个方向综述论文出奇的多，别的方向都是总共不过 1-2 篇；        


# 1 综述
1. [Super-resolution image reconstruction: A technical overview](http://www.ee.iisc.ac.in/people/faculty/soma.biswas/STIP_pdf/SR_overview.pdf)   
*2003-05* [paper](http://www.ee.iisc.ac.in/people/faculty/soma.biswas/STIP_pdf/SR_overview.pdf)   

1. [A Survey on Various Single Image Super Resolution Techniques](http://www.ijirset.com/upload/december/24_2012_ece_3_SET%20ISS%202.pdf)   
*2012-12* [paper](http://www.ijirset.com/upload/december/24_2012_ece_3_SET%20ISS%202.pdf)   

1. [Survey on Single image Super Resolution Techniques](https://pdfs.semanticscholar.org/8f69/b4ea2648989d93e69c7cb1c832ba8a3d50ba.pdf)   
*2013-04* [paper](https://pdfs.semanticscholar.org/8f69/b4ea2648989d93e69c7cb1c832ba8a3d50ba.pdf)   

1. [Super-resolution: a comprehensive survey](https://vbn.aau.dk/ws/portalfiles/portal/197899085/super_resolution_survey.pdf)  
*2014* [paper](https://vbn.aau.dk/ws/portalfiles/portal/197899085/super_resolution_survey.pdf)    

1. [A Survey on Various Techniques of Super Resolution Imaging](https://pdfs.semanticscholar.org/801e/9998a66c3dd5cfd7cdd5fe89e1095667652f.pdf)   
*2014-03* [paper](https://pdfs.semanticscholar.org/801e/9998a66c3dd5cfd7cdd5fe89e1095667652f.pdf)   

1. [A Survey on Super-Resolution Methods for Image Reconstruction](https://pdfs.semanticscholar.org/a604/7061996ae8e2ee5acd707cb444cbdb1aa0a7.pdf)   
*2014-03* [paper](https://pdfs.semanticscholar.org/a604/7061996ae8e2ee5acd707cb444cbdb1aa0a7.pdf)   

1. [A Survey of Single Image and Multi Image Super Resolution Techniques](https://pdfs.semanticscholar.org/1306/5e53d38d6057eb98df1b0a75fab5996ce562.pdf)    
*2014-11* [paper](https://pdfs.semanticscholar.org/1306/5e53d38d6057eb98df1b0a75fab5996ce562.pdf)   

1. [A Short Survey of Image Super Resolution Algorithms](https://www.cosmosscholars.com/images/JCSTU%20V2N2/JCSTU-V2N2A3-Liu.pdf)    
*2015* [paper](https://www.cosmosscholars.com/images/JCSTU%20V2N2/JCSTU-V2N2A3-Liu.pdf)   

1. [A Survey on Single Image Super Resolution Techniques](https://pdfs.semanticscholar.org/ba9a/5d7a2ce96ab57c8f088495d3a4a4a8bdff22.pdf)   
*2016* [paper](https://pdfs.semanticscholar.org/ba9a/5d7a2ce96ab57c8f088495d3a4a4a8bdff22.pdf)   

1. [A survey of Super resolution Techniques](https://www.irjet.net/archives/V3/i12/IRJET-V3I12238.pdf)   
*2016-12* [paper](https://www.irjet.net/archives/V3/i12/IRJET-V3I12238.pdf)    

1. [Deep Learning for Single Image Super-Resolution: A Brief Review](http://cn.arxiv.org/abs/1808.03344)   
*2018-08-09* [paper](https://arxiv.org/abs/1808.03344)   

1. [Deep Learning for Image Super-resolution: A Survey](http://cn.arxiv.org/abs/1902.06068)   
*2019-02-16* [paper](https://arxiv.org/abs/1902.06068) | [blog](https://wangxuehui.site/article/a-survey-SR/)       
$\bullet \bullet$   

1. [A Deep Journey into Super-resolution: A survey](http://cn.arxiv.org/abs/1904.07523)   
*2019-04-16* [paper](https://arxiv.org/abs/1904.07523)   

# 2 理论

# 3 基础研究
1. [Learning a Deep Convolutional Network for Image Super-Resolution](http://personal.ie.cuhk.edu.hk/~ccloy/files/eccv_2014_deepresolution.pdf)    
*2014* [paper](http://personal.ie.cuhk.edu.hk/~ccloy/files/eccv_2014_deepresolution.pdf) | [project](http://mmlab.ie.cuhk.edu.hk/projects/SRCNN.html) | [blog](https://zhuanlan.zhihu.com/p/27149743) |      

1. [Image Super-Resolution Using Deep Convolutional Networks](https://arxiv.org/abs/1501.00092)    
*2014-12-31* [paper](https://arxiv.org/abs/1501.00092) | [project](http://mmlab.ie.cuhk.edu.hk/projects/SRCNN.html) | [blog](https://blog.csdn.net/wl1710582732/article/details/78895557) | [blog](https://www.jianshu.com/p/dfe85a3c2096),[tensorflow](https://github.com/wwq-online/SRCNN-REPRODUCTION)            

1. [To learn image super-resolution, use a GAN to learn how to do image degradation first](http://cn.arxiv.org/abs/1807.11458)   
ECCV 2018 *2018-07-30* [paper](https://arxiv.org/abs/1807.11458)   
人工生成的低分辨率图像，和真实自然存在的图像并不相同；本文就对生成真实低分辩率图像做了相关研究；   

# 4 注意力
1. [Hybrid Residual Attention Network for Single Image Super Resolution](http://cn.arxiv.org/abs/1907.05514)   
*2019-07-11* [paper](https://arxiv.org/abs/1907.05514)    

1. [Image Super-Resolution Using Very Deep Residual Channel Attention Networks](http://cn.arxiv.org/abs/1807.02758)   
ECCV 2018 *2018-07-08* [paper](https://arxiv.org/abs/1807.02758) | [pytorch](https://github.com/yulunzhang/RCAN)    
深度残差注意力；       

1. [Second-Order Attention Network for Single Image Super-Resolution](https://www4.comp.polyu.edu.hk/~cslzhang/paper/CVPR19-SAN.pdf)   
CVPR 2019 *2019* 清华、鹏城实验室、香港理工大学、阿里达摩院 [paper](https://www4.comp.polyu.edu.hk/~cslzhang/paper/CVPR19-SAN.pdf) | [PyTorch](https://github.com/daitao/SAN)   
<span id="SAN">**SAN**</span> 二阶注意力网络用于图像超分辨率

# 5 多尺度
1. [Deep Laplacian Pyramid Networks for Fast and Accurate Super-Resolution](http://cn.arxiv.org/abs/1704.03915)   
CVPR 2017 *2017-04-12* [paper](https://arxiv.org/abs/1704.03915)   

1. [Single Image Super-Resolution via Cascaded Multi-Scale Cross Network](http://cn.arxiv.org/abs/1802.08808)   
*2018-02-24* [paper](https://arxiv.org/abs/1802.08808)   

1. [Multi-scale Residual Network for Image Super-Resolution](http://openaccess.thecvf.com/content_ECCV_2018/papers/Juncheng_Li_Multi-scale_Residual_Network_ECCV_2018_paper.pdf)   
ECCV 2018 *2018* [paper](http://openaccess.thecvf.com/content_ECCV_2018/papers/Juncheng_Li_Multi-scale_Residual_Network_ECCV_2018_paper.pdf) | [pytorch](https://github.com/ehumss/MSRN_PyTorch)   
多尺度残差网络；讲述了经典超分辨率网络，都难以复现，扩展性有限；于是提出了新的结构；    

1. [Multi-scale deep neural networks for real image super-resolution](http://cn.arxiv.org/abs/1904.10698)   
*2019-04-24* [paper](https://arxiv.org/abs/1904.10698) | [tensorflow](https://github.com/shangqigao/gsq-image-SR)-offical       

# 6 级联
1. [Fast, Accurate, and Lightweight Super-Resolution with Cascading Residual Network](http://cn.arxiv.org/abs/1803.08664)     
ECCV 2018 *2018-03-23* [paper](https://arxiv.org/abs/1803.08664) | [pytorch](https://github.com/nmhkahn/CARN-pytorch)   
级联残差下的快速、准确、轻量级的超分辨率网络；   

# 7 GAN

1.  [Image super-resolution through deep learning](http://cn.arxiv.org/abs/1501.00092)   
*2014-12-31* [paper](https://arxiv.org/abs/1501.00092) | [tensorflow](https://github.com/david-gpu/srez)    

1.  [Photo-Realistic Single Image Super-Resolution Using a Generative Adversarial Network](http://cn.arxiv.org/abs/1609.04802)     
CVPR 2016 oral *2016-09-15*  [paper](https://arxiv.org/abs/1609.04802) | [torch](https://github.com/leehomyc/Photo-Realistic-Super-Resoluton)    

1.  [EnhanceGAN](https://medium.com/@richardherbert/faces-from-noise-super-enhancing-8x8-images-with-enhancegan-ebda015bb5e0#.io6pskvin)    

1. [ESRGAN: Enhanced Super-Resolution Generative Adversarial Networks](http://cn.arxiv.org/abs/1809.00219)   
ECCV 2018 *2018-09-01* [paper](https://arxiv.org/abs/1809.00219) | [pytorch](https://github.com/xinntao/ESRGAN)-offical   
<span id="ESRGAN">**ESRGAN**</span>

# 8 其他
1. [Accelerating the Super-Resolution Convolutional Neural Network](http://cn.arxiv.org/abs/1608.00367)   
ECCV 2016 *2016-08-01* [paper](https://arxiv.org/abs/1608.00367)   

1. [Pixel Recursive Super Resolution](http://cn.arxiv.org/abs/1702.00783)   
*2017-02-02* google [paper](https://arxiv.org/abs/1702.00783)   

1. [Image Super-Resolution via Deep Recursive Residual Network](http://openaccess.thecvf.com/content_cvpr_2017/papers/Tai_Image_Super-Resolution_via_CVPR_2017_paper.pdf)   
CVPR 2017 *2017* [paper](http://openaccess.thecvf.com/content_cvpr_2017/papers/Tai_Image_Super-Resolution_via_CVPR_2017_paper.pdf)   
<span id="DRRN">**DRRN**</span>

1. [Deep Residual Network with Enhanced Upscaling Module for Super-Resolution](http://openaccess.thecvf.com/content_cvpr_2018_workshops/papers/w13/Kim_Deep_Residual_Network_CVPR_2018_paper.pdf)   
CVPR 2018 *2018* [paper](http://openaccess.thecvf.com/content_cvpr_2018_workshops/papers/w13/Kim_Deep_Residual_Network_CVPR_2018_paper.pdf)   

1. [Deep Back-Projection Networks for Super-Resolution](http://cn.arxiv.org/abs/1803.02735)   
CVPR 2018 *2018-03-07* [paper](https://arxiv.org/abs/1803.02735) | [project](https://alterzero.github.io/projects/DBPN.html) | [pytorch](https://github.com/alterzero/DBPN-Pytorch)-offical      

1. [SRFeat: Single Image Super-Resolution with Feature Discrimination](http://openaccess.thecvf.com/content_ECCV_2018/papers/Seong-Jin_Park_SRFeat_Single_Image_ECCV_2018_paper.pdf)   
ECCV 2018 *2018* [paper](http://openaccess.thecvf.com/content_ECCV_2018/papers/Seong-Jin_Park_SRFeat_Single_Image_ECCV_2018_paper.pdf) | [project](http://cg.postech.ac.kr/research/srfeat/) | [tensorflow](https://github.com/HyeongseokSon1/SRFeat)-offical      
<span id="SRFeat">**SRFeat**</span> 具有特征识别的单个图像超分辨率；作者认为均方误差不足以表示特征图的真实特点；所以，在特征图中加入了对抗性损失；      

1. [Analyzing Perception-Distortion Tradeoff Using Enhanced Perceptual Super-Resolution Network](http://cn.arxiv.org/abs/1811.00344)   
ECCV 2018 *2018-11-01* [paper](https://arxiv.org/abs/1811.00344) | [pytorch](https://github.com/subeeshvasu/2018_subeesh_epsr_eccvw)      
<span id="EPSR">**EPSR**</span> 在失真和质量上做权衡；    

1. [Residual Networks for Light Field Image Super-Resolution](http://openaccess.thecvf.com/content_CVPR_2019/papers/Zhang_Residual_Networks_for_Light_Field_Image_Super-Resolution_CVPR_2019_paper.pdf)   
CVPR 2019 *2019* 北京交通大学、北京航空航天大学 [paper](http://openaccess.thecvf.com/content_CVPR_2019/papers/Zhang_Residual_Networks_for_Light_Field_Image_Super-Resolution_CVPR_2019_paper.pdf) | [pytorch](https://github.com/shuozh/resLF/)   
残差网络用于光场图像超分辨率；   


1. [Natural and Realistic Single Image Super-Resolution With Explicit Natural Manifold Discrimination](http://openaccess.thecvf.com/content_CVPR_2019/papers/Soh_Natural_and_Realistic_Single_Image_Super-Resolution_With_Explicit_Natural_Manifold_CVPR_2019_paper.pdf)   
CVPR 2019 *2019* 首尔国立大学 [paper](http://openaccess.thecvf.com/content_CVPR_2019/papers/Soh_Natural_and_Realistic_Single_Image_Super-Resolution_With_Explicit_Natural_Manifold_CVPR_2019_paper.pdf) | [tensorflow](https://github.com/JWSoh/NatSR)   
<span id="NatSR">**NatSR**</span>  自然、逼真的单图像超分辨率；      

1. [ODE-Inspired Network Design for Single Image Super-Resolution](http://openaccess.thecvf.com/content_CVPR_2019/papers/He_ODE-Inspired_Network_Design_for_Single_Image_Super-Resolution_CVPR_2019_paper.pdf)   
CVPR 2019 *2019* 中科院、中科院大学、阿里巴巴 [paper](http://openaccess.thecvf.com/content_CVPR_2019/papers/He_ODE-Inspired_Network_Design_for_Single_Image_Super-Resolution_CVPR_2019_paper.pdf) | [pytorch](https://github.com/HolmesShuan/OISR-PyTorch)      
<span id="OISR">**OISR**</span> 单幅图像超分辨，常微分方程启发的网络设计

1. [Image Super-Resolution by Neural Texture Transfer](http://cn.arxiv.org/abs/1903.00834)  
CVPR 2019 *2019-03-03* Adobe、田纳西大学 [paper](https://arxiv.org/abs/1903.00834) | [project](http://web.eecs.utk.edu/~zzhang61/project_page/SRNTT/SRNTT.html) | [tensorflow](https://github.com/ZZUTK/SRNTT)-offical   
<span id="SRNTT">**SRNTT**</span> 神经纹理迁移的图像超分辨率；   

1. [Meta-SR: A Magnification-Arbitrary Network for Super-Resolution](http://cn.arxiv.org/abs/1903.00875)   
CVPR 2019 *2019-03-03* 中国科技大学、中科院、旷视、清华 [paper](https://arxiv.org/abs/1903.00875) | [pytorch](https://github.com/XuecaiHu/Meta-SR-Pytorch)-offical       
<span id="Meta-SR">**Meta-SR**</span> 任意缩放因子的超分辨率方法；   

1. [Feedback Network for Image Super-Resolution](http://cn.arxiv.org/abs/1903.09814)   
CVPR 2019 *2019-03-23* 四川大学、加州大学圣巴巴拉分校、大不列颠哥伦比亚大学、韩国仁川国立大学 [paper](https://arxiv.org/abs/1903.09814) | [pytorch](https://github.com/Paper99/SRFBN_CVPR19)-offical  
<span id="SRFBN">**SRFBN**</span> 反馈网络用于图像超分辨；   


1. [Deep Plug-And-Play Super-Resolution for Arbitrary Blur Kernels](http://cn.arxiv.org/abs/1903.12529)   
CVPR 2019 *2019-03-29* 哈尔滨工业大学、香港理工大学、鹏城实验室、阿里达摩院 [paper](https://arxiv.org/abs/1903.12529) | [pytorch](https://github.com/cszn/DPSR)   
<span id="DPSR">**DPSR**</span> 能够应对任意模糊核的即插即用深度超分辨率；   

1. [Blind Super-Resolution With Iterative Kernel Correction](http://cn.arxiv.org/abs/1904.03377)   
CVPR 2019 *2019-04-06* 香港中文大学、哈尔滨工业大学、中科院深圳先进技术研究院-商汤联合实验室 [paper](https://arxiv.org/abs/1904.03377)    
迭代模糊核校正的盲超分辨率；   

1. [Camera Lens Super-Resolution](http://cn.arxiv.org/abs/1904.03378)   
CVPR 2019 *2019-04-06* 中国科技大学 [paper](https://arxiv.org/abs/1904.03378) | [tensorflow](https://github.com/ngchc/CameraSR)-offical   
<span id="CameraSR">**CameraSR**</span> 考虑真实成像环境分辨率和视野关系的镜头超分辨率；   

1. [Towards Real Scene Super-Resolution With Raw Images](http://cn.arxiv.org/abs/1905.12156)   
CVPR 2019 *2019-05-29* 商汤 [paper](https://arxiv.org/abs/1905.12156) | [project](https://sites.google.com/view/xiangyuxu/rawsr_cvpr19) | [code](https://drive.google.com/file/d/1yvCceNAgt4UsxZXahPFBkuL1JXyfgr8B/view)-offical       
Raw 图像的真实场景超分辨率，模拟真实成像过程生成训练数据，基于相机Raw数据进行超分辨率；   

1. [Flickr1024: A Large-Scale Dataset for Stereo Image Super-Resolution](http://cn.arxiv.org/abs/1903.06332)    
ICCV 2019 workshop *2019-03-15* [paper](https://arxiv.org/abs/1903.06332)    

# 9 应用
## 9.1 [视频](/ai/video/video_super_resolution/2019/05/14/foundation.html)    

## 9.2 3D
1. [3D Appearance Super-Resolution With Deep Learning](http://cn.arxiv.org/abs/1906.00925)   
CVPR 2019 *2019-06-03* 瑞士苏黎世联邦理工学院，微软 [paper](https://arxiv.org/abs/1906.00925) | [pytorch](https://github.com/ofsoundof/3D_Appearance_SR)-offical    
<span id="3DASR">**3DASR**</span> 3D 表面超分辨；       

## 9.3 双目
1. [Learning Parallax Attention for Stereo Image Super-Resolution](http://cn.arxiv.org/abs/1903.05784)   
CVPR 2019 *2019-03-14* 国防科技大学、盲信号处理重点实验室 [paper](https://arxiv.org/abs/1903.05784) | [pytorch](https://github.com/LongguangWang/PASSRnet)    
<span id="PASSRnet">**PASSRnet**</span> 双目超分辨率算法，提出并行注意力模型；       


## 9.4 高光谱图像

1. [Hyperspectral Image Super-Resolution With Optimized RGB Guidance](http://openaccess.thecvf.com/content_CVPR_2019/papers/Fu_Hyperspectral_Image_Super-Resolution_With_Optimized_RGB_Guidance_CVPR_2019_paper.pdf)   
CVPR 2019 *2019* 北京理工大学、日本国立情报学研究所、格灵深瞳 [paper](http://openaccess.thecvf.com/content_CVPR_2019/papers/Fu_Hyperspectral_Image_Super-Resolution_With_Optimized_RGB_Guidance_CVPR_2019_paper.pdf)    
高光谱图像超分辨率；    

## 9.5 人脸
1. [Face Super-resolution Guided by Facial Component Heatmaps](https://basurafernando.github.io/papers/XinYuECCV18.pdf)   
ECCV 2018 *2018* [paper](https://basurafernando.github.io/papers/XinYuECCV18.pdf)  
<span id="CARN">**CARN**</span> 针对人脸特性设计了特殊的网络，需要更少的训练样本；数据集用的 DIV2K；易复现；     


-------------------  
[End](#head)   
{:.warning}  

# 附录
## A 参考资料
1. [Intelligent Image Enhancement and Restoration - from Prior Driven Model to Advanced Deep Learning](https://flyywh.github.io/ICME_Tutorial_2019/icme_tutorial.html)       
1. [Hyperspectral-Image-Super-Resolution-Benchmark](https://github.com/junjun-jiang/Hyperspectral-Image-Super-Resolution-Benchmark)    
1. [深度学习方法的超分辨率](https://blog.csdn.net/m0_38129460/article/details/85340774)    
1. [图像超分辨率重构](https://blog.csdn.net/piaoxuezhong/article/details/78503416)   
1. [Super resolution Survey](https://github.com/LokLu/Super_resolution_Survey)   
