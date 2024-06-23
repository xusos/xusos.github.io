---
layout: article
title:  "「CV」 自动驾驶资源汇总"
date:   2020-02-14 14:00:40 +0800
key: auto-drive-foundation-20200214
aside:
  toc: true
category: [AI, CV, traffic, auto_drive]
---
<span id='head'></span>

<!--more-->

# 1 综述
1. [A Survey of Deep Learning Applications to Autonomous Vehicle Control](http://cn.arxiv.org/abs/1912.10773)    
*2019-12-23* [paper](https://arxiv.org/abs/1912.10773)    
车辆控制；    

-------------------  
[End](#head)
{:.warning}  

# 附录
## A 资源
1. 无人驾驶仿真平台    
- [TORCS](https://sourceforge.net/projects/torcs/): The Open Racing Car Simulator    
一个赛车游戏，可以将游戏记录导出作为数据集；          
1. [最新无人驾驶研究成果大总结](https://zhuanlan.zhihu.com/p/87666744)   

## B 数据集

1. [Academic Torrents](http://academictorrents.com)    
大规模公开数据种子库    

| 名称 | 年份 | 地区 | 数量 | 大小(G) | 中间件 | 车道线 | 驾驶区域 | 驾驶员注意力 |  
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| [bdd100k](#bdd100k) | 2018 | 伯克利 | 100k |  | 检测，分割 | ✓ | ✓ | ✓ | ✓ |
| [滴滴](#didi) | 2018 | 伯克利 | 100k |  | 检测，分割 | ✓ | ✓ | ✓ | ✓ |
| [Mapillary](#Mapillary) | 2018 | 伯克利 | 100k |  | 检测，分割 | ✓ | ✓ | ✓ | ✓ |
| [Academic Torrents](#AcademicTorrents) | 2018 | 伯克利 | 100k |  | 检测，分割 | ✓ | ✓ | ✓ | ✓ |

<span id="bdd100k"> </span>    
1. [Berkeley DeepDrive(bdd100k)](https://bdd-data.berkeley.edu/)     
[分析](http://bair.berkeley.edu/blog/2018/05/30/bdd/)    
[CVPR 2020](http://cvpr2020.wad.vision/) [toolkit](https://github.com/ucbdrive/bdd100k)     
大规模自动驾驶数据集:100K 条视频，1.1k 消失；检测，驾驶区分割，车道线分割共 100K 图像；实例分割 10k 图像；    
目标检测：包括 bus, traffic light, traffic sign, person, bike, truck, motor, car, train, and rider



1. 自动驾驶四个子任务数据集    
链接：<https://pan.baidu.com/s/1nXyEIpIFslOJi3HeWmseKA>   
提取码：x6sh

1. [滴滴自动驾驶数据集](https://outreach.didichuxing.com/d2city/d2city)   
NIPS 2019，[相关论文](https://ml4ad.github.io/#about)  [udacity/didi-competition](https://github.com/udacity/didi-competition)      


1. [Mapillary](https://www.mapillary.com/dataset/trafficsign)     
[blog](https://cloud.tencent.com/developer/news/445414)     
有交通标志；

1. [cityscapes](https://www.cityscapes-dataset.com/register/)    

1. [kitti_kaggle](https://www.kaggle.com/twaldo/kitti-object-detection#000007.png)   

1. [kitti](http://www.cvlibs.net/datasets/kitti/index.php)    
[Vision meets Robotics: The KITTI Dataset](http://www.cvlibs.net/publications/Geiger2013IJRR.pdf)
可以转 VOC: [second.pytorch](https://github.com/traveller59/second.pytorch) [KITTI_SSD](https://github.com/manutdzou/KITTI_SSD)  [eval_kitti](https://github.com/cguindel/eval_kitti)           
[介绍](https://blog.csdn.net/Solomon1558/article/details/70173223)  

## C 参考资料
1. [城市驾驶场景下的数据集](https://www.jianshu.com/p/ac25fe18b12e)    
1. [计算机视觉常用数据集](https://guanfuchen.github.io/post/markdown_blog_ws/markdown_blog_2017_10/%E8%AE%A1%E7%AE%97%E6%9C%BA%E8%A7%86%E8%A7%89%E5%B8%B8%E7%94%A8%E6%95%B0%E6%8D%AE%E9%9B%86%E5%8F%91%E7%9B%B8%E5%85%B3%E9%97%AE%E9%A2%98/)    
1. [自动驾驶数据集](https://blog.csdn.net/weixin_42419002/article/details/89488784)    
