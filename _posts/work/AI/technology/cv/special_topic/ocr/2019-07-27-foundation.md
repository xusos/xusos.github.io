---
layout: article
title:  "「CV」 文本分析资源汇总"
date:   2019-07-27 14:21:40 +0800
key: ocr-foundation-20190727
aside:
  toc: true
category: [AI, CV, ocr]
tags: 资源
---
<span id='head'></span>
>光学字符识别；感觉在 2017 年爆炸了；       
相关资源：[目标检测资源](/ai/cv/detection/2019/05/10/foundation.html)     

<!--more-->

# 1 综述
1. [Feature extraction methods for character recognition-A survey](http://www.ee.bgu.ac.il/~dinstein/stip2002/FeatureExtractionReviewTrierJainTaxt95.pdf)   
*1995-07-19* [paper](http://www.ee.bgu.ac.il/~dinstein/stip2002/FeatureExtractionReviewTrierJainTaxt95.pdf)   

1. [A Survey Paper on Scene Text Detection Methods](https://pdfs.semanticscholar.org/f9e8/d104b257c42d2ebc2386c8c1ca0d68e8273a.pdf)   
*2012* [paper](https://pdfs.semanticscholar.org/f9e8/d104b257c42d2ebc2386c8c1ca0d68e8273a.pdf)   

1. [An Overview of Feature Extraction Techniques in OCR for Indian Scripts Focused on Offline Handwriting](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.415.3676&rep=rep1&type=pdf)   
*2013* [paper](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.415.3676&rep=rep1&type=pdf)   

1. [Deep Learning for Text Spotting](https://www.robots.ox.ac.uk/~vgg/publications/2015/Jaderberg15b/jaderberg15b.pdf)   
*2014* [paper](https://www.robots.ox.ac.uk/~vgg/publications/2015/Jaderberg15b/jaderberg15b.pdf)   
研究生课题（斯坦福）    

1. [Scene Text Detection and Recognition: Recent Advances and Future Trends](http://www.vlrlab.net/admin/uploads/avatars/FCS_TextSurvey_2015.pdf)   
*2014* [paper](http://www.vlrlab.net/admin/uploads/avatars/FCS_TextSurvey_2015.pdf)   

1. [Text Detection and Recognition in Imagery: A Survey](https://ucassdl.cn/downloads/publication/PAMI2015_YeQixiang.pdf)   
*2015-07* [paper](https://ucassdl.cn/downloads/publication/PAMI2015_YeQixiang.pdf)   

1. [Context Modeling for Semantic Text Matching and Scene Text Detection](https://etda.libraries.psu.edu/files/final_submissions/12356)    
*2016* [paper](https://etda.libraries.psu.edu/files/final_submissions/12356)   
研究生课题；    

1. [A Survey on Scene Text Detection and Text Recognition](https://www.ijarcce.com/upload/2016/march-16/IJARCCE%20208.pdf)   
*2016-03* [paper](https://www.ijarcce.com/upload/2016/march-16/IJARCCE%20208.pdf)   


1. [Text Detection and Recognition in Images: A Survey](http://cn.arxiv.org/abs/1803.07278)    
*2018-03-20* [paper](https://arxiv.org/abs/1803.07278)      
学生写的，还不完整；   

1. [Scene Text Detection and Recognition: The Deep Learning Era](http://cn.arxiv.org/abs/1811.04256)    
*2018-11-10* [paper](https://arxiv.org/abs/1811.04256) | [github](https://github.com/Jyouhou/SceneTextPapers)       


# 2 理论

# 3 其他
1. [Total-Text: A Comprehensive Dataset for Scene Text Detection and Recognition](http://cn.arxiv.org/abs/1710.10400)    
ICDAR 2017 *2017-10-28* [paper](https://arxiv.org/abs/1710.10400) | [code4downloads](https://github.com/cs-chan/Total-Text-Dataset)     

1. [ICDAR 2019 Robust Reading Challenge on Multi-lingual Scene Text Detection and Recognition -- RRC-MLT-2019](http://cn.arxiv.org/abs/1907.00945)   
ICDAR 2019 *2019-07-01* [paper](https://arxiv.org/abs/1907.00945) | [competition](https://rrc.cvc.uab.es/?ch=15)      



# 4 文本检测
>找到文字区域的位置；        

## 4.1 字符
>需要分离出两个模型，一个负责检测字符，一个负责合并；除了速度上的降低，还存在分步累计误差，且无法进行端到端的训练；    
感觉都好复杂；   

1. [Text-Attentional Convolutional Neural Network for Scene Text Detection](http://cn.arxiv.org/abs/1510.03283)    
*2015-10-12* [paper](https://arxiv.org/abs/1510.03283)    
用 CE-MSERs 检测出字符，外加其他方法尽可能多地检测出字符，然后再滤除掉不是字符的区域；后接文本行合成处理；       

1. [Text Flow: A Unified Text Detection System in Natural Scene Images](http://cn.arxiv.org/abs/1604.06877)   
ICCV 2015 *2016-04-23* [paper](https://arxiv.org/abs/1604.06877)   
Adaboost 检测字符区域，然后用图进行合并；

1. [Detecting oriented text in natural images by linking segments](http://cn.arxiv.org/abs/1703.06520)   
CVPR 2017 *2017-03-19* [paper](https://arxiv.org/abs/1703.06520) | [tensorflow](https://github.com/bgshih/seglink)       
**SegLink**: 提出文本行检测，基于 SSD 进行的改进；先检测字符，再拼接；        


1. [WordSup: Exploiting Word Annotations for Character based Text Detection](http://cn.arxiv.org/abs/1708.06720)    
ICCV 2017 *2017-08-22* [paper](https://arxiv.org/abs/1708.06720)      
使用预训练的字符检测网络，对结果进行聚类的到文本块，后接识别模块；    

1. [WeText: Scene Text Detection under Weak Supervision](http://cn.arxiv.org/abs/1710.04826)    
ICCV 2017 *2017-10-13* [paper](https://arxiv.org/abs/1710.04826)   
$\bullet \bullet$   
SSD 基础上使用弱监督和半监督来扩充训练数据；单数速度较慢，且只能处理水平方向字符；     

>文章的亮点就在与怎么训练 SSD，但是又没有给出训练的具体细节；     


## 4.2 文本行
### 4.2.1 常规
1. [Reading Text in the Wild with Convolutional Neural Networks](http://cn.arxiv.org/abs/1412.1842)   
*2014-12-04* [paper](https://arxiv.org/abs/1412.1842)   

1. [Deep Convolutional Neural Networks for Text Spotting in Natural Images](https://pdfs.semanticscholar.org/8c58/0758ad5541c357a46f4a0fd92dcf0955c24d.pdf)    
*2015* [paper](https://pdfs.semanticscholar.org/8c58/0758ad5541c357a46f4a0fd92dcf0955c24d.pdf)   

1. [DeepText:A Unified Framework for Text Proposal Generation and Text Detection in Natural Images](http://cn.arxiv.org/abs/1605.07314)     
*2016-05-24* [paper](https://arxiv.org/abs/1605.07314)    
改进 FasterRCNN，提出了 Inception RPN；    

1. [TextBoxes: A Fast Text Detector with a Single Deep Neural Network](http://cn.arxiv.org/abs/1611.06779)   
AAAI 2017 *2016-11-21* [paper](https://arxiv.org/abs/1611.06779) | [caffe](https://github.com/MhLiao/TextBoxes)-offical      
SSD 基础上做的修改以适应文字检测；    

1. [Improving Text Proposal for Scene Images with Fully Convolutional Networks](http://cn.arxiv.org/abs/1702.05089)    
ICPR 2016 *2017-02-16* [paper](https://arxiv.org/abs/1702.05089) | [caffe](https://github.com/gombru/TextFCN)-other    

1. [Self-organized Text Detection with Minimal Post-processing via Border Learning](http://openaccess.thecvf.com/content_ICCV_2017/papers/Wu_Self-Organized_Text_Detection_ICCV_2017_paper.pdf)    
ICCV 2017 [paper](http://openaccess.thecvf.com/content_ICCV_2017/papers/Wu_Self-Organized_Text_Detection_ICCV_2017_paper.pdf)    
$\bullet \bullet$   
**SODT**: 为了解决 character based pipeline 的复杂后处理，提出了基于边界的方法，简化了解码过程；   
同时还分析了用二分类问题做检测的局限性；公布了 PPT 文本检测的数据集；    
对水平和倾斜文字效果都不错，但是对于扭曲尤其是垂直文字效果不好；     
>TextField， TextMoutain， pixellink，psenet 等方法，实际上都是基于文字区域的分割然后加上对边界的校准，提升算法的性能，即检测+分割+回归；同时，也可以看出，为了让算法检测出更为复杂的文本，边界的设计尤为重要；   

1. [PixelLink: Detecting Scene Text via Instance Segmentation](http://cn.arxiv.org/abs/1801.01315)   
AAAI 2018 *2018-01-04* [paper](https://arxiv.org/abs/1801.01315) | [tensorflow](https://github.com/ZJULearning/pixel_link)-offical        

### 4.2.2 多角度
1. [Accurate Text Localization in Natural Image with Cascaded Convolutional TextNetwork](http://cn.arxiv.org/abs/1603.09423)   
*2016-03-31* [paper](https://arxiv.org/abs/1603.09423)   

1. [Arbitrary-Oriented Scene Text Detection via Rotation Proposals](http://cn.arxiv.org/abs/1703.01086)   
*2017-03-03* [paper](https://arxiv.org/abs/1703.01086) | [caffe](https://github.com/mjq11302010044/RRPN)-offical | [pytorch](https://github.com/mjq11302010044/RRPN_pytorch)        
RRPN    
旋转 pooling；    

1. [Deep Matching Prior Network: Toward Tighter Multi-oriented Text Detection](http://cn.arxiv.org/abs/1703.01425)     
CVPR 2017 *2017-03-04* [paper](https://arxiv.org/abs/1703.01425)    
使用四边形检测文本；    

1. [Deep Direct Regression for Multi-Oriented Scene Text Detection](http://cn.arxiv.org/abs/1703.08289)   
*2017-03-24* [paper](https://arxiv.org/abs/1703.08289)   

1. [Cascaded Segmentation-Detection Networks for Word-Level Text Spotting](http://cn.arxiv.org/abs/1704.00834)   
*2017-04-03* [paper](https://arxiv.org/abs/1704.00834)   
基于 YOLO，先用分割的方法进行文字区域粗定位，再检测问题具体的位置； 1080Ti 上 1000×5600 的图像需要 450ms；   


1. [EAST: An Efficient and Accurate Scene Text Detector](http://cn.arxiv.org/abs/1704.03155)   
CVPR 2017 *2017-04-11* [paper](https://arxiv.org/abs/1704.03155) | [tensorflow](https://github.com/argman/EAST) | [pytorch](https://github.com/songdejia/EAST)   
参考了 DenseBox，使用 FCN 和 SSD 的多层输出；针对多方向问题，使用了旋转框和四边形；最后使用的是局部感知 nms；      
在 ICDAR 数据集上还可以，但是在其他数据集上效果很不理想；    

1. [R2CNN: Rotational Region CNN for Orientation Robust Scene Text Detection](http://cn.arxiv.org/abs/1706.09579)   
*2017-06-29* [paper](https://arxiv.org/abs/1706.09579) | [tensorflow](https://github.com/yangxue0827/R2CNN_FPN_Tensorflow) | [caffe](https://github.com/beacandler/R2CNN) | [一些改进代码](https://github.com/DetectionTeamUCAS)          
FasterRCNN 基础上做扩展；调整了 ROIPooling 的尺寸，引进了倾斜检测框，当然也针对倾斜的情况修正了 NMS；

1. [Single Shot Text Detector with Regional Attention](http://cn.arxiv.org/abs/1709.00138)   
ICCV 2017 *2017-09-01* [paper](https://arxiv.org/abs/1709.00138) | [caffe](https://github.com/BestSonny/SSTD)-offical | [pytorch](https://github.com/HotaekHan/SSTDNet)    
SSD + attention，通过修改网络结构提升检测效果；所谓的 attention 就是融入了分割，来指导模型训练；            
>方案本身让工程实践变得更复杂，当然如果本身就有大量分割的标注，可以用这个方法；    

1. [TextBoxes++: A Single-Shot Oriented Scene Text Detector](http://cn.arxiv.org/abs/1801.02765)   
*2018-01-09* [paper](https://arxiv.org/abs/1801.02765) | [torch + caffe](https://github.com/MhLiao/TextBoxes_plusplus)        
多 anchor box 进行了倾斜和增多；    

1. [Multi-Oriented Scene Text Detection via Corner Localization and Region Segmentation](http://cn.arxiv.org/abs/1802.08948)   
CVPR 2018 *2018-02-25* 白翔组 [paper](https://arxiv.org/abs/1802.08948) | [pytorch](https://github.com/lvpengyuan/corner)-offical     
针对多方向文本识别；检测到文本区域的四个顶点，以提高检测任务对文本问题的适应性，同时减小了后处理过程；   
>怎么感觉那么像 cornernet 呢；   


### 4.2.3 不规则文字
1. [On Recognizing Texts of Arbitrary Shapes with 2D Self-Attention](http://cn.arxiv.org/abs/1910.04396)    
*2019-10-10* [paper](https://arxiv.org/abs/1910.04396)    



# 5 文字识别
>识别出文字的内容；可以说是图片转文字；     

## 5.1 常规

### 5.1.1 CNN


### 5.1.2 CRNN

1. [Reading Scene Text in Deep Convolutional Sequences](http://cn.arxiv.org/abs/1506.04395)    
AAAI 2016 *2015-06-14* 汤晓鸥组 [paper](https://arxiv.org/abs/1506.04395)     
使用 RNN 进行字符识别，可以应对形变大和有歧义的字符串，并且可以识别新组合的字符串；和白翔组的 CRNN 很相似；     
文章还对比了 Maxout 和 RELU；    

1. [An End-to-End Trainable Neural Network for Image-based Sequence Recognition and Its Application to Scene Text Recognition](http://cn.arxiv.org/abs/1507.05717)    
*2015-07-21* [paper](https://arxiv.org/abs/1507.05717)    
**CRNN**:     

### 5.1.3 其他

1. [Focusing Attention: Towards Accurate Text Recognition in Natural Images](http://cn.arxiv.org/abs/1709.02054)    
ICCV 2017 *2017-09-07* 海康威视、复旦大学与上交 [paper](https://arxiv.org/abs/1709.02054)    
$\bullet \bullet$   
**FAN**: 注意力聚焦网络；作者发现对于低质图像，注意力会失效，也就是 attention drift——注意力不能精确联系特征向量与输入图像对应的目标区域；    
>咋发现漂移这个事的     

## 5.2 不规则
### 5.2.1 CNN
1. [Scene Text Recognition from Two-Dimensional Perspective](http://cn.arxiv.org/abs/1809.06508)   
AAAI 2019 *2018-09-18* 白翔组 [paper](https://arxiv.org/abs/1809.06508)   
检测时加入分割，定位到每个字符的位置，然后对单个字符进行分类，以分类代替是识别；同时使用了可变形卷积，以提取文字区域不同形状的特征；   

### 5.2.2 其他
1. [Robust Scene Text Recognition with Automatic Rectification](http://cn.arxiv.org/abs/1603.03915)    
CVPR 2016 *2016-03-12* [paper](https://arxiv.org/abs/1603.03915)    
使用 STN 空间仿射网络对不规则文本进行仿射变换，修正后再送入识别网络；    

1. [SqueezedText: A Real-time Scene Text Recognition by Binary Convolutional Encoderdecoder Network](https://pdfs.semanticscholar.org/0e59/f7d7e9c9380b425a94038c7a2500b2f6063a.pdf)   
AAAI 2018 *2018* [paper](https://pdfs.semanticscholar.org/0e59/f7d7e9c9380b425a94038c7a2500b2f6063a.pdf)   

1. [Handwriting Recognition in Low-resource Scripts using Adversarial Learning](http://cn.arxiv.org/abs/1811.01396)   
CVPR 2019 *2018-11-04* [paper](https://arxiv.org/abs/1811.01396)   

1. [ESIR: End-to-end Scene Text Recognition via Iterative Image Rectification](http://cn.arxiv.org/abs/1812.05824)    
CVPR 2019 *2018-12-14* [paper](https://arxiv.org/abs/1812.05824)   
**ESIR**:设计了仿射网络；       

## 5.3 其他
1. [Study on Feature Extraction Methods for Character Recognition of Balinese Script on Palm Leaf Manuscript Images](https://hal.archives-ouvertes.fr/hal-01422135/document)   
*2016* [paper](https://hal.archives-ouvertes.fr/hal-01422135/document)      

1. [Full-Page TextRecognition : Learning Where to Start and When to Stop](https://arxiv.org/abs/1704.08628)    
*2017-04-27* [paper](http://cn.arxiv.org/abs/1704.08628)     


1. [Reading Text in the Wild with Convolutional Neural Networks]()    
IJCV 2016     

1. [Recursive Recurrent Nets with Attention Modeling for OCR in the Wild]()    
CVPR 2016     

1. [Robust Scene Text Recognition with Automatic Rectification]()   
CVPR 2016   

1. [Generative Shape Models: Joint Text Recognition and Segmentation with Very Little Training Data]()   
NIPS    

1. [AnEnd-to-End Trainable Neural Network for Image-based Sequence Recognition and Its Application to Scene Text Recognition]()   
CoRR 2015    

1. [Automatic Script Identification in the Wild](http://cn.arxiv.org/abs/1505.02982)      
ICDAR 2015    

1. [Deep structured output learning for unconstrained text recognition](http://cn.arxiv.org/abs/1412.5903)   
ICLR 2015        

1. [Synthetic Data and Artificial Neural Networks for Natural Scene Text Recognition]()   
NIPS 2014     

1. [A Unified Framework for Multi-Oriented Text Detection and Recognition]()   
TIP    

1. [End-to-End Text Recognition with Convolutional Neural Networks]()    
ICPR 2012


# 6 端到端文字识别
>检测 + 识别 不中断；      

## 6.1 LSTM
1. [Unambiguous Text Localization and Retrieval for Cluttered Scenes](http://openaccess.thecvf.com/content_cvpr_2017/papers/Rong_Unambiguous_Text_Localization_CVPR_2017_paper.pdf)    
CVPR 2017 [paper](http://openaccess.thecvf.com/content_cvpr_2017/papers/Rong_Unambiguous_Text_Localization_CVPR_2017_paper.pdf)     

## 6.2 其他
1. [Towards End-to-end Text Spotting with Convolutional Recurrent Neural Networks](http://cn.arxiv.org/abs/1707.03985)   
ICCV 2017 *2017-07-13* [paper](https://arxiv.org/abs/1707.03985)    
FasterRCNN 接 LSTM；该方法在复杂任务上效果不是很好，原因是检测结果对整个任务起到决定性作用；    

1. [Deep TextSpotter: An End-to-End Trainable Scene Text Localization and Recognition Framework](http://openaccess.thecvf.com/content_ICCV_2017/papers/Busta_Deep_TextSpotter_An_ICCV_2017_paper.pdf)   
ICCV 2017 *2017* [paper](http://openaccess.thecvf.com/content_ICCV_2017/papers/Busta_Deep_TextSpotter_An_ICCV_2017_paper.pdf)    
检测任务中，除了坐标位置，还加入了旋转角度参数；但仍受检测结果限制；    

1. [Attention-based Extraction of Structured Information from Street View Imagery](http://cn.arxiv.org/abs/1704.03549)   
ICDAR 2017 *2017-04-11* Google [paper](https://arxiv.org/abs/1704.03549)   
$\bullet \bullet$   
针对多视角的街景采集数据进行 OCR；使用空间注意力代替检测；       

1. [STN-OCR: A single Neural Network for Text Detection and Text Recognition](http://cn.arxiv.org/abs/1707.08831)   
*2017-07-27* [paper](https://arxiv.org/abs/1707.08831)   

1. [Detection and Recognition of Text Embedding in Online Images via Neural Context Models](https://pdfs.semanticscholar.org/4c28/b0309105ec5633be22512167e6eff32f4c4f.pdf)     
AAAI 2017 [paper](https://pdfs.semanticscholar.org/4c28/b0309105ec5633be22512167e6eff32f4c4f.pdf)        
**CTSN**:     

1. [SEE: Towards Semi-Supervised End-to-End Scene Text Recognition](http://cn.arxiv.org/abs/1712.05404)   
AAAI 2018 *2017-12-14* [paper](https://arxiv.org/abs/1712.05404) | [tensorflow](https://github.com/Bartzi/see)        
**SEE**:      

1. [FOTS: Fast Oriented Text Spotting with a Unified Network](http://cn.arxiv.org/abs/1801.01671)   
CVPR 2018 *2018-01-05* [paper](https://arxiv.org/abs/1801.01671) | [pytorch](https://github.com/xieyufei1993/FOTS)       
**FOTS**: FPN + 角度；插值后送入双向 LSTM；单阶段检测网络，所以速度快一点；            

1. [An end-to-end TextSpotter with Explicit Alignment and Attention](http://cn.arxiv.org/abs/1803.03474)   
CVPR 2018 *2018-03-09* [paper](https://arxiv.org/abs/1803.03474) | [caffe](https://github.com/tonghe90/textspotter)-offical    
与 TextSpotter 类似，加入了角度信息，然后进行 ROIPooling，再送入 RNN + Seq2Seq + Attention；   

1. [Mask TextSpotter: An End-to-End Trainable Neural Network for Spotting Text with Arbitrary Shapes](http://cn.arxiv.org/abs/1807.02242)   
ECCV 2018 *2018-07-06* 旷视 [paper](https://arxiv.org/abs/1807.02242)   
不规则文本处理，借鉴 MaskRCNN；    

1. [Towards End-to-End License Plate Detection and Recognition: A Large Dataset and Baseline](http://openaccess.thecvf.com/content_ECCV_2018/papers/Zhenbo_Xu_Towards_End-to-End_License_ECCV_2018_paper.pdf)   
ECCV 2018 *2018* [paper](http://openaccess.thecvf.com/content_ECCV_2018/papers/Zhenbo_Xu_Towards_End-to-End_License_ECCV_2018_paper.pdf)   
**PRNet**:发布了一个包含 250k 图的中国车牌数据集 CCPD，每个标注包含 1 个 box，4 个定位点，及文字 GT；   
对不同尺度的特征图进行 ROIPooling，拼接后进行识别；只是一个 BaseLine 方案；     

# 7 数据集
## 7.1 数据集
1. [MIDV-2019: Challenges of the modern mobile-based document OCR](http://cn.arxiv.org/abs/1910.04009)     
*2019-10-09* [paper](https://arxiv.org/abs/1910.04009) | [数据集](ftp://smartengines.com/midv-500/extra/midv-2019/)   
公开了一个自然场景下拍摄的身份证件数据集；    

## 7.2 数据生成
1. [A Method to Generate Synthetically Warped Document Image](http://cn.arxiv.org/abs/1910.06621)     
*2019-10-15* [paper](https://arxiv.org/abs/1910.06621)     
文档图像仿射变换；     
>感觉一个仿射变换就够了；     


1. [TextRecognitionDataGenerator](https://github.com/Belval/TextRecognitionDataGenerator)     

1. [awesome-SynthText](https://github.com/TianzhongSong/awesome-SynthText)     

1. [Synthetic Data for Text Localisation in Natural Images](http://cn.arxiv.org/abs/1604.06646)      
CVPR 2016 *2016-04-22* [paper](https://arxiv.org/abs/1604.06646) | [github](https://github.com/ankush-me/SynthText) | [home](http://www.robots.ox.ac.uk/~vgg/data/scenetext/)        

-------------------  
[End](#head)
{:.warning}  

# 附录
## A 研究员
1. 白翔小组    
廖明辉，[石葆光](https://vision.cornell.edu/se3/people/baoguang-shi/)， 白翔, 王兴刚 ，刘文予      
1. [汤晓欧](https://www.ie.cuhk.edu.hk/people/xotang.shtml)组   
[黄伟林](http://www.whuang.org/), [乔宇](http://mmlab.siat.ac.cn/yuqiao/)，    

## B 参考资料
1. [中文字幕分析](https://github.com/lars76/chinese-subtitle-ocr)    
SSD 做的检测，然后自适应与之分割，最后进行识别；    
1. [awesome-ocr](https://github.com/ChanChiChoi/awesome-ocr)    
1. [paper with code](https://paperswithcode.com/task/scene-text-detection/codeless?page=6)    
1. [场景文本位置感知与识别的论文资源汇总](https://github.com/whitelok/image-text-localization-recognition/blob/master/README.zh-cn.yearwise.md)    
1. [52CV-文字识别](https://www.52cv.net/?cat=18)    
1. [52CV-文本检测](https://www.52cv.net/?cat=37)    
1. [Scene Text Recognition Resources](https://github.com/HCIILAB/Scene-Text-Recognition)     
1. [deep-text-recognition-benchmark](https://github.com/clovaai/deep-text-recognition-benchmark)     
现有方法的对比；      


## C 开源代码
### a 库
1. [OCRE(OCR Easy)](http://lem.eui.upm.es/ocre.html)   

1. [Clara OCR](http://directory.fsf.org/claraocr.html)          
99 年起的一个项目，C 语言开发的，支持 win 和 linux；提供了 GUI 和 Web 接口；           

1. [OCRAD](http://directory.fsf.org/ocrad.html)       
2019-01-11 分布的，基于特征提取的方式分析文本，可以按列或者空格对文字进行分割；    

1. [JOCR](http://sourceforge.net/projects/jocr)     
2013-04-15 最后一次更新；    

1. [OCR-CHIE](http://http.cs.berkeley.edu/~fateman/kathey/ocrchie.html)     
2001-03；      

1. [TESSERACT-OCR](http://code.google.com/p/tesseract-ocr/)     
2005年 由 HP 开源，2006年之后，由 Google 维护； 4.0 版本中加入了 LSTM；目前支持 100 多种语言的文本识别；支持文档格式包括文本、HTML 和 PDF 等；提供 C 和 C++ 接口；   

### b 工程
1. [textDetectionWithScriptID](https://github.com/isi-vista/textDetectionWithScriptID)    


## D 数据集

| 名称 | 语言 | 特点 | 字符检测 | 单词检测 | 文本行检测 | 字符识别 | 单词识别 | 端到端 | 数量 | 训练 | 测试 | 大小(G) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| [MNIST](http://yann.lecun.com/exdb/mnist/) | 数字 | 水平<br>手写 |  |  |  |  | $\checkmark$ |  |  |  |  |  |
| [USPS](http://www.gaussianprocess.org/gpml/data/) | 数字 | 水平<br>手写 |  |  |  |  | $\checkmark$ |  |  |  |  |  |
| [UCI](http://archive.ics.uci.edu/ml/datasets/Letter+Recognition)<br>1991 | 英文 |  |  |  | $\checkmark$ |  |  |  | 20000 |  |  |  |
| ICDAR 2011<br>[Web](http://www.cvc.uab.es/icdar2011competition/) | 英文 |  |  | $\checkmark$ |  |  | $\checkmark$ | $\checkmark$ |  |  |  |  |
| ICDAR 2011<br>[Scene](http://robustreading.opendfki.de/wiki/SceneText) |  |  |  |  |  |  |  |  |  |  |  |  |
| ICDAR 2013<br>[Web](http://dagdata.cvc.uab.es/icdar2013competition/) | 英文 |  | $\checkmark$ | $\checkmark$ |  | $\checkmark$ | $\checkmark$ | $\checkmark$ |  |  |  |  |
| ICDAR 2013<br>[Scene](http://dag.cvc.uab.es/icdar2013competition/?ch=2&com=downloads) |  |  |  |  |  |  |  |  |  |  |  |  |
| ICDAR 2013<br>[videos](http://dag.cvc.uab.es/icdar2013competition/?ch=3&com=downloads) |  |  |  |  |  |  |  |  |  |  |  |  |
| [SVHN](http://ufldl.stanford.edu/housenumbers/)<br>2011 | 数字 | 自然场景 | $\checkmark$ |  |  | $\checkmark$ |  |  |  |  33,402<br>（73,257） | 13,068<br>（26,032） |  |
| [COCO-Text](https://vision.cornell.edu/se3/coco-text-2/)<br>2016 | 英文<br>字符？ | 打印<br>手写<br>水平 |  | $\checkmark$ |  |  | $\checkmark$ | $\checkmark$ |  | 43,686 | 20,000 |  |
| [SynthText](http://www.robots.ox.ac.uk/~vgg/data/scenetext/)<br>[2016](https://hyper.ai/datasets/4917) | 英文 | 自然场景 | $\checkmark$ | $\checkmark$ | $\checkmark$ |  |  |  | 80万<br>（800万） |  |  | 40 |
| [Chars74K](http://www.ee.surrey.ac.uk/CVSSP/demos/chars74k/) |  |  |  |  |  |  |  |  |  |  |  |  |
| []() |  |  |  |  |  |  |  |  |  |  |  |  |
| []() |  |  |  |  |  |  |  |  |  |  |  |  |

1. [文字检测与识别资料整理（数据库，代码，博客）【持续更新】](https://www.cnblogs.com/lillylin/p/6893500.html)    

1. [PubTabNet](https://developer.ibm.com/exchanges/data/all/pubtabnet/)    
表格识别；   [github](https://github.com/ibm-aur-nlp/PubTabNet) [比赛](https://evalai.cloudcv.org/web/challenges/challenge-page/608/overview)         

## E 报告
1. [OCR and Text Spotting](http://llcao.net/cu-deeplearning15/pdf/8OCR.pdf)    
