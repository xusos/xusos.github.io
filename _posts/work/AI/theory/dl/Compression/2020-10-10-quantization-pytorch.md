---
layout: article
title:  "「DL」 Pytorch 模型量化"
date:   2020-10-10 14:28:40 +0800
key: quantization-pytorch
aside:
  toc: true
category: [AI, DL, compression]
---
<span id='head'></span>  
>
[模型量化概述](/ai/dl/compression/2020/10/10/quantization.html)、[权值量化论文汇总](/ai/dl/compression/2019/05/21/foundation.html#6-权值量化)     
量化:8/4/2 bits(dorefa)、三值/二值(twn/bnn/xnor-net)   

<!--more-->

# 1 量化
1. 训练后动态量化    
`torch.quantization.quantize_dynamic()`    

1. 训练后静态量化    
准备模型：通过添加QuantStub和DeQuantStub模块，指定在何处显式量化激活和量化数量；    
`torch.quantization.convert` 用于模型转换；包括权重量化，计算比例和偏差，关键算子替换为量化版本；     

1. 量化感知训练    
用 FP32 计算，但是会将值取整，模拟量化过程，进行训练微调；

# 2 工具

| 工具 | 说明 | 资源 |
| --- | --- | --- |
| Pytorch | pytorch 1.3 开始支持, 基于 QNNPACK 实现, 支持训练后量化, 动态量化和量化感知训练等技术；  | [doc](https://github.com/pytorch/glow/blob/master/docs/Quantization.md)、[qnnpack](https://github.com/pytorch/QNNPACK)、[pytorch 1.4](https://pytorch.apachecn.org/docs/1.4/88.html) |
| Distiller | 是 Intel 基于 Pytorch 开源的模型优化工具, 自然也支持 Pytorch 中的量化技术； | [distiller](https://github.com/NervanaSystems/distiller) |
| NNI | 微软的 NNI 集成了多种量化感知的训练算法, 并支持 PyTorch/TensorFlow/MXNet/Caffe2 等多个开源框架； | [NNI](https://github.com/microsoft/nni) |
| Nnieqat |  | [nnieqat](https://github.com/aovoc/nnieqat-pytorch) |   
| Brevitas | pytorch1.1.0+，和 1.3.0 后官方的实现方式很像了 | [Brevitas](https://github.com/Xilinx/brevitas) |


-------------------  
[End](#head)
{:.warning}  

# 附录
## A 参考资料
1. AI科技大本营. 你的模型加速了吗？这里有5个方法供你参考[EB/OL]. <https://mp.weixin.qq.com/s?__biz=MzI0ODcxODk5OA==&mid=2247511633&idx=2&sn=a5ab187c03dfeab4e64c85fc562d7c0d&chksm=e99e9da8dee914be3d713c41d5dedb7fcdc9982c8b027b5e9b84e31789913c5b2dd880210ead&mpshare=1&scene=1&srcid=&sharer_sharetime=1576934236399&sharer_shareid=1d0dbdb37c6b95413d1d4fe7d61ed8f1&exportkey=A%2B3SqYGse83qyFva%2BYSy3Ng%3D&pass_ticket=winxjBrzw0kHErbSri5yXS88yBx1a%2BAL9KKTG6Zt1MMS%2FeI2hpx%2BmeaLsrahnlOS#rd>. 2019-12-21/2020-10-10.    
概述    
1. jefferyzhang. 一线工程师带你学习深度学习模型量化理论+实践[EB/OL]. <https://t.rock-chips.com/forum.php?mod=viewthread&action=printable&tid=1226>. 2020-01-01/2020-10-10.    
概述   
1. GiantPandaCV. Pytorch实现卷积神经网络训练量化（QAT）[EB/OL]. <https://www.liangzl.com/get-article-detail-198695.html>. 2020-07-29/2020-10-10.    
对一篇论文的实现做了简述；     
1. 机器之心. 性能不打折，内存占用减少90%，Facebook提出极致模型压缩方法Quant-Noise[EB/OL]. <https://cloud.tencent.com/developer/article/1623418>. 2020-05-04/2020-10-10.     
论文解读；      
1. Jermmy. 神经网络量化入门--BatchNorm Folding[EB/OL]. <http://jermmy.github.io/>. 2020-07-19/2020-10-10.     
1. osc_n3mzii7x. 量化感知训练的数值稳定性[EB/OL]. <https://my.oschina.net/u/4261335/blog/4463306>. 2020-08-02/2020-10-10.    
1. jermmyxu. 神经网络量化入门--量化感知训练[EB/OL]. <https://www.cnblogs.com/jermmyhsu/p/13285488.html>. 2020-07-11/2020-10-10.     
分析了量化——反量化——训练的过程；     
1. 心态已炸_沉迷学习. Pytorch 1.3.0 量化介绍[EB/OL]. <https://blog.csdn.net/zym19941119/article/details/102523719>. 2019-10-12/2020-10-12.    
1. 爱上一只柠檬的pig_head. 深度学习模型量化（低精度推理）大总结[EB/OL]. <https://blog.csdn.net/zlgahu/article/details/104662203?utm_medium=distribute.pc_relevant.none-task-blog-BlogCommendFromMachineLearnPai2-1.channel_param&depth_1-utm_source=distribute.pc_relevant.none-task-blog-BlogCommendFromMachineLearnPai2-1.channel_param>. 2020-03-04/2020-10-12.   
详细解说了量化    
1. [pytorch doc](https://www.geek-book.com/src/docs/pytorch/pytorch/pytorch.org/docs/stable/quantization.html)-中文，[pytorch doc](https://pytorch.org/tutorials/intermediate/dynamic_quantization_bert_tutorial.html)-英文   


## B 工程
1. Ironteen. YOLOv3-quantization-model-v1.0[BE/OL]. <https://github.com/Ironteen/YOLOv3-quantization-model-v1.0>. -/2020-10-10.      
基于 tensorflow 的 diy YOLOv3 模型量化；    
1. 666DZY666. model-compression[EB/OL]. <https://github.com/666DZY666/model-compression>. -/2020-10-10.     
DIY 实现的模型压缩（剪枝、量化）；     
