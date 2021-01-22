---
layout: article
title:  "「CV」 交通信号识别资源汇总"
date:   2019-10-11 10:20:40 +0800
key: signals-recognition-foundation-20191011
aside:
  toc: true
category: [AI, CV, traffic, traffic_signals_recognition]
tags: 资源
---
<span id='head'>
> [通用物体分类资源](/ai/cv/classification/2019/05/15/foundation.html)，[通用目标检测资源](/ai/cv/detection/2019/05/10/foundation.html)，[自动驾驶资源](/ai/cv/traffic/auto_drive/2020/02/14/foundation.html)    

<!--more-->

# 1 综述
1. [Vision-Based Traffic Sign Detection and Analysis for Intelligent Driver Assistance Systems: Perspectives and Survey](http://cvrr.ucsd.edu/publications/2012/Mogelmose_ITS2012.pdf)     
*2012-12-04* [paper](http://cvrr.ucsd.edu/publications/2012/Mogelmose_ITS2012.pdf)    
$\bullet \bullet$ survey     

1. [Ongoing Work on Traffic Lights: Detection and Evaluation](http://cvrr.ucsd.edu/publications/2015/PhilipsenJensenTrivediMogelmose_AVSS2015.pdf)      
*2015* [paper](http://cvrr.ucsd.edu/publications/2015/PhilipsenJensenTrivediMogelmose_AVSS2015.pdf)    
$\bullet \bullet$ Ongoing     

1. [Vision for Looking at Traffic Lights: Issues, Survey, and Perspectives](http://cvrr.ucsd.edu/publications/2016/trafficSignalsITSTrans2016.pdf)      
*2015-12-17* [paper](http://cvrr.ucsd.edu/publications/2016/trafficSignalsITSTrans2016.pdf)    
$\bullet \bullet$ look at     
VIVA 数据集       

1. [Evaluating State-of-the-art Object Detector on Challenging Traffic Light Data](http://openaccess.thecvf.com/content_cvpr_2017_workshops/w9/papers/Jensen_Evaluating_State-Of-The-Art_Object_CVPR_2017_paper.pdf)     
CVPR 2017 *2017-06-27* [paper](http://openaccess.thecvf.com/content_cvpr_2017_workshops/w9/papers/Jensen_Evaluating_State-Of-The-Art_Object_CVPR_2017_paper.pdf)     
$\bullet \bullet$ SOTA    

1. A deep learning approach to traffic lights: Detection, tracking, and classification     
*2017-07-24*   
CCTSDB 数据集，发布了 Bosch Small；     

1. Evaluation of deep neural networks for traffic sign detection systems     
*2018-08* [online](https://www.researchgate.net/publication/326974599_Evaluation_of_Deep_Neural_Networks_for_traffic_sign_detection_systems) | [tensorflow](https://github.com/aarcosg/traffic-sign-detection)      
$\bullet \bullet$    

# 2 理论

# 3 信号分类

1. [The German Traffic Sign Recognition Benchmark:A multi-class classification competition](https://www.ini.rub.de/upload/file/1470692848_f03494010c16c36bab9e/StallkampEtAl_GTSRB_IJCNN2011.pdf)      
*2011* [paper](http://sci-hub.tw/10.1109/IJCNN.2011.6033395)    

1. [Man vs. computer: Benchmarking machine learning algorithms for traffic sign recognition](http://image.diku.dk/igel/paper/MvCBMLAfTSR.pdf)      
*2012* [paper](http://image.diku.dk/igel/paper/MvCBMLAfTSR.pdf)     

1. [Multi-column Deep Neural Networks for Image Classification](/ai/dl/cnn/2019/05/21/foundation.html#MCDNN)    
CVPR 2012 *2012-02-13*    

1. [Traffic Sign Recognition with Multi-Scale Convolutional Networks](http://yann.lecun.com/exdb/publis/pdf/sermanet-ijcnn-11.pdf)     
*2012* [paper](http://yann.lecun.com/exdb/publis/pdf/sermanet-ijcnn-11.pdf)       
GTSRB 数据集，IJCNN 2012 第二名，准确率 98.97%，网络输入使用的是 32x32 的彩色图像，之后的实验中，通过改用灰度图像和增加网络容量，准确率达到 99.17%；    

1. [Traffic Sign Recognition – How far are we from the solution?](https://rodrigob.github.io/documents/2013_ijcnn_traffic_signs.pdf)      
*2013* [paper](https://rodrigob.github.io/documents/2013_ijcnn_traffic_signs.pdf)      

1. [Real-time Illumination-invariant Speed-limit Sign Recognition Based on a Modified Census Transform and Support Vector Machines](http://sci-hub.tw/10.1145/2557977.2558090)      
*2014-01-01* [paper](http://cvpr.yonsei.ac.kr/intranet/journalDownload?sid=370)    
VIVA 数据集     

1. [CNN Design for Real-Time Traffic Sign Recognition](https://pdf.sciencedirectassets.com/278653/1-s2.0-S1877705817X00350/1-s2.0-S1877705817341231/main.pdf?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEHEaCXVzLWVhc3QtMSJIMEYCIQDG5ZIf5tfzMLmgxxmXh5WEZnZNBOgclphqkX%2FWYszC%2BAIhALo5yOb%2BrEvhiUff7QhzyNdfkWhOLFiPhxKG6U1mFixKKrQDCCkQAhoMMDU5MDAzNTQ2ODY1Igz9vX4m6Kk%2FSo8X4ZUqkQOhWjn%2FxAeEnPPCjgkNEEN3WF%2FpufFENZW3Nbz0tuShIFn3QQNMU%2FriS9HOHYiEOmBotTxjUTVPz4kxx9k%2F7%2F32eOTTPftrMqV%2Flp8eGlKSO4EkiuNksPYXK8VBgSAqdcEB1CEVTvNVSQjVsNcq1VMUBod3N7EfV1gYRXaa6Fu%2FPTU126rmcChzAaHf1AGk24hvFxUu39QKvLgKRiEVWoN0%2FsHFpUb4yRa9J6ufqjHOfRXKms5BSmV1ieMNCxpf%2F15bmPf60pbugUA1BTjsUi6E0dX1WdNoL2rwoAfmFHXsmlps4h990qnzAtgTsJ5nTdsCexy9neE2Ecg1js2alIyUK6gBLfnRc%2BygYDKtCznWCR46uNZwAZjCPCFydpggWwHMiwj9HMR9rGgmw%2BO66lMsvuU%2ByefIJ56wTtXcYmZi1eFiov6AUIJn6nA%2FGZGi6vdGkbC%2BPyIG6%2FsUZ27Fg4bknAv0tavhjqQKzR1Nhzl6BdH3R%2Bd92u78g4ZLgqr7G0tHO4YF%2F5KZLGxrV0Gm1gpJHjDxxonyBTrqAbEmQvjUkdbt0q%2FB6gKG60HgxiEIQ%2F4YyumOoCsoxykBrcnQSacFCn2%2B5t1LC6VVCCX66wK0m4JQK3qrmp6q%2BwMWEugRl0oYU%2FqHVc%2FaF7g1VJfcM9%2FBUfuKgeSoHpMgQaoEIMigbhvYgvalOkOPArDt3fgOOY1lQZNFxHmkzNPs8ad7NG%2FgzfQfOK32fPa2xjparItu5UO2VZP3%2Bk5VgSNU70yXgmV73MnzXxzOEIr2IcNSZhyjDpM4aLX4ky%2FJ%2B8%2B1DgsGLdFW916LtDF2zlbekITjRpmdK12GAPrfJJomBFxTwx%2BMQ08hHQ%3D%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20200211T085405Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIAQ3PHCVTYVEPPPZDU%2F20200211%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=3f1719e2ba23810efa24e0d875136f1d197c521e586289e6c00548b70e5f1af1&hash=4437bb8319b52b622f62f016e5337567430cf21db273dccea397519b3bd8f947&host=68042c943591013ac2b2430a89b270f6af2c76d8dfd086a07176afe7c76c2c61&pii=S1877705817341231&tid=spdf-02b29c5a-8af5-4f16-9330-154bcc8b1b14&sid=a0133f61725e1543431bd1550d1654fa63efgxrqa&type=client)      
*2017-04-27* [paper](https://com-mendeley-prod-publicsharing-pdfstore.s3.eu-west-1.amazonaws.com/b685-ELSEVIER/10.1016/j.proeng.2017.09.594/CNN_Design_for_Real_Time_Traffic_Sign_Recognition.pdf?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEHAaCWV1LXdlc3QtMSJIMEYCIQCuIv6tmAEFR%2BH4pyp27KLI07oh6dZ8rFJNl7e1jOHH8AIhAMVvNJpIDC6vZkl1HzN4fD1QHaJWK%2BBSyDu63Vk%2BacmHKvYDCCkQARoMMTA4MTY2MTk0NTA1Igwc%2BwRYqFXPa3oiaKkq0wMOsIXPgQIaY48LBBma%2FEKzZUo60Ea8QYLyz82mCWj0U8WG%2FAyZQihAlrQsNb1D%2FIiimBF7HPH71tzGLHtWocNvrf4HZonIq102%2FFV7ZtOhvZnxZmE83DfTreaSU07hIb%2BlO7Ueu8UHtk4gqH6jIKVeHKjddgMvdgJjjrc%2BzFitKRGf%2FL%2FFTDnbqvDvyvnh0FuJH0kRzKnCDYU4al9N7JphZgzeFE6HmkuS%2Bk5tshE8e8PI1owAKvDUCyj1HtE39SGhngQgPi0db45mwy350e2dH52%2BlEql37ZqQVhjH0oVCsPiNFXutoi7aYVxacEr9VmP6ZfuqzZWX2IJ6Jw26B9mAAVDlRlnNqh1EcU7x06rPL24BYoJfMLI4YRNdxeVQlzc%2BZiR3q2elNBg8qEOcvCU%2BNzoObdh2KQGim4uOS4bcmB542SL3Rj%2BBDQebq6NnAw0UMVvbrw8aROE3w0c23GKKDCVpi%2BuBnmVuBf%2BFlFRtpxY1CRP4CL9ghBPkJ%2FSgLROO%2BTGeXIbFlyusaxz%2BVY27p5TSLcjoW1C22v5r954mktpFKdQ%2F5juwjEE7HojcbsfqpN0T3ZTxWDc6oWYWyIkBGlWf%2BWA4s7XlhAwKkrSL31ABDCUsInyBTruAVz9dQHyeVCapGJgnuq26fKhUS0%2BDzYu6UsdG7JtGVIW9Swo5Q%2FphhB%2BUq59EdN%2BtN%2BCGiSJ1mTs379IAvdykr383mv%2FNqgAwSZLCRGL3MASZLBVZ%2BZNwTtTggZE3y1FoVm5NlKLOf4aibUizN3QHqmX9sg4%2BURZ0TFSfpA7D9BmB4CcYOPkGiVe5tGqVZyLzCbkD8T93Vgso%2BdG9uoLQEljaZYEsh1v2%2FSt4AdtHtodS8XsPQedFjT8VQj%2F%2BvhwM7qeK5J5LL7ck9ELvl9v3v%2FpQRyhiNsBgwsXs0oGKko%2FO%2B%2BMmpMO5T6xHbmk8Zk%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20200211T085551Z&X-Amz-SignedHeaders=host&X-Amz-Expires=299&X-Amz-Credential=ASIARSLZVEVEYOB4N2OT%2F20200211%2Feu-west-1%2Fs3%2Faws4_request&X-Amz-Signature=8e0c2cf9a42e6b687cd2fa2c07f19ed4b65f54279b692b0c99f97364909516f4)     
$\bullet \bullet$    

1. Effective traffic signs recognition via kernel PCA network    
*2018-03-26*    

1. [Efficient Traffic-Sign Recognition with Scale-aware CNN](http://cn.arxiv.org/abs/1805.12289)     
*2018-05-31* [paper](https://arxiv.org/abs/1805.12289)     

1. [Unconstrained Road Marking Recognition with Generative Adversarial Networks](http://cn.arxiv.org/abs/1910.04326)     
*2019-10-10* [paper](https://arxiv.org/abs/1910.04326)     
使用 GAN 去模糊，然后基于原有数据做数据增强；    


# 4 信号检测

1. [Real time visual traffic lights recognition based on Spot Light Detection and adaptive traffic lights templates](http://sci-hub.tw/10.1109/IVS.2009.5164304)     
*2009-07-14* [paper](http://sci-hub.tw/10.1109/IVS.2009.5164304)     
$\bullet \bullet$    
TLR 数据集，自适应模板匹配，交通信号灯识别，对光照和运动模糊不敏感；       

1. [Traffic light recognition using image processing compared to learning processes](http://sci-hub.tw/10.1109/IROS.2009.5353941)     
*2009-11* [paper](http://sci-hub.tw/10.1109/IROS.2009.5353941)     
$\bullet \bullet$    
TLR 数据集，自适应模板匹配，交通信号灯识别，使用了 Adaboost 开发系统；       

1. [Traffic Lights Detection in Adverse Conditions Using Color, Symmetry and Spatiotemporal Information](http://www.wcl.ece.upatras.gr/sites/default/files/TRAFFIC%20LIGHTS%20DETECTION%20-%20213VISAPP%202012.pdf)     
*2012-08-12* [paper](http://www.wcl.ece.upatras.gr/sites/default/files/TRAFFIC%20LIGHTS%20DETECTION%20-%20213VISAPP%202012.pdf)     
$\bullet \bullet$    
TLR 数据集，交通信号灯检测，使用色彩预处理模块，以加强对红色和绿色区域的辨别能力，并处理了“起霜效应”；使用径向变换提升繁华能力；最后使用时空持久性验证最小化误报；可处理雨中，夜间和城市道路等多种情况；    

1. [Traffic Light Detection: A Learning Algorithm and Evaluations on Challenging Dataset](http://cvrr.ucsd.edu/publications/2015/PhilipsenJensenMogelmoseMoeslundTrivedi_ITSC2015.pdf)     
*2015-08-13* [paper](http://cvrr.ucsd.edu/publications/2015/PhilipsenJensenMogelmoseMoeslundTrivedi_ITSC2015.pdf)    
$\bullet \bullet$    

1. Learning Based Traffic Light Detection: Evaluation on Challenging Dataset          
VIVA 数据集     

<span id="tsinghua_paper"> </span>
1. [Traffic-Sign Detection and Classification in the Wild](https://www.cv-foundation.org/openaccess/content_cvpr_2016/papers/Zhu_Traffic-Sign_Detection_and_CVPR_2016_paper.pdf)     
CVPR 2016 *2016* [paper](https://www.cv-foundation.org/openaccess/content_cvpr_2016/papers/Zhu_Traffic-Sign_Detection_and_CVPR_2016_paper.pdf) | [blog](https://segmentfault.com/a/1190000009438113)      
$\bullet \bullet$    
[tsinghua 数据集](#tsinghua)   

1. DeepTLR: A Single Deep Convolutional Network for Detection and Classification of Traffic Lights    
*2016-06*      

1. [SqueezeDet: Unified, Small, Low Power Fully Convolutional Neural Networks for Real-Time Object Detection for Autonomous Driving](http://cn.arxiv.org/abs/1612.01051)    
*2016-12-04* [paper](https://arxiv.org/abs/1612.01051) | [tensorflow](https://github.com/BichenWuUCB/squeezeDet)-official      
$\bullet \bullet$    
修改了锚框，并且用先验知识对图像进行了裁剪；         

1. [Evaluating State-of-the-art Object Detector on Challenging Traffic Light Data](http://openaccess.thecvf.com/content_cvpr_2017_workshops/w9/papers/Jensen_Evaluating_State-Of-The-Art_Object_CVPR_2017_paper.pdf)      
CVPR 2017 *2017* [paper](http://openaccess.thecvf.com/content_cvpr_2017_workshops/w9/papers/Jensen_Evaluating_State-Of-The-Art_Object_CVPR_2017_paper.pdf)    
$\bullet \bullet$    

1. [A Real-Time Chinese Traffic Sign Detection Algorithm Based on Modified YOLOv2](https://www.mdpi.com/1999-4893/10/4/127/pdf)     
*2017-11-16* [paper](https://www.mdpi.com/1999-4893/10/4/127/pdf)     
$\bullet \bullet$    
发布了 CCTSDB 数据集     

1. [Detecting Traffic Lights by Single Shot Detection](http://cn.arxiv.org/abs/1805.02523)        
*2018-05-07* [paper](https://arxiv.org/abs/1805.02523) | [caffe](https://github.com/julimueller/tl_ssd)-official      
$\bullet \bullet$    

1. [Towards Real-Time Traffic Sign Recognition via YOLO on a Mobile GPU](https://iopscience.iop.org/article/10.1088/1742-6596/1096/1/012086/pdf)     
*2018-09* [paper](https://iopscience.iop.org/article/10.1088/1742-6596/1096/1/012086/pdf)    
$\bullet \bullet$    

1. [A YOLO Based Approach for Traffic Sign Detection](https://vikram-mm.github.io/yolo_report.pdf)     
*2018-04-02* [paper](https://vikram-mm.github.io/yolo_report.pdf)     
$\bullet \bullet$    

1. [Traffic Sign and Pedestrian Detection and Handling](https://towardsdatascience.com/deeppicar-part-6-963334b2abe0)     
*2019-05-03* [web](https://towardsdatascience.com/deeppicar-part-6-963334b2abe0)     

1. [Adaptation of a Deep Learning Algorithm for Traffic Sign Detection](https://pdfs.semanticscholar.org/0f98/a5f1dfe74dfd4f9e6f167f6f44df40e83361.pdf?_ga=2.87592472.1245482539.1581322589-504939339.1571502740)     
*2019-07-29* [paper](https://pdfs.semanticscholar.org/0f98/a5f1dfe74dfd4f9e6f167f6f44df40e83361.pdf?_ga=2.87592472.1245482539.1581322589-504939339.1571502740)    
$\bullet \bullet$    

1. [including traffic light recognition in general object detection with yolo2](https://pdfs.semanticscholar.org/2e15/4545b34fec1a46e5cab071f775d4c680e2fa.pdf?_ga=2.35701920.1245482539.1581322589-504939339.1571502740)    
*2019* [paper](https://pdfs.semanticscholar.org/2e15/4545b34fec1a46e5cab071f775d4c680e2fa.pdf?_ga=2.35701920.1245482539.1581322589-504939339.1571502740)    
$\bullet \bullet$    

1. [Improved Traffic Sign Detection and Recognition Algorithm for Intelligent Vehicles](https://www.mdpi.com/1424-8220/19/18/4021/pdf)     
*2019-09-18* [paper](https://www.mdpi.com/1424-8220/19/18/4021/pdf)      
$\bullet \bullet$    

1. [Traffic Sign Classification with Keras and Deep Learning](https://www.pyimagesearch.com/2019/11/04/traffic-sign-classification-with-keras-and-deep-learning/)     
*2019-11-04* [web](https://www.pyimagesearch.com/2019/11/04/traffic-sign-classification-with-keras-and-deep-learning/)    
信号检测识别；    

# 5 车道线分割


-------------------  
[End](#head)
{:.warning}  

# 附录
## A 数据集

| 名称 | 年份 | 地区 | 类型 | 类别数 | 数据量 | 大小(G) | 分类 | 检测 | 分割 |  说明 |  
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| [GTSRB](#GTSRB) | 2011 | 德国 | 标志 | 43 | 39,209<br>12,630 | 0.3 | ✓ |  |  |  丰富，官方教程多 |
| [GTSDB](#GTSDB) | 2012 | 德国 | 标志 |  | 600<br>300 | 1.6 |  | ✓ |  |  |
| [tsinghua](#tsinghua) | 2016 | 中国 | 标志 |  | 100K | 108 |  | ✓ |  |  |
| [TLR](#TLR) | 2010 | 巴黎 | 信号 |  | 10000 |  |  | ✓ |  |  |
| [VIVA](#VIVA) | 2015 |  | 信号灯 | 6 |  |  |  |  |  |  |
| [Bosch](#Bosch) | 2017 | 德国 | 信号灯 |  | 5093<br>8334 | 30 |  |  |  |  |
| [LISA-UCSD](#UCSD) |  | 美国 | 信号灯 | 47 |  6610 | 7.7 | ✓ | ✓ |  |  |
| [BelgiumTS](#BelgiumTS) | 2010 | 比利时 | 标志 | 62 |  |  | ✓ |  |  | 质量好 |
| [CCTSDB](#CCTSDB) | 2017 | 中国 | 标志 | 3 | 15734 | 8 |  | ✓ |  |  |
| [Lara](#Lara) |  | 巴黎 | 信号灯 |  |  |  |  |  |  |  |
| [WPI](#WPI) |  | 美国 | 信号灯 |  |  | 20 | ✓ | ✓ |  |  |

<span id="GTSRB">  </span>        
[German Traffic Sign Recognition Benchmark (GTSRB)](http://benchmark.ini.rub.de/?section=gtsrb&subsection=news)      
[训练集](http://benchmark.ini.rub.de/Dataset/GTSRB_Final_Training_Images.zip)，[测试集](http://benchmark.ini.rub.de/Dataset/GTSRB_Final_Test_Images.zip) | [聚数力](http://dataju.cn/Dataju/publishing/payContentPublishingDescription/796)     
图片：1360x1024，交通标志：15x15 -> 250x250，80% 小于50x50，图像格式PPM；   
交通信号标志的识别，2011 年 IJCNN 竞赛；该数据集图像全部采集于真实生活场景，由车载摄像头获取10个小时的视频资料，然后利用软件进行提取标注等工作，每张图像由 90% 的主体交通标志和 10% 的背景构成；库中的图像被现实世界的因素所影响，例如角度变化、照明条件（饱和度、地对比度）、运动模糊、遮挡、耀眼杨过、颜色褪色、涂鸦、贴纸等；数据集用于解决交通路标的识别问题，着重于单张图像多分类问题；      
官方还提供了辅助数据集合，这些数据提供了图像的3类基本特征：     
（1）HOG特征，通过提取局部梯度的直方图作为物体轮廓检测的特征；    
（2）Haar-like，通过5个特征模板提取边缘、线性、中心等特征，提取比较规矩的灰度变化特征；     
（3）Hue Histograms色调直方图；     
**Baseline**：基于已经给出的 HOG 特征集和 k-nearest neighborthe 算法（欧氏距离）；     

<span id="GTSDB">  </span>        
[German Traffic Sign Detection Benchmark(GTSDB)](http://benchmark.ini.rub.de/?section=gtsdb&subsection=news)      
[dataset](http://benchmark.ini.rub.de/Dataset_GTSDB/FullIJCNN2013.zip)      
图像：1360x800，交通信号标志：16x16 -> 128x128       
环境更丰富多样化：不同视角、强光照等     
检测器使用Area Under Curve (AUC) of a precision-recall curve进行评估，Bounding box评价使用the PASCAL overlap；      
**Baseline**：     
*3中不同的检测器*     
（1）基于 Haar 特征的 Viola-Jones detector；     
（2）用于检测圆形和三角形的 Hough-like voting scheme；    
（3）基于HOG特征的LDA检测器 by presenting it all possible image sections；      

<span id="tsinghua"> </span>        
[Traffic-Sign Detection and Classification in the Wild](http://cg.cs.tsinghua.edu.cn/traffic-sign/)      
[data](http://cg.cs.tsinghua.edu.cn/traffic-sign/data_model_code/data.zip)，[tutorial](http://cg.cs.tsinghua.edu.cn/traffic-sign/tutorial.html)，[paper](#tsinghua_paper)        
图像：2048x2048     
清华和腾讯合作创建的一个大型交通标志的 benchmark，有超过 100k 的图像数据集，其中 30k 张包含交通标志；覆盖了中国的5个城市，包括市中心和郊区，包含了照明度和天气变换的差异；源码及模型都是公开的；但是用的人很少……    


<span id="TLR"> </span>        
[Traffic Lights Recognition (TLR) Public Benchmarks](http://www.lara.prd.fr/benchmarks/trafficlightsrecognition)      
图像：640x480     
由车载摄像头 C3 vehicle 采集，摄像头 Marling F-046C，帧率 25Hz，约 10000 张图像；摄像头安装在小车前挡风玻璃，数据采集时，小车行驶速度小于50km/h；该数据集提供多种图片格式：MPEG-2、JPEG、JSEQ、RTMaps；     


<span id="VIVA"> </span>        
[VIVA Traffic Light Detection Challenge 2015](http://cvrr.ucsd.edu/vivachallenge/index.php/traffic-light/traffic-light-detection/)      
6种标识：红、黄、绿、红左、黄左、绿左    
[数据处理+caffe 训练](https://blog.csdn.net/baobei0112/article/details/80190555)    

<span id="Bosch"> </span>        
[Bosch Small Traffic Lights Dataset](https://hci.iwr.uni-heidelberg.de/node/6132)      
图像：1280x720 ，交通信号标志：大约 8.6    
博世小型交通灯数据集，约 10000 张，含 24000 个交通信号；     

| 数据  | 图片数 | 信号数 | 类别数 | 遮挡信号数 | 帧率 |
| --- | --- | --- | --- | --- | --- |
| 训练集 | 5093 | 10756 | 15 | 170 | 30 |
| 测试集 | 8334 | 13486 | 4 | 2088 |    

4 种：红、黄、绿、off    
[read](https://github.com/bosch-ros-pkg/bstld)    

<span id="UCSD"> </span>        
[LISA(UCSD) Traffic Sign Dataset](http://cvrr.ucsd.edu/LISA/lisa-traffic-sign-dataset.html)      
[LISA traffic lights-kagge](https://www.kaggle.com/mbornoe/lisa-traffic-light-dataset)、[download](http://cvrr.ucsd.edu/LISA/Datasets/signDatabasePublicFramesOnly.zip), [home](http://cvrr.ucsd.edu/LISA/index.html)    
6610 张图像（彩色、灰度图像），包含 7855 信号；每张图只标注出一个信号灯，其他信号灯并不标注，造成数据不干净；        
图像：640x480 -> 1024x522，交通信号标志：6x6 -> 167x168   
标注信息：标志类别、位置、大小、是否被遮挡、是否在路边     
*[合并 kitti、Lisa](https://blog.csdn.net/xiji321/article/details/70171511), [LISA-on-SSD-mobilenet](https://github.com/cooliscool/LISA-on-SSD-mobilenet)-tensorflow, [TrafficLightsDetection](https://blog.csdn.net/baobei0112/article/details/80190555)-caffe         
[LISA](http://cvrr.ucsd.edu/LISA/datasets.html)：加州大学圣地亚哥分校智能和安全汽车实验室数据集，包括交通标志，车辆检测，交通信号灯和轨迹模式；*    



<span id="BelgiumTS"> </span>        
[BelgiumTS Dataset](http://btsd.ethz.ch/shareddata/)      
官网无过多介绍，但是也有几个比赛在用这个数据集    
[ppm 转 jpg](https://blog.csdn.net/weixin_41695564/article/details/80270153)    

<span id="CCTSDB"> </span>        
[CSUST Chinese Traffic Sign Detection Benchmark(CCTSDB)](http://www.sykv.com/m/view.php?aid=12332)    
[百度网盘](https://pan.baidu.com/s/1Swb48BppUJtuE3QeCcd4Yw)：rv4s  [Github](https://github.com/csust7zhangjm/CCTSDB)     
中国交通数据集由长沙理工大学综合交通运输大数据智能处理湖南省重点实验室张建明老师团队制作完成；    
目前的标注数据只有三大类：指示标志、禁止标志、警告标志；  
具体的细分类标准数据集，由于还在制作，暂时将不会公布，请大家关注后续更新！
2020年将推出规模更大、更完善的CCTSDB；    


<span id="Lara"> </span>        
[LaRa Traffic Light Recognition(Lara)](http://www.lara.prd.fr/benchmarks/trafficlightsrecognition)     
[tensorflow](https://github.com/oflucas/Traffic-Light-Detection)、[tensorflow](https://github.com/vatsl/TrafficLight_Detection-TensorFlowAPI)   
巴黎交通灯的数据集；    



<span id="WPI"> </span>        
[WPI](http://computing.wpi.edu/dataset.html)      
交通灯、行人和车道检测的数据集；    
交通灯：六类，绿色左转，绿色右转，绿色执行，绿色圆形，红色圆形，红色左转；    



## B 项目
### 1 分类
1. [Traffic-Sign-Recognition-with-Deep-Learning-CNN](https://github.com/JamesLuoau/Traffic-Sign-Recognition-with-Deep-Learning-CNN)     
tensorflow，分类；    
 1. 基于Tensorflow的交通标志识别    
 [blog](https://www.jianshu.com/p/d8feaddc7bdf), [blog-english](https://medium.com/@waleedka/traffic-sign-recognition-with-tensorflow-629dffc391a6), [github](https://github.com/waleedka/traffic-signs-tensorflow)    
BelgiumTS 数据集；    


### 2 检测
1. [Traffic-Lights-Detection](https://github.com/Gavinic/Traffic-Lights-Detection)    
tensorflow 检测交通信号灯；   
1. Udacity Self-Driving Car Engineer Nanodegree      
- [CarND-Capstone](https://github.com/SiliconCar/CarND-Capstone), [traffic_light_detection_classification](https://github.com/kcg2015/traffic_light_detection_classification)    
- [traffic-signs-classification](https://github.com/mithi/traffic-signs-classification)     
1. [Traffic Lights Detection](https://blog.csdn.net/gavinv/article/details/81016064)    

## C 资源
1. [Traffic Sign Recognition using Convolutional Neural Network](https://hackernoon.com/traffic-sign-recognition-using-convolutional-neural-network-8a1f90e8fb24)   
1. [自动驾驶系统中的交通信号检测和识别](https://zhuanlan.zhihu.com/p/61153328)   
1. <https://cvpr.yonsei.ac.krintranet>   
1. [机器学习高质量数据集大集合](https://www.jianshu.com/p/9ec20174adb9)   
1. [红绿灯 交通标志数据集](https://blog.csdn.net/weixin_42419002/article/details/100605115)   
1. [自动驾驶系统中的交通信号检测和识别](https://zhuanlan.zhihu.com/p/61153328)    
