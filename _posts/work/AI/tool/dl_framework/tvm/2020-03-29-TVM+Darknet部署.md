---
layout: article
title:  "「DLFramework」 TVM + Darknet 部署"
date:   2020-03-29 18:00:40 +0800
key: tvm-darknet
aside:
  toc: true
category: [AI, dl_frameworks, tvm]
---
<span id='head'></span>  
>

<!--more-->     


# 1 环境部署
```shell
TVM 编译   
pip install cffi opencv-python decorator Pillow
```
# 2 模型转换
下载：下载 YOLO 模型；     
编译：转成 TVM 可识别的格式；   

# 3 运行
调用：python，C++    

-------------------  
[End](#head)
{:.warning}  


# 附录
## A 参考资料
1. [利用TVM完成C++端的部署](https://oldpan.me/archives/the-first-step-towards-tvm-2)     
1. [Insightface c++](https://zhuanlan.zhihu.com/p/55996985)     
1. [官网](https://docs.tvm.ai/install/from_source.html#build-the-shared-library)     
1. [YOLO C++](https://blog.csdn.net/weixin_43953703/article/details/94889958#_TVMYOLODarkNet_37)     
1. [TVM:手机[gpu|cpu]上运行Tensorflow模型](https://blog.csdn.net/zhaowd2001/article/details/89607252#TVM_C_22)    
gpu 模型部署；   
1. [masahi/tvm_deploy_gpu_sample](https://gist.github.com/masahi/d6ad36890d087f866de185f19aac3814)    
gpu 模型部署；   
1. [深度学习高性能异构框架TVM核心原理解释系列（1）-手把手教你用TVM做Inference加速](http://whitelok.github.io/2019/06/25/tvm-tutorials-lesson-1/)   
1. [TVM 初体验 - DarkNet 性能测试](https://zhuanlan.zhihu.com/p/91876198)    
