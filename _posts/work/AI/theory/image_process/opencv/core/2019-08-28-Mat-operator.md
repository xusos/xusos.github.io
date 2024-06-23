---
layout: article
title:  "「OpenCV」 矩阵基本操作"
date:   2019-08-28 15:18:40 +0800
key: OpenCV-Mat-Op-20190828
aside:
  toc: true
category: [AI, opencv, opencv_core]
---
<span id='head'></span>  


<!--more-->


# 1 逻辑运算
与：     
```c++
bitwise_and(src, dst, res);  // 1    
Mat res = src_gray & dst;  // 2 只能处理单通道
Mat res = src_gray.clone();  // 3 只能处理单通道
res.setTo(Scalar(0), ~dst);      
```

-------------------  
[End](#head)
{:.warning}  

# 附录
1. [确定 OpenCV 矩阵元素的数据类型](https://www.jianshu.com/p/204f292937bb)     
