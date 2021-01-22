---
layout: article
title:  "「VIDEO」 相似度度量概述"
date:   2019-08-08 14:16:40 +0800
key: similarity-measures-survey-20190808
aside:
  toc: true
sidebar:
  nav: NDVR
category: [AI, video, video_retrieval]
---
<span id='head'></span>  

<!--more-->  

# 1 一对一
见图片相似度度量；    

# 2 多对多
多帧匹配中主要会存在 A 视频中的多个帧匹配到 B 视频中的一帧或交叉匹配的情况；     

## 2.1 动态规划


## 2.2 [累计最小（大）距离](https://yongyuan.name/blog/asymmetry-problem-in-computer-vision.html)
计算效率比动态规划高；    
往库存视频累计，还是往查询视频累计，有什么区别；    


-------------------  
[End](#head)
{:.warning}  


# 附录
## A 参考资料
1. [局部敏感哈希(Locality-Sensitive Hashing, LSH)](https://www.cnblogs.com/wmx24/p/10209315.html)    
