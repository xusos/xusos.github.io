---
layout: article
title:  "「DLFramework」 标注工具资源汇总"
date:   2019-05-28 15:00:40 +0800
key: label-tool-foundation-20190528
aside:
  toc: true
category: [AI, dl_frameworks, label_tool]
---
<span id='head'></span>  

<!--more-->   

# 1 音频标注
## 1.1 VIA   
[project](http://www.robots.ox.ac.uk/~vgg/software/via/>) | [code](https://gitlab.com/vgg/via/)    
VGG 小组开源，可标注语音，检测，跟踪；   
**语言**：js    

# 2 图像分割
## 2.1 Labelme   
labelme：<https://github.com/wkentaro/labelme>   
带旋转框标注的 labelme：<https://github.com/cgvict/roLabelImg>   
**语言**：python   

## 2.2 RectLabel   
[project](https://rectlabel.com/)    
可用于检测和分割；   
平台：mac os；   

## 2.3 IAT – Image Annotation Tool   
[project](http://www.ivl.disco.unimib.it/activities/imgann/)    
支持基础形状绘制；   

## 2.4 LERA   
[project](https://lear.inrialpes.fr/people/klaeser/software_image_annotation)    
**语言**：c++   

# 3 目标检测
## 3.1 labelImg   
labelImg：<https://github.com/tzutalin/labelImg>   
标签存储功能和“Next Image”、“Prev Image”的设计使用起来比较方便    

## 3.2 yolo_mark   
yolo2 团队开源：<https://github.com/AlexeyAB/Yolo_mark>   
**依赖**：opencv；   
**平台**：linux，win

## 3.3 Vatic   
[project](<http://carlvondrick.com/vatic/)  | [code](https://github.com/dbolkensteyn/vatic.js)       
可以做视频的标注，比如一个 25fps 的视频，只需要隔 100 帧左右手动标注一下物体的位置，最后在整个视频中就能有比较好的效果；因为内置了 opencv 跟踪算法；   

## 3.4 Sloth   
Sloth：<https://github.com/cvhciKIT/sloth
https://cvhci.anthropomatik.kit.edu/~baeuml/projects/a-universal-labeling-tool-for-computer-vision-sloth/>     
实时显示标注结果列表；   

## 3.5 Annotorious   
[project](http://annotorious.github.io/index.html) | [code](https://github.com/annotorious/annotorious)      
**语言**：js      
代码规范，有 API 接口；    

## 3.6 VoTT   
[code](https://github.com/Microsoft/VoTT/)   
微软开源，可以标注图片和视频，而且支持已有模型的集成；   
**语言**：js   

## 3.7 images_annotation_programme   
[code](https://github.com/frederictost/images_annotation_programme)   
网页版，VOC 格式的标注；   

## 3.8 FastAnnotationTool   
[code](https://github.com/christopher5106/FastAnnotationTool)    
**语言**：c++   
**依赖**：caffe，opencv，protobuf    

## 3.9 labeld   
[code](https://github.com/sweppner/labeld)   
**语言**：js   

## 3.10 ImageNet-Utils   
[code](https://github.com/tzutalin/ImageNet_Utils)   
支持通过 url 下载数据，分类和检测标注；   
**语言**：python，用了 labelImg 的界面；   


-------------------  
[End](#head)
{:.warning}  
