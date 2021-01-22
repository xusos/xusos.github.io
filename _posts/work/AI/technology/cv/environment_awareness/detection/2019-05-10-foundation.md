---
layout: article
title:  "「CV」 目标检测资源汇总"
date:   2019-05-10 15:00:40 +0800
key: ObjectDetection-foundation-20190510
aside:
  toc: true
category: [AI, CV, detection]
tags: 资源
---
<span id='head'></span>
[目标检测概述](/ai/cv/detection/2020/06/04/survey.html)     

<center class="half">
  <img src="/assets/images/cv/detection/overview.png" /><br>图1：目标检测发现路线&emsp;
</center>

<!--more-->  

# 1 综述
1. [Object Detection with Deep Learning: A Review](http://cn.arxiv.org/abs/1807.05511)  
*2018-07-15* [paper](https://arxiv.org/abs/1807.05511)     
$\bullet \bullet$ review     
可看成改版版本的Image Pyramid；​分析了小尺度与预训练模型尺度之间的关系, 提出了Scale Normalization for Image Pyramids (SNIP)：在训练中，每次只回传那些大小在一个预先指定范围内的proposal的gradient，而忽略掉过大或者过小的proposal；在测试中，建立大小不同的Image Pyramid，在每张图上都运行这样一个detector，同样只保留那些大小在指定范围之内的输出结果，最终在一起NMS；这样就可以保证网络总是在同样scale的物体上训练，也就是标题中Scale Normalized的意思；​    

1. [Deep Learning for Generic Object Detection: A Survey](http://cn.arxiv.org/abs/1809.02165)    
IJCV 2018 *2018-09-06* [paper](https://arxiv.org/abs/1809.02165) | [blog](https://www.cnblogs.com/shine-lee/p/10376324.html)-shine-lee | [blog](https://www.jianshu.com/p/9f31a8207440)-Junr_0926 | [blog](http://www.deepsmart.ai/655.html)-wyj2046           
$\bullet \bullet$ generic     

1. [Object Detection in 20 Years: A Survey](http://cn.arxiv.org/abs/1905.05055)    
*2019-03-13* [paper](https://arxiv.org/abs/1905.05055) | [blog](http://element-ui.cn/news/show-24039.aspx) | [blog](https://www.cnblogs.com/carsonzhu/p/10915489.html)-小金乌会发光－Z&M | [blog](https://blog.csdn.net/weixin_42662134/article/details/90479543)-Shida | [blog](https://www.cnblogs.com/zhaojunjie/p/10886099.html)-好好学习，天天向上 | [blog](https://www.yanxishe.com/postDetail/14275)-Albertchen | [blog](https://www.jianshu.com/p/f60a2d729238)-oneoverzero | [blog](https://blog.csdn.net/lyxleft/article/details/92396529)-奔跑的Yancy | [blog](https://zhuanlan.zhihu.com/p/76494575)-HYY CS      
$\bullet \bullet$ 20 years     

1. [A Survey of Deep Learning-based Object Detection](http://cn.arxiv.org/abs/1907.09408)   
*2019-07-11* [paper](https://arxiv.org/abs/1907.09408) | [阅读](/ai/cv/detection/paper_reading/2020/04/11/A-Survey-of-Deep-Learning-based-Object-Detection.html) | [blog](https://zhuanlan.zhihu.com/p/80751176)-Merria28       
$\bullet \bullet$ survey     
文章汇总最新的基于深度学习的目标检测方法、数据集，但不介绍基础知识及深入讨论；   

1. [Deep Domain Adaptive Object Detection: a Survey](http://cn.arxiv.org/abs/2002.06797)    
ICIP 2020 *2020-02-17* [paper](https://arxiv.org/abs/2002.06797)    

# 2 理论

1. [The Relationship Between Precision-Recall and ROC Curves](https://www.biostat.wisc.edu/~page/rocpr.pdf)      
*2006-12-13* [paper](https://www.biostat.wisc.edu/~page/rocpr.pdf)    

1. [Deep Neural Networks for Object Detection](https://papers.nips.cc/paper/5207-deep-neural-networks-for-object-detection.pdf)    
google [paper](https://papers.nips.cc/paper/5207-deep-neural-networks-for-object-detection.pdf)    
目标检测中的神经网络；    

1. [Uncertainty Estimation in One-Stage Object Detection](http://cn.arxiv.org/abs/1905.10296)   
*2019-05-24* [paper](https://arxiv.org/abs/1905.10296)   

1. [Generalized Intersection over Union: A Metric and A Loss for Bounding Box Regression](http://cn.arxiv.org/abs/1902.09630)    
CVPR 2019 *2019-02-25* [paper](https://arxiv.org/abs/1902.09630)   
使用 IoU 设计新的 loss 函数；    

# 3 检测框架

## 3.1 单阶段
1. [You Only Look Once: Unified, Real-Time Object Detection](http://cn.arxiv.org/abs/1506.02640)   
*2015-06-08* [paper](https://arxiv.org/abs/1506.02640) | [home](https://pjreddie.com/darknet/yolo/)  
YOLO    
anchor free?    

1. [SSD: Single Shot MultiBox Detector](http://cn.arxiv.org/abs/1512.02325)    
ECCV 2016 Oral *2015-12-08* ​[Paper](https://arxiv.org/abs/1512.02325) | [caffe](https://github.com/weiliu89/caffe/tree/ssd)-official | [Caffe](https://github.com/chuanqi305/MobileNet-SSD) | [mxnet](https://github.com/zhreshold/mxnet-ssd) | [mxnet](https://github.com/zhreshold/mxnet-ssd.cpp)-cpp | [Keras](https://github.com/rykov8/ssd_keras) | [Keras](https://github.com/pierluigiferrari/ssd_keras) | [Tensorflow](https://github.com/balancap/SSD-Tensorflow) | [Pytorch](https://github.com/amdegroot/ssd.pytorch) | [pytorch-more](https://github.com/qfgaohao/pytorch-ssd) | [TensorRT3](https://github.com/chenzhi1992/TensorRT-SSD) | [TensorRT4](https://github.com/Ghustwb/MobileNet-SSD-TensorRT) | [ncnn](https://github.com/arlose/ncnn-mobilenet-ssd) | [caffe](https://github.com/FreeApe/VGG-or-MobileNet-SSD) | [caffe](https://github.com/canteen-man/MobileNet-SSD-Focal-loss)          
多特征图；  


1. [Feature Pyramid Networks for Object Detection](https://arxiv.org/abs/1612.03144)   
CVPR 2017 *2016-12-09* [paper](https://arxiv.org/abs/1612.03144)  
FPN   
特征金字塔网络​    

1. [YOLO9000: Better, Faster, Stronger](http://cn.arxiv.org/abs/1612.08242)  
*2016-12-25* [paper](https://arxiv.org/abs/1612.08242)   
YOLOv2      

1. [DSSD : Deconvolutional Single Shot Detector](http://cn.arxiv.org/abs/1701.06659)  
*2017-01-23* [paper](https://arxiv.org/abs/1701.06659) | [mxnet](https://github.com/MTCloudVision/mxnet-dssd)     
DSSD: 使用 Top-Down 网络结构，解决小物体检测的问题​

1. [Enhancement of SSD by concatenating feature maps for object detection](http://cn.arxiv.org/abs/1705.09587)  
*2017-05-26* [paper](https://arxiv.org/abs/1705.09587)      
RSSD       

1. [DSOD: learning deeply supervised object detectors from scratch](http://cn.arxiv.org/abs/1708.01241)  
ICCV 2017 *2017-08-03* [paper](https://arxiv.org/abs/1708.01241) | [caffe](https://github.com/szq0214/DSOD)-official | [pytorch](https://github.com/Ellinier/DSOD-Pytorch-Implementation)  | [pytorch](https://github.com/qqadssp/DSOD-Pytorch) | [pytorch](https://github.com/uoip/SSD-variants) | [pytorch](https://github.com/chenyuntc/dsod.pytorch) | [mxnet](https://github.com/eureka7mt/mxnet-dsod) | [mxnet](https://github.com/leocvml/DSOD-gluon-mxnet) | [tensorflow](https://github.com/Windaway/DSOD-Tensorflow)     
从零开始训练检测模型：网络设计和训练策略；性能提升，速度略慢     
DSOD   
<span id="refinenet">  </span>    
1. [Single-Shot Refinement Neural Network for Object Detection](http://cn.arxiv.org/abs/1711.06897)  
CVPR 2018 *2017-11-18* [paper](https://arxiv.org/abs/1711.06897) | [caffe](https://github.com/sfzhang15/RefineDet)        
RefineDet: 融合了 Faster RCNN 的 RPN 和 FPN 特征融合的策略，检测用的 SSD，提高对小目标的检测效果；     

1. [Receptive Field Block Net for Accurate and Fast Object Detection](http://cn.arxiv.org/abs/1711.07767)     
ECCV 2018 *2017-11-21* [paper](https://arxiv.org/abs/1711.07767) | [pytorch](https://github.com/ruinmessi/RFBNet)-official   
改进 SSD ，多个感受野融合；    
RFBNet    

1. [R-FCN-3000 at 30fps: Decoupling Detection and Classification](http://cn.arxiv.org/abs/1712.01802)  
CVPR 2018 *2017-12-05* [paper](https://arxiv.org/abs/1712.01802)    
R-FCN-3000   
YOLO 9000 将检测数据集和分类数据集合并训练检测模型，本文仅采用具有辅助候选框信息的 ImageNet 数据集训练检测分类器​   


1. [FSSD: Feature Fusion Single Shot Multibox Detector](http://cn.arxiv.org/abs/1712.00960)  
*2017-12-04* [paper](https://arxiv.org/abs/1712.00960) | [caffe](https://github.com/lzx1413/CAFFE_SSD/tree/fssd)-official          
FSSD: 特征融合后在下采样，之后进行预测；速度略有降低 1080Ti 上 65 fps，map 提升至 82.7；    
理论上对小目标会更好；    

1. [Single-Shot Object Detection with Enriched Semantics](http://cn.arxiv.org/abs/1712.00433)      
cvpr 2018 *2017-12-01* [paper](https://arxiv.org/abs/1712.00433)    
DES: 在 SSD 网络基础上，增加了语义分割分支和全局激活模块；前者增加低层检测特征，后者通过学习特征通道和目标类别的语义关系来进行高层目标检测特征；    ​
<span id="STDN"> </span>    
1. [Scale-Transferrable Object Detection](http://openaccess.thecvf.com/content_cvpr_2018/papers/Zhou_Scale-Transferrable_Object_Detection_CVPR_2018_paper.pdf)      
cvpr 2018 *2017* [paper](http://openaccess.thecvf.com/content_cvpr_2018/papers/Zhou_Scale-Transferrable_Object_Detection_CVPR_2018_paper.pdf)      
STDN: 提高对多尺度的适应性（尤其是小目标）；backbone 使用的是 DenseNet ，检测用的 SSD；引入scale-transfer layer，实现了在几乎不增加参数量和计算量的前提下生成大尺寸的 feature map（其他常见的算法基本上都是采用 deconvolution 或 upsample）；      

1. [YOLOv3: An Incremental Improvement](http://cn.arxiv.org/abs/1804.02767)  
*2018-04-08* [paper](https://arxiv.org/abs/1804.02767) | [home](https://pjreddie.com/darknet/yolo/) | [darknet](https://github.com/pascal1129/yolo_person_detect)-行人 | [darknet](https://github.com/AlexeyAB/darknet) | [tensorflow2](https://github.com/jinfagang/yolov3_tf2) | [复现代码合集](https://mp.weixin.qq.com/s?__biz=MzUxNjcxMjQxNg==&mid=2247494775&idx=2&sn=3ef584edf28b1cad6383933aad081bbb&chksm=f9a19ef8ced617eeb6aa68df649709de7117cc6a64576c8537a6e7a35d16eb1b8cb3ba1e88d4&scene=21#wechat_redirect) | [pytorch](https://github.com/ultralytics/yolov3)-app       
YOLO V3     

1. [R-FCN++: Towards Accurate Region-Based Fully Convolutional Networks for Object Detection](http://www.skicyyu.org/Paper/RFCN_plus_plus.pdf)  
AAAI 2018 *2018-04-27* [paper](http://www.skicyyu.org/Paper/RFCN_plus_plus.pdf)   

1. [Object detection at 200 Frames Per Second](http://cn.arxiv.org/abs/1805.06361)  
*2018-05-16* [paper](https://arxiv.org/abs/1805.06361)    


1. [You Only Look Twice: Rapid Multi-Scale Object Detection In Satellite Imagery](http://cn.arxiv.org/abs/1805.09512)  
*2018-05-24* [paper](https://arxiv.org/abs/1805.09512)   

1. [M2Det: A Single-Shot Object Detector based on Multi-Level Feature Pyramid Network](http://cn.arxiv.org/abs/1811.04533)    
AAAI 2019 *2018-11-12* [paper](https://arxiv.org/abs/1811.04533) | [pytorch](https://github.com/qijiezhao/M2Det)-official    

1. [ThunderNet: Towards Real-time Generic Object Detection](http://cn.arxiv.org/abs/1903.11752)    
*2019-03-28* [paper](https://arxiv.org/abs/1903.11752)  | [paper with code](https://paperswithcode.com/paper/thundernet-towards-real-time-generic-object) | [pytorch](https://github.com/ouyanghuiyu/Thundernet_Pytorch) | [pytorch](https://github.com/saswat0/Thundernet-Object-Detection)
ARM 端首个实时，接近 25fps；    

1. [Libra R-CNN: Towards Balanced Learning for Object Detection](http://cn.arxiv.org/abs/1904.02701)   
CVPR 2019 *2019-04-04* [paper](https://arxiv.org/abs/1904.02701) | [paper with code](https://paperswithcode.com/paper/libra-r-cnn-towards-balanced-learning-for#code) | [mmdetection](A Simple Pooling-Based Design for Real-Time Salient Object Detection)

1. [FCOS: Fully Convolutional One-Stage Object Detection](http://cn.arxiv.org/abs/1904.01355)    
*2019-04-02* [paper](https://arxiv.org/abs/1904.01355) | [pytorch](https://github.com/tianzhi0549/FCOS/)-official     
FCOS    
有无 anchor?    

1. [xYOLO: A Model For Real-Time Object Detection In Humanoid Soccer On Low-End Hardware](https://arxiv.org/abs/1910.03159)    
*2019-10-08* [paper](https://arxiv.org/abs/1910.03159)     
TinyYOLO 上再做改进，速度更快；同时公布了一个足球数据集；       

1. [EfficientDet: Scalable and Efficient Object Detection](http://cn.arxiv.org/abs/1911.09070)     
CVPR 2020 *2019-11-20* [paper](https://arxiv.org/abs/1911.09070) | [tensorflow](https://github.com/google/automl/tree/master/efficientdet)-official | [pytorch](https://github.com/CVUsers/Smart-Retail-By-Efficientdet)-新零售 | [paper with code](https://paperswithcode.com/paper/efficientdet-scalable-and-efficient-object) | [pytorch](https://github.com/zylo117/Yet-Another-EfficientDet-Pytorch) | [pytorch](https://github.com/toandaominh1997/EfficientDet.Pytorch) | [pytorch tvm](https://github.com/murdockhou/Yet-Another-EfficientDet-Pytorch-Convert-ONNX-TVM) | [pytorch tracker](https://github.com/fgabel/EfficientDet-DeepSORT-Tracker)        


1. [YOLOv4: Optimal Speed and Accuracy of Object Detection](http://cn.arxiv.org/abs/2004.10934)     
*2020-04-23* [paper](https://arxiv.org/abs/2004.10934) | [darknet](https://github.com/AlexeyAB/darknet) | [pytorch](https://github.com/ultralytics/yolov3)-app | [如何训练YOLOV4与YOLOV5](https://chtseng.wordpress.com/2020/06/27/%E5%A6%82%E4%BD%95%E8%A8%93%E7%B7%B4yolov4%E8%88%87yolov5/)       

1. YOLOv5      
*2020-06-10* [pytorch](https://github.com/ultralytics/yolov5) | [一些讨论](https://www.jiqizhixin.com/articles/2020-07-10-6)      

1. [OneNet: Towards End-to-End One-Stage Object Detection](http://cn.arxiv.org/abs/2012.05780)    
*2020-12-10* [paper](https://arxiv.org/abs/2012.05780) | [pytorch](https://github.com/PeizeSun/OneNet)-official       
重新定义了 框与真值的绑定策略；     
OneNet    


## 3.2 两阶段

1. [Rich feature hierarchies for accurate object detection and semantic segmentation](https://arxiv.org/abs/1311.2524)     
*2013-11* [Paper](https://arxiv.org/abs/1311.2524)    
RCNN   

1. [Fast R-CNN](http://cn.arxiv.org/abs/1504.08083)   
*2015-04-30* [Paper](https://arxiv.org/abs/1504.08083)   
实现了端到端的检测，与特征共享；    

1. [Faster R-CNN: Towards Real-Time Object Detection with Region Proposal Networks](http://cn.arxiv.org/abs/1505.01497)   
*2015-06* [Paper](https://arxiv.org/abs/1505.01497) | [pytorch](https://ai.yanxishe.com/page/TextTranslation/1304?from=groupmessage)   
提出了锚框（Anchor）这一划时代的思想；    

1. [HyperNet: Towards Accurate Region Proposal Generation and Joint Object Detection](http://cn.arxiv.org/abs/1604.00600)     
*2016-04-03* [paper](https://arxiv.org/abs/1604.00600)     


1. [R-FCN: Object Detection via Region-based Fully Convolutional Networks](http://cn.arxiv.org/abs/1605.06409)    
NIPS 2016 *2016-05-20* 代季锋 [paper](https://arxiv.org/abs/1605.06409) | [caffe](https://github.com/daijifeng001/r-fcn)-official | [mxnet](https://github.com/msracver/Deformable-ConvNets)-official       
RFCN    
对预测特征图引入位置敏感分数图增强特征位置信息，提高检测精度​   

1. [Mask R-CNN](http://cn.arxiv.org/abs/1703.06870)   
CVPR 2017 *2017-03-20* cvpr 2017 [paper](https://arxiv.org/abs/1703.06870) | [keras](https://github.com/matterport/Mask_RCNN) | [detectron](https://github.com/facebookresearch/Detectron)-official | [mxnet](https://github.com/TuSimple/mx-maskrcnn)    
实现分割任务的同时，也提升了检测性能：解决 RoIPooling 在 Pooling 过程中对 RoI 区域产生形变，且位置信息提取不精确的问题；通过改进 Faster R-CNN 结构完成分割任务​

1. [A-Fast-RCNN: Hard Positive Generation via Adversary for Object Detection](http://cn.arxiv.org/abs/1704.03414)  
CVPR 2017 *2017-04-11* [paper](https://arxiv.org/abs/1704.03414) | [caffe](https://github.com/xiaolonw/adversarial-frcnn)      
提出学习一个可以生成遮挡和变形样本的对抗网络，对抗器的目标是生成让目标检测器难以进行分类的样本；在我们的框架中，原始检测器和对抗器都是以联合的方式学习的​

1. [RON-Reverse Connection with Objectness Prior Networks for Object Detection](http://cn.arxiv.org/abs/1707.01691)     
CVPR 2017 *2017-07-06* [paper](https://arxiv.org/abs/1707.01691) | [tensorflow](https://github.com/taokong/RON) | [tensorflow](https://github.com/HiKapok/RON_Tensorflow)      
热度图；    

1. [Cascade R-CNN: Delving into High Quality Object Detection](http://cn.arxiv.org/abs/1712.00726)  
CVPR 2018 *2017-12-03* [paper](https://arxiv.org/abs/1712.00726) | [caffe](https://github.com/zhaoweicai/cascade-rcnn)   
基于two-stage detector；Cascade R-CNN是R-CNN的multi-stage延伸，由一系列随着IOU临界值增加而训练的检测器构成，从而对close false positives更具有选择性；R-CNN阶段的cascade是按顺序训练的，使用一个阶段的输出来训练下一阶段；类似于boostrapping methods，不同点是Cascade R-CNN的重采样过程并不旨在mine hard negatives，而是通过调整bounding boxes，每个阶段的目的都是为了找到一组好的false positive来训练下一阶段​

1. [Path Aggregation Network for Instance Segmentation](http:cn.//arxiv.org/abs/1803.01534)    
CVPR 2018 *2018-03-05* [paper](https://arxiv.org/abs/1803.01534) | [Detection](https://github.com/ShuLiu1993/PANet)-official | [paper with code](https://paperswithcode.com/paper/path-aggregation-network-for-instance) | [keras](https://github.com/YuefeiZ/PANet)        
MaskRCNN 的扩展，处理了 FPN 和自适应 ROI；    

1. [Domain Adaptive Faster R-CNN for Object Detection in the Wild](http://cn.arxiv.org/abs/1803.03243)  
*2018-03-08* [paper](https://arxiv.org/abs/1803.03243)   

1. [Light-Weight RetinaNet for Object Detection](http://cn.arxiv.org/abs/1905.10011)   
*2019-05-24* [paper](https://arxiv.org/abs/1905.10011)   

1. [Sparse R-CNN: End-to-End Object Detection with Learnable Proposals](http://cn.arxiv.org/abs/2011.12450)    
*2020-11-25* [paper](https://arxiv.org/abs/2011.12450) | [pytorch](https://github.com/PeizeSun/SparseR-CNN)-official | [blog](https://zhuanlan.zhihu.com/p/326176927)        
让 anchor 稀疏；    


## 3.3 Anchor free

1. [A closer look: Small object detection in faster R-CNN]()   
无 pdf 介绍了一种生成anchor proposals的改进建议，并对Faster R-CNN进行修改，利用较高分辨率的小目标的feature maps​
https://blog.csdn.net/zhangjunhit/article/details/78900298

1. [Scale-aware Pixel-wise Object Proposal Networks](http://cn.arxiv.org/abs/1601.04798)      
*2016-01-19* [paper](https://arxiv.org/abs/1601.04798)     
[2015.1 - 2015.7] 提出Scale-aware Pixel-wise Object Proposal（SPOP）网络，可以生成具有高召回率和平均最佳重叠（ABO）的proposals，即使对于小目标也是如此；另外，引入了一个类似分段的像素定位网络来密集预测每个像素的对象坐标，并开发了一种尺度感知对象定位策略，该策略将来自大尺寸和小尺寸网络的预测与加权机制相结合，以提高各种对象尺寸的坐标预测精度​

1. [End-to-End Object Detection with Fully Convolutional Network](https://arxiv.org/abs/2012.03544)   
*2020-12-07* [paper](https://arxiv.org/abs/2012.03544) | [pytorch](https://github.com/Megvii-BaseDetection/DeFCN)-official       
端到端，无需人工设计 anchor 和 nms；     

## 3.4 Transformer
1. [End-to-End Object Detection with Transformers](http://cn.arxiv.org/abs/2005.12872)     
*2020-05-26*  facebook [paper](https://arxiv.org/abs/2005.12872) | [pytorch](https://github.com/facebookresearch/detr) | [blog](https://zhuanlan.zhihu.com/p/48508221)      
DETR    

1. [Deformable DETR: Deformable Transformers for End-to-End Object Detection](http://cn.arxiv.org/abs/2010.04159)    
*2020-10-08* 商汤 [paper](https://arxiv.org/abs/2010.04159)    
形变卷积提速，提升小物体精度；     

1. [DETR for Pedestrian Detection](http://cn.arxiv.org/abs/2012.06785)    
*2020-12-12* [paper](https://arxiv.org/abs/2012.06785)    
改进了 transformer 应对遮挡问题的缺陷；   

1. [Toward Transformer-Based Object Detection](http://cn.arxiv.org/abs/2012.09958)    
*2020-12-17* [paper](https://arxiv.org/abs/2012.09958)    


> 无类别    

1. [Learning Objectness from Sonar Images for Class-Independent Object Detection](http://cn.arxiv.org/abs/1907.00734)   
*2019-07-01* [paper](https://arxiv.org/abs/1907.00734) | [github](https://github.com/mvaldenegro/marine-debris-fls-datasets)      
没有类别信息的情况下，检测物体；通过输出大量候选框的方式进行物体检出；     

> 基于显著性    

1. [Location, location, location: Satellite image-based real-estate appraisal](http://cn.arxiv.org/abs/2006.11406)  
 *2020-06-04* [paper](https://arxiv.org/abs/2006.11406)     
卫星图像购房价格关系评估；   

> 其他    

<span id="deformable"> </span>
1. [Deformable Convolutional Networks](http://cn.arxiv.org/abs/1703.06211)  
ICCV 2017 oral *2017-03-17* 代季锋 [paper]( https://arxiv.org/abs/1703.06211) | [mxnet](https://github.com/msracver/Deformable-ConvNets) | [blog](https://www.jianshu.com/p/206e7b0cb433)     

1. [Towards Universal Object Detection by Domain Attention](http://cn.arxiv.org/abs/1904.04402)    
CVPR 2019 *2019-04-09* [paper](https://arxiv.org/abs/1904.04402) | [project](http://www.svcl.ucsd.edu/projects/universal-detection/) | [code](https://github.com/xuw080/towards-universal-objects-detection)-official-coming        
用注意力来解决泛化能力不好的问题；    
>感觉就是在灌水；这不就是集成了几个模型嘛，最后融合的时候用所谓的注意力来融合，跟投票机制甚至是整个集成学习都没太大区别；    
另外，这个改进是对基础网络做的，应该放在分类中，而不是局限在检测任务里；     


1. [Receptive Field Block Net for Accurate and Fast Object Detection]()  
RBF [2017.11 - 2018.7]
https://arxiv.org/abs/1711.07767


1. [An Analysis of Scale Invariance in Object Detection - SNIP]()  
SNIP [2017.11 - 2018.3] cvpr2018, 可看成改版版本的Image Pyramid；分析了小尺度与预训练模型尺度之间的关系, 提出了Scale Normalization for Image Pyramids (SNIP)：在训练中，每次只回传那些大小在一个预先指定范围内的proposal的gradient，而忽略掉过大或者过小的proposal；在测试中，建立大小不同的Image Pyramid，在每张图上都运行这样一个detector，同样只保留那些大小在指定范围之内的输出结果，最终在一起NMS；这样就可以保证网络总是在同样scale的物体上训练，也就是标题中Scale Normalized的意思​
 https://arxiv.org/abs/1711.08189
http://bit.ly/2yXVg4c

1. [Zero-Shot Detection]()  
[2018.3]
https://arxiv.org/abs/1803.07113

1. [Zero-Shot Object Detection]()  
[2018] eccv,
https://arxiv.org/abs/1804.04340

1. [Zero-Shot Object Detection by Hybrid Region Embedding]()  
[2018]
https://arxiv.org/abs/1805.06157

1. [SAN: Learning Relationship between Convolutional Features for Multi-Scale Object Detection]()  
SAN [2018.8] 提出了Scale Aware Network (SAN)，将来自不同尺度的卷积特征映射到尺度不变的子空间，并设计了一种独特的学习方法，纯粹考虑了没有空间信息的渠道之间的关系；所提出的SAN减少了标度空间中的特征差异并提高了检测精度​
https://arxiv.org/abs/1808.04974v1

1. [Multi-scale Location-aware Kernel Representation for Object Detection]()  
[2018.4] cvpr, 提出了一种新颖的多尺度位置感知核表示（MLKP），将判别性高阶统计量结合到object proposals的表示中以进行有效的对象检测；MLKP基于多项式核近似，可以有效生成低维高阶表示，其固有的位置保持性和敏感性也保证了可以灵活地用于目标检测​
https://arxiv.org/abs/1804.00428
caffe https://github.com/Hwang64/MLKP

1. [CFENet: An Accurate and Efficient Single-Shot Object Detector for Autonomous Driving]()  
CFENet [2018.6 - 2018.10]
https://arxiv.org/abs/1805.09790

1. [RepMet: Representative-based metric learning for classification and one-shot object detection](http://cn.arxiv.org/abs/1806.04728)    
CVPR 2019 *2018-06-12* [paper](https://arxiv.org/abs/1806.04728)    
零样本检测；    

1. [Acquisition of Localization Confidence for Accurate Object Detection]()  
Iou-Net [2018.7.30] ECCV 用来学习来预测每个检测到的边界框与匹配的ground truth 之间的IoU
https://arxiv.org/abs/1807.11590

1. [SOD-MTGAN: Small Object Detection via Multi-Task Generative Adversarial Network]()  
[2018] eccv, 无 pdf提出一个对于小目标检测的标准的端到端的多任务生成对抗网络（MTGAN），适用于任何已有的检测器；In the MTGAN, the generator network produces super-resolved images and the multi-task discriminator network is introduced to distinguish the real high-resolution images from fake ones, predict object categories, and refine bounding boxes, simultaneously. More importantly, the classification and regression losses are back-propagated to further guide the generator network to produce super-resolved images for easier classification and better localization​

1. [MetaAnchor: Learning to Detect Objects with Customized Anchors]()  
MetaAnchor [2018.7 - 2018.11] NIPS； ​旷视科技

1. [CornerNet: Detecting Objects as Paired Keypoints]()  
CornerNet [2018.8] ECCV2018；​密歇根大学
https://arxiv.org/abs/1808.01244
解读 https://zhuanlan.zhihu.com/p/41865617

1. [Deep Feature Pyramid Reconfiguration for Object Detection]()  
[2018.8] eccv, 当前特征金字塔的设计在如何整合不同尺度的语义信息方面仍然不够高效；本文把特征金字塔转换为特征的再组合过程，创造性地提出了一种高度非线性但是计算快速的结构将底层表示和高层语义特征进行整合；该网络由两个模块组成：全局注意力和局部再组合；这两个模块分布能全局和局部地去在不同的空间和尺度上提取任务相关的特征；重要的是，这两个模块具有轻量级、可嵌入和可端到端训练的优点​
https://arxiv.org/abs/1808.07993?context=cs

1. [Recent Advances in Object Detection in the Age of Deep Convolutional Neural Networks]()  
[2018.9] 目标检测综述
https://arxiv.org/abs/1809.03193

1. [Context Refinement for Object Detection]()  
ECCV 2018
http://openaccess.thecvf.com/content_ECCV_2018/papers/Zhe_Chen_Context_Refinement_for_ECCV_2018_paper.pdf

1. [Hybrid Knowledge Routed Modules for Large-scale Object Detection]()  
[2018.10] NIPS；
http://cn.arxiv.org/abs/1810.12681

1. [Polarity Loss for Zero-shot Object Detection]()  
[2018.11] 使用SPP模块通过扩大网络宽度而不是增加深度来生成金字塔形特征图；提出MSCA模块有效地组合了不同规模的上下文信息​
https://arxiv.org/abs/1811.08982

1. [Parallel Feature Pyramid Network for Object Detection]()  
[2018] eccv
http://openaccess.thecvf.com/content_ECCV_2018/papers/Seung-Wook_Kim_Parallel_Feature_Pyramid_ECCV_2018_paper.pdf

1. [YOLO-LITE: A Real-Time Object Detection Algorithm Optimized for Non-GPU Computers]()  
YOLO-LITE [2018.11] ​速度是tiny-yolo的10倍；
https://arxiv.org/abs/1811.05588v1
https://github.com/reu2018dl/yolo-lite
https://mp.weixin.qq.com/s/xNaXPwI1mQsJ2Y7TT07u3g

1. [Progressive Attention Guided Recurrent Network for Salient Object Detection]()  
http://openaccess.thecvf.com/content_cvpr_2018/CameraReady/1235.pdf

1. [Bottom-up Object Detection by Grouping Extreme and Center Points]()  
[2019.1] ​德克萨斯大学奥斯汀分校)​one-stage 中准确度第一；测试耗时333ms； UT Austin；
https://arxiv.org/abs/1901.08043
https://github.com/xingyizhou/ExtremeNet
https://mp.weixin.qq.com/s/Th6vFE9Gy1Wl-Vf_Lz3w8w

1. [Scale-Aware Trident Networks for Object Detection]()  
TridentNet [2019.01] ​中国科学院大学&图森未来； 高 retinanet近 10 个百分点；主要处理了多尺度问题
https://arxiv.org/abs/1901.01892
https://mp.weixin.qq.com/s/7Pi5J8-d1HD2lapAD0_qHA

1. [DeRPN: Taking a further step toward more general object detection]()  
DeRPN [2018.11] ​这篇文章对RPN进行了改进，将anchor box进行了空间宽高解耦，使得anchor选择的复杂度从O(n^2)降到了O(n)
https://arxiv.org/abs/1811.06700v1
https://github.com/HCIILAB/DeRPN
https://mp.weixin.qq.com/s/4nJGdV3qF4IsfxLM8BBeqg


1. [Consistent Optimization for Single-Shot Object Detection]()  
[2019.1]​清华、宾夕法尼亚大学和字节跳动
https://arxiv.org/abs/1901.06563
https://mp.weixin.qq.com/s/4T90Lac_1GX2uy8xtWb1Ng

1. [Multiple receptive fields and small-object-focusing weakly-supervised segmentation network for fast object detection](http://cn.arxiv.org/abs/1904.12619)   
*2019-04-19* [paper](https://arxiv.org/abs/1904.12619)   

1. [A Real-Time Tiny Detection Model for Stem End and Blossom End of Navel Orange](http://cn.arxiv.org/abs/1905.09994)   
*2019-05-24* [paper](https://arxiv.org/abs/1905.09994)   


# 4 技术点

## 4.1 基本配置
#### 4.1.1 backbone

1. [DetNet: A Backbone network for Object Detection](http://cn.arxiv.org/abs/1804.06215)  
ECCV 2018 *2018-04-17* [paper](https://arxiv.org/abs/1804.06215)  | [pytorch](https://github.com/guoruoqian/DetNet_pytorch)     
分析了分类网络用于检测的弊端；较多的下采样降低了检测性能，本文对此设计了新的检测骨干网络 DetNet；​    
DetNet    

#### 4.1.2 Anchors
1. [MetaAnchor: Learning to Detect Objects with Customized Anchors](http://cn.arxiv.org/pdf/1807.00980v2)   
​NIPS 2018 *2018-07* 旷视科技 & 复旦大学 [Paper](https://arxiv.org/abs/1807.00980)   
动态 anchor；    

1. [Region Proposal by Guided Anchoring](http://cn.arxiv.org/abs/1901.03278)   
*2019-01* 香港中文大学-商汤联合实验室&Amazon Rekognition&南洋理工大学 [Paper](https://arxiv.org/abs/1901.03278) | [mmdetection](https://github.com/open-mmlab/mmdetection)   
**Guided Anchoring**:​融合Anchor与关键点   

#### 4.1.3 NMS
1. NMS   
FasterRCNN 中有对其效果进行分析；   

1. [Soft-NMS -- Improving Object Detection With One Line of Code](http://cn.arxiv.org/abs/1704.04503)    
ICCV 2017 *2017-04-14* [Paper](https://arxiv.org/abs/1704.04503) | [code](https://github.com/bharatsingh430/soft-nms)-official   
对遮挡情况提升较多；   

1. [Softer-NMS: Rethinking Bounding Box Regression for Accurate Object Detection](http://cn.arxiv.org/abs/1809.08545)    
CVPR 2019 *2018-09-23* [Paper](https://arxiv.org/abs/1809.08545) | [code](https://github.com/yihui-he/KL-Loss)-official   

1. [Acquisition of Localization Conﬁdence for Accurate Object Detection](http://cn.arxiv.org/abs/1807.11590)   
ECCV 2018 *2018-07-30* [Paper](https://arxiv.org/abs/1807.11590)   
**NMS Network**：设计了 IoU-Net 用来估计 proposal 与其对应 ground-truth 框的 IoU 值，提出了新的边框回归算法以及 NMS 的改进算法；[解读](https://zhuanlan.zhihu.com/p/43590558)   

## 4.2 难点
#### 4.2.1 类别不均衡
1. [Team PFDet's Methods for Open Images Challenge 2019](http://cn.arxiv.org/abs/1910.11534)    
*2019-10-25* [paper](https://arxiv.org/abs/1910.11534)    
针对类别不均衡和联合标注问题做了处理；竞赛的 3、4 名；      

1. [Focal Loss for Dense Object Detection](http://cn.arxiv.org/abs/1708.02002)  
*2017-08-07* Facebook  [paper](https://arxiv.org/abs/1708.02002) | [mxnet](https://github.com/TuSimple/mx-maskrcnn) | [detectron](https://github.com/facebookresearch/Detectron)-official    
RetinaNet    


#### 4.2.3 小目标

1. [Detecting Small Signs from Large Images](http://cn.arxiv.org/abs/1705.08574)  
*2017-06-26* [paper](https://arxiv.org/abs/1705.08574)     
​
1. [Perceptual Generative Adversarial Networks for Small Object Detection](http://cn.arxiv.org/abs/1705.05274)  
*2017-05-14* [paper](https://arxiv.org/abs/1705.05274)  
P-GAN    
将小目标的特征映射到相似的大目标特征上来缩小差别，便能将小目标足够近似到大目标来欺骗判别器，达到小目标检测的目的​

1. [Quantization Mimic: Towards Very Tiny CNN for Object Detection](http://cn.arxiv.org/abs/1805.02152)  
​ECCV 2018 *2017-05-15* 香港中文，商汤 [paper](https://arxiv.org/abs/1805.02152)    
检测，知识蒸馏，架构混合；​   

1. [NAS-FPN: Learning Scalable Feature Pyramid Architecture for Object Detection](http://cn.arxiv.org/abs/1904.07392)    
CVPR 2019 *2019-04-16* [paper](https://arxiv.org/abs/1904.07392) | [tensorflow](https://github.com/tensorflow/tpu/tree/master/models/official/detection)     


1. [Deep High-Resolution Representation Learning for Visual Recognition](http://cn.arxiv.org/abs/1908.07919)    
*2019-08-20* [paper](https://arxiv.org/abs/1908.07919) | [pytorch](https://github.com/HRNet)-official | [paper with code](https://paperswithcode.com/paper/190807919)      
HRNet    

#### 4.2.4  性能

1. [Pelee: A Real-Time Object Detection System on Mobile Devices](http://cn.arxiv.org/abs/1804.06882)  
NIPS 2018 [paper](https://arxiv.org/abs/1804.06882) | [caffe](https://github.com/Robert-JunWang/Pelee)     
适合移动端的检测网络：​轻量、高效的目标检测网络；    


#### 4.2.5 遮挡
1. [RRC: Accurate Single Stage Detector Using Recurrent Rolling Convolution](http://cn.arxiv.org/abs/1704.05776)   
CVPR 2017 *2017-04-19* [paper](https://arxiv.org/abs/1704.05776) | [caffe](https://github.com/xiaohaoChen/rrc_detection)        

## 4.3 创新
#### 4.3.1 物体间关联
1. [Relation Networks for Object Detection](http://cn.arxiv.org/abs/1711.11575)  
CVPR 2018 *2017-11-30* [paper](https://arxiv.org/abs/1711.11575) | [mxnet](https://github.com/msracver/Relation-Networks-for-Object-Detection)-official   
在检测过程中可以通过利用图像中 object 之间的相互关系或者叫图像内容（context）来优化检测效果，这种关系既包括相对位置关系也包括图像特征关系​；   


#### 4.3.2 损失函数
1. [Generalized Intersection over Union: A Metric and A Loss for Bounding Box Regression](https://arxiv.org/abs/1902.09630)     
*2019-02-25* CVPR 2019 [paper](https://arxiv.org/abs/1902.09630)    
GIoU 做 loss；好像没啥提升，1%；     


[训练](/ai/dl/foundation/2019/05/20/foundation.html#322-检测)

> 其他   

1. [MegDet: A Large Mini-Batch Object Detector](http://cn.arxiv.org/abs/1711.07240)     
CVPR 2018 *2017-11-20* [paper](https://arxiv.org/abs/1711.07240)    
mini batch 引发的问题；warmup，GPU BN；     


# 5 应用
[人](/ai/cv/human/human_detection/2019/10/11/foundation.html)、[文本](/ai/cv/ocr/2019/07/27/foundation.html#4-文本检测) 、交通（[车道线](/ai/cv/traffic/traffic_semantic_analysis/2019/05/20/foundation.html)、[交通标志](/ai/cv/traffic/traffic_signals_recognition/2019/10/11/foundation.html)、[车辆](/ai/cv/vehicle/vehicle_detect/2019/08/12/foundation.html)、船体、[安全带](/ai/cv/traffic/driver_analysis/2019/10/10/foundation.html#5-安全带识别)）、商品（Logo、商品）、医疗（肺结节）、[视频](/ai/video/video_detection/2019/05/22/foundation.html) 、航拍、自然（[云层](/ai/cv/nature/sky/2019/10/16/foundation.html#31-检测)）、动物、[水下目标检测](/ai/cv/nature/underwater_image/2020/03/25/foudnation.html#4-目标检测)    

1. [DOTA: A Large-scale Dataset for Object Detection in Aerial Images](https://arxiv.org/abs/1711.10398)   
CVPR 2018 *2017-11-28* [paper](https://arxiv.org/abs/1711.10398)      
航拍    
1. [Animal Detection in Man-made Environments](http://cn.arxiv.org/abs/1910.11443)    
*2019-10-24* [paper](https://arxiv.org/abs/1910.11443)  | [supplementary](http://webdocs.cs.ualberta.ca/~vis/asingh1/docs/animal_detection_supp.pdf)   
居民区动物检测；文章分析了自然场景动物检测无法适用于居住场景；最终使用合成数据集解决了该问题；demo 中有较多标注工具；    


>  3D    

1. [Patch Refinement -- Localized 3D Object Detection](http://cn.arxiv.org/abs/1910.04093)     
NIPS 2019 workshop *2019-10-09* [paper](https://arxiv.org/abs/1910.04093)    

1. [End-to-End Multi-View Fusion for 3D Object Detection in LiDAR Point Clouds](http://cn.arxiv.org/abs/1910.06528)     
CoRL 2019 *2019-10-15* [paper](https://arxiv.org/abs/1910.06528)     
体素 + KITTI、Waymo Open；    

-------------------  
[End](#head)
{:.warning}  


# 附录
## A 参考资料
1. [Deep Learning-Based Real-Time Multiple-Object Detection and Tracking from Aerial Imagery via a Flying Robot with GPU-Based Embedded Devices](https://europepmc.org/article/PMC/6695703)    
1. [CVPR 2017、2018 - 目标检测文章](https://blog.csdn.net/qq_35451572/article/details/80758263)    
1. [object detection](https://www.hidoop.com/object-detection/)    

## B 资源
#### a 论文
- [amusi](https://github.com/amusi/awesome-object-detection)，[韩东](https://handong1587.github.io/deep_learning/2015/10/09/object-detection.html)，[deep learning object detection](https://github.com/hoya012/deep_learning_object_detection)       
- [hoya012](https://github.com/hoya012/deep_learning_object_detection)     

#### b 代码
- 数据增强   
[Paperspace](https://github.com/Paperspace/DataAugmentationForObjectDetection/blob/master/data_aug/data_aug.py)，[maozezhong](https://github.com/maozezhong/CV_ToolBox/blob/master/DataAugForObjectDetection/DataAugmentForObejctDetection.py)    
- [opencv 跟踪检测](https://github.com/Smorodov/Multitarget-tracker)   
- [yolo 小目标检测](https://github.com/avanetten/yolt)    
[mmdetection](https://github.com/open-mmlab/mmdetection)    
[a-PyTorch-Tutorial-to-Object-Detection](https://github.com/sgrvinod/a-PyTorch-Tutorial-to-Object-Detection#training)     
- [nanodet](https://github.com/RangiLyu/nanodet)    
轻量级 anchor free 的检测网络，比 YOLO4-tiny 更快，模型更小；    
arm 端 50m，cpu*4 200ms；1080 gpu 20ms；     

#### c 总结
[物体检测论文阅读路线图](https://mp.weixin.qq.com/s/X2ReSIU9Qq1OA3bywCNNig)，[hoya012](https://github.com/hoya012/deep_learning_object_detection)，[ECCV2018 目标检测](http://bbs.cvmart.net/topics/194/eccv2018-mu-biao-jian-ce-object-detection-suan-fa-zong-lan-bu-fen-han-dai-ma?from=groupmessage)    
美图：[一](https://mp.weixin.qq.com/s/oMs4MEQRwIZfGZa-HmzC_w)，[二](https://mp.weixin.qq.com/s/Uu_4DUqDzkZgEMJ7KenMcg)，[三](https://mp.weixin.qq.com/s/XlVGuoUlQwimTWXEE6gPBQ
https://mp.weixin.qq.com/s/LGj_2Zw6XA_EfZb8Rvv7bg)    
[目标检测研究综述+LocNet](https://zhuanlan.zhihu.com/p/33058849)   
[anchor 机制](https://mp.weixin.qq.com/s/oW4vUx7fXRhMRKh7QSQ5TA)，[yolo2 中的trick](https://mp.weixin.qq.com/s/us0VbQgu8YLNCAU5i_5QuA)   
[NMS](https://mp.weixin.qq.com/s/HeOOHyeeJvAuJr3iNm18Ow)     

## C 数据集

| 名称 | 类型 | 数量(训练/验证/测试) | 说明 | 发布日期 |
| --- | --- | --- | --- | --- |
| [COCO](http://cocodataset.org/) | 通用目标检测 |  | 微软 |  |
| [object365](https://zhuanlan.zhihu.com/p/106830098) |  |  |  |  |
| []() |  |  |  |  |

1. [COCO数据集提取自己需要的类转VOC](http://www.manongjc.com/article/28607.html)      
