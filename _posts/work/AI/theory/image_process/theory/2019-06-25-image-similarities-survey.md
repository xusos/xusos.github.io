---
layout: article
title:  "「CV」 距离度量概述"
date:   2019-06-25 18:06:40 +0800
key: image-similarities-survey-20190625
aside:
  toc: true
category: [AI, image_process]
sidebar:
  nav: ImageRetrieval
---
<span id='head'></span>  

>图像相似度计算是对两幅图像之间内容的相似程度进行打分；其直接关系到图像检索的结果和检索效率；        
可用于*模板匹配*，进而应用到**检测**和**跟踪**中（根据已有模板，找到一个与之最接近的区域），比如 BlobTracking，Meanshift，Camshift，粒子滤波等；另一方方面，可用于基于图像内容的**图像检索**；    

<!--more-->  

`把距离度量函数单独提取出来，这里只放完整的解决方案`{:.warning}    
完整方案放在 CV 检索里；此处只放距离度量；    


# 1 Minkowsky 距离
**公式**：   
$$
\begin{align}
L_p(A, B) &= [\sum_{i=1}^n |a_i - b_i|^p]^{1 \over p} \label{minkowsky} \\   
\end{align}
$$

p = 1 时， 为 L1 距离：   
>绝对值距离，又叫城区距离(city-block)；       

p = 1 时， 为 L2 距离：    
>又叫 Euclideandistance，或均方误差，MSE（Mean Square Error）；         

**公式**：   
$$
\begin{align}
MSE &= {1 \over {H \times W}} \sum_{i = 1}^{H} \sum_{j = 1}^{W} (X_{i, j} - Y_{i, j})^2 \label{mse} \\   
\end{align}
$$
注：$MSE$ 表示当前图像 $X$ 和参考图像 $Y$ 的均方误差（Mean Square Error），$H$、$W$ 分别为图像的高度和宽度；    

p = $\infty$ 时， 为切比雪夫距离：   
>Chebyshevdistance；    

**公式**：   
$$
\begin{align}
L_\infty &= \max_{i=1}^n |a_i - b_i| \label{cheby} \\   
\end{align}
$$

# 2 $\chi^2$ 距离


# 3 欧氏距离
常用欧氏距离；   

# 4 马氏距离
>Mahalanobis distance；   

如果特征向量各分量间具有相关性或具有不同权重，适合用马氏距离；   

**公式**：   
$$
\begin{align}
D_{mahal} &= (A-B)^T C^{-1}(A-B) \label{mahal}
\end{align}
$$


-------------------  
[End](#head)
{:.warning}  


# 附录
## A 参考资料
1. wangyaning. OpenCV进行图像相似度对比的几种办法[EB/OL]. <https://www.cnblogs.com/wangyaning/p/7854046.html>. 2017-11-17/2019-06-26.  
1. [移动端图像相似度算法选型](https://www.jiqizhixin.com/articles/2018-10-24-14)    
1. [关于计算两张图像相似度,用深度学习去做,有什么好的方法与建议](https://www.zhihu.com/question/319373907)      
1. [Python Numpy计算各类距离](https://blog.csdn.net/qq_19707521/article/details/78479532)    
1. [余弦距离、欧氏距离和杰卡德相似性度量的对比分析](https://www.cnblogs.com/chaosimple/p/3160839.html)    
1. [漫谈：机器学习中距离和相似性度量方法](https://www.cnblogs.com/daniel-D/p/3244718.html)     
1. [相似性和距离度量](https://leovan.me/cn/2019/01/similarity-and-distance-measurement/)     
