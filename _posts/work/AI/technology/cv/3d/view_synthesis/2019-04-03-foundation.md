---
layout: article
title:  "「CV」 视角转换资源汇总"
date:   2019-04-03 14:06:40 +0800
key: veiw-synthesis-foundation-20190403
aside:
  toc: true
category: [AI, CV, 3D, view_synthesis]
tags: 资源
---
<span id="head"></span>   
>**视角转换**：改变输入图像的视角；        
本文汇总相关资源；   

<!--more-->  

# 1 论文汇总


1. [Multi-view 3D Models from Single Images with a Convolutional Network](http://cn.arxiv.org/abs/1511.06702)   
2016 [Paper](https://arxiv.org/abs/1511.06702) | [Tensorflow](https://github.com/lmb-freiburg/mv3d)   
*`卷积网络` · `单视图生成 RGB-D` · `自编码`*  
输入单张图片和描述视角的向量；网络可以忽略背景，输出目标的 RGBD 图像；我们的方法可以得到三维的深度图；根据深度图可以得到点云，进一步得到物体的三维表面；  
**网络**在编码部分使用卷积，解码部分使用反卷积；中间用全连接层；`分割和自编码有啥区别`{:.warning}    
**实验**：在 ShapeNet 数据集上，对车辆和椅子进行实验，效果都很好；渲染使用了 Panda3D；  
>1. 给人的感觉更像是一个可以变换三维目标角度的分割；   
>1. 所谓的立体深度图，其实就是用不同视角的向量多跑几次网络，得到的多个二位深度图融合在一起；  
>1. 感觉就是挂了个自编码的名字啊；  

1. [View Synthesis by Appearance Flow](http://cn.arxiv.org/abs/1605.03557)   
ECCV 2016 [Paper](https://arxiv.org/abs/1605.03557) | [Caffe](https://github.com/tinghuiz/appearance-flow)-Offical    
*`卷积网络` · `自编码`*  
输入二维图片和目标视角向量，经过自编码网络，输出每个像素点想比较原目标物体的光流，根据原始图片和光流得到新视角下的图片；   
在 KITTI 上做了实验；并验证了网络对车辆，椅子和飞机的效果；    

-------------------  
 [End](#1-论文汇总)
{:.warning}  


# 附录
## A 参考资料
