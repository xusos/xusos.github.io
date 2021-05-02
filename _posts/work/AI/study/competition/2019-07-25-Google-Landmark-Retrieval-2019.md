---
layout: article
title:  "「竞赛」 Kaggle:标志性建筑物检索 谷歌2019"
date:   2019-07-25 10:34:40 +0800
key: Landmark-Retrieval-20190725
aside:
  toc: true
category: [AI, AI, Competition]
---
<span id='head'></span>
>Google Landmark Retrieval 2019: <https://www.kaggle.com/c/landmark-retrieval-2019>    
2019.05.27 ～ 2019.06.10；      
[CVPR 2019 标志建筑识别](https://landmarksworkshop.github.io/CVPRW2019/)；   

<!--more-->


## 一、 介绍
[相关论文](/ai/cv/retrival/2019/05/22/foundation.html)       

## 二、 数据
70万数据，10万建筑物；其中测试集与标志性建筑物识别相同；      

| 赛程 | 数据量（万张）  | 说明 |   
| --- | --- | --- |
| [train](https://www.kaggle.com/google/google-landmarks-dataset/downloads/train.csv/99) | 122.5 | 标注信息为图片 ID；包括图像 id、url 和 标签 |
| [test](https://www.kaggle.com/google/google-landmarks-dataset/downloads/test.csv/99) | 11.77 | 待查询图片信息；包括图像 id 和 url |  
| [index](https://www.kaggle.com/google/google-landmarks-dataset/downloads/index.csv/99) | 109.84 | 查询库；包括图像 id 和 url |  
| [boxes_split1](https://www.kaggle.com/google/google-landmarks-dataset/downloads/boxes_split1.csv/99) | 5.37 | 关于 train 的目标检测标注信息，Detect-to-Retrieve 论文会用到；图片id，归一化之后的 top, left, bottom, right；这个用来做训练 |
| [boxes_split2](https://www.kaggle.com/google/google-landmarks-dataset/downloads/boxes_split2.csv/99) | 3.23 | 同上，用来做验证 |  

下载代码：[python2](https://www.kaggle.com/tobwey/landmark-retrieval-challenge-image-downloader), [python3](https://github.com/smartadpole/script/blob/master/google-landmark-retrieval-challenge-2019-image-downloader.py)； 命令：`python3 index.csv index/`      
[数据集主页](https://www.kaggle.com/google/google-landmarks-dataset#test.csv)     

## 三、 评估指标
$$mAP@100 = \frac{1}{Q} \sum{q=1}^{Q} \frac{1}{\min(m_q, 100)} \sum{k=1}^{\min(n_q,100)} Pq(k) relq(k)$$   
$Q$ 是 待查询的建筑物数量（index 数据集）；$q$ 是查询图像；$m_q$ 是查询到的结果；$n_q$ 是算法输出的查询结果个数；$P_q(k)$ 是查询结果中的第 $k$ 个；$rel_q(k)$ 是第 $k$ 个查询结果正确则为1,否则为0；   

**提交格式**：csv 文件，第一列是检索图像 ID，后边是检索到的图像 ID，用空格隔开；     

## 四、 思路    
官方推荐参考其在 ICCV 2017 上的文章 [DELF](https://arxiv.org/abs/1612.06321)；    
[相关论文](/ai/cv/retrival/2019/05/22/foundation.html)    

## 五、 榜单
最佳 0.37；    



-------------------  
[End](#head)
{:.warning}  


# 附录
