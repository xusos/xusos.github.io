---
layout: article
title:  "「DLFramework」 TVM 入门"
date:   2019-09-16 17:50:40 +0800
key: tvm-foundation-20190916
aside:
  toc: true
category: [AI, dl_frameworks, tvm]
---
<span id='head'></span>  
>2016-10-13 陈天奇开源的移动端 DL 推理框架，已与 NNVM 合并；     
github: <https://github.com/dmlc/tvm>      
官网: <https://tvm.ai/>     
文档: <https://docs.tvm.ai/>    
论文: <https://arxiv.org/abs/1802.04799>

<!--more-->     

目的在于将多个DL框架的用户进行整合，与TF进行PK（TF底层也有同样的功能模块）；或者说，基于NNVM，你可以实现一套自己的深度学习框架（利用tinyflow），代码只需要2000行，可以实现到各种硬件的快速编译部署；     

# 1 环境部署

[常见错误](#error_install)    


-------------------  
[End](#head)
{:.warning}  


# 附录
## A 参考资料
1. [hello TVM](https://xmfbit.github.io/2019/06/29/tvm-helloworld/)    
比较新    
1. [如何利用 TVM 优化深度学习GPU op？教你用几十行Python代码实现2-3倍提升](https://www.leiphone.com/news/201708/hufBpEUiAaiiwT81.html)    
1. [度学习编译中间件之NNVM(五)TVM论文阅读](https://blog.csdn.net/sanallen/article/details/79402174)    
1. [如何评价陈天奇团队新开源的TVM？](https://www.zhihu.com/question/64091792)    
1. [利用TVM完成C++端的部署](https://oldpan.me/archives/the-first-step-towards-tvm-2)     
1. [Insightface c++](https://zhuanlan.zhihu.com/p/55996985)     
1. [官网](https://docs.tvm.ai/install/from_source.html#build-the-shared-library)     
1. [YOLO C++](https://blog.csdn.net/weixin_43953703/article/details/94889958#_TVMYOLODarkNet_37)     

<span id="error_install"> </span>
## B 常见错误
1. No module named 'decorator'     
`pip install decorator`       

1. No module named 'PIL'    
`pip install Pillow`    
