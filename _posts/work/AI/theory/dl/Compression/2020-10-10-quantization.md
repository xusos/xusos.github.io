---
layout: article
title:  "「DL」 模型量化概述"
date:   2020-10-10 14:08:40 +0800
key: quantization
aside:
  toc: true
category: [AI, DL, compression]
---
<span id='head'></span>  

>[模型压缩资源汇总](/ai/dl/compression/2019/05/21/foundation.html)    
在推理中使用低精度(FP16、INT8 、二值网络、三值网络)表示，取代原有精度(FP32)；     

<!--more-->

# 1 运算过程
参数说明：    

| 类型 | 输入 | 权重 | 输出 |
| --- | --- | --- | --- |
| 浮点 | $x_{f}$ | $y_{f}$ | $z_{f}$ |    
| 定点 | $x_{q}$ | $y_{q}$ | $z_{q}$ |    
| 缩放因子 | $x_{s}$ | $y_{s}$ | $z_{s}$ |    
| 零点 | $x_{zp}$ | $y_{zp}$ | $z_{zp}$ |   

$$
\begin{align}
x_{f} &= x_{s} \times (x_{q} - x_{zp}) \\
x_{s} &= \frac{x_{f}^{max} - x_{f}^{min}}{x_{q}^{max} - x_{q}^{min}} \\
x_{zp} &= x_{q}^{max} - x_{f}^{max} \div x_{s} \\
x_{q} &= x_{f} \div x_{s} + x_{zp}
\end{align}
$$

乘法    

$$
\begin{align}
z_{f} & = x_{f} \cdot y_{f} \\
z_{s} \cdot (z_{q} - z_{zp})
& = (x_{s} \cdot (x_{q} - x_{zp})) \cdot
(y_{s} \cdot (y_{q} - y_{zp})) \\
&= x_{s} \cdot y_{s} \cdot (x_{q} - x_{zp}) \cdot
(y_{q} - y_{zp}) \\
z_{q} - z_{zp}
&= \frac{x_{s} \cdot y_{s}}{z_{s}} \cdot
(x_{q} - x_{zp}) \cdot (y_{q} - y_{zp}) \\
z_{q}
&= \frac{x_{s} \cdot y_{s}}{z_{s}} \cdot
(x_{q} - x_{zp}) \cdot (y_{q} - y_{zp}) + z_{zp} \\
M_{x,y,z} &= \frac{x_{s} \cdot y_{s}}{z_{s}} \\
z_{q}
&= M_{x,y,z} \cdot (x_{q} - x_{zp}) \cdot
(y_{q} - y_{zp}) + z_{zp} \\
\end{align}
$$   

加法     

$$
\begin{align}
z_{f} &= x_{f} + y_{f} \\
z_{s} \cdot (z_{q} - z_{zp}) & = x_{s} \cdot (x_{q} - x_{zp}) + y_{s} \cdot (y_{q} - y_{zp}) \\
M_{x,y} &= 2 \cdot max(x_{s}, y_{s}) \\
z_{s} \cdot (z_{q} - z_{zp})
&= M_{x,y} \cdot \left( \frac{x_{s}}{M_{x,y}} \cdot (x_{q} - x_{zp}) +
\frac{y_{s}}{M_{x,y}} \cdot (y_{q} - y_{zp}) \right) \\
M_{x} &= \frac{x_{s}}{M_{x,y}};
M_{y} = \frac{y_{s}}{M_{x,y}} \\
z_{s} \cdot (z_{q} - z_{zp})
&= M_{x,y} \cdot \left( M_{x} \cdot (x_{q} - x_{zp}) +
M_{y} \cdot (y_{q} - y_{zp}) \right) \\
z_{q} - z_{zp}
&= \frac{M_{x,y}}{z_{s}} \cdot
\left( M_{x} \cdot (x_{q} - x_{zp}) +
M_{y} \cdot (y_{q} - y_{zp}) \right) \\
M_{x,y,z} &= \frac{M_{x,y}}{z_{s}} \\
z_{q} - z_{zp}
&= M_{x,y,z} \cdot \left( M_{x} \cdot (x_{q} - x_{zp}) +
M_{y} \cdot (y_{q} - y_{zp}) \right) \\
z_{q} &=
M_{x,y,z} \cdot \left( M_{x} \cdot (x_{q} - x_{zp}) +
M_{y} \cdot (y_{q} - y_{zp}) \right) + z_{zp}
\end{align}
$$

# 2 工具
- 在 INT8 和 FP32 之间转换数值的方法非常重要，因为它会显着影响预测精度    

| 工具 | 说明 |
| --- | --- |
| TensorRT | 是 NVIDIA 提出的神经网络推理(Inference)引擎, 支持训练后 8BIT 量化, 它使用基于交叉熵的模型量化算法, 通过最小化两个分布的差异程度来实现；  |
| [Pytorch](/ai/dl/compression/2020/10/10/quantization-pytorch.html) | pytorch 1.3 开始已经支持量化功能, 基于 QNNPACK 实现, 支持训练后量化, 动态量化和量化感知训练等技术；  |
| Distiller | 是 Intel 基于 Pytorch 开源的模型优化工具, 自然也支持 Pytorch 中的量化技术； |
| NNI | 微软的 NNI 集成了多种量化感知的训练算法, 并支持 PyTorch/TensorFlow/MXNet/Caffe2 等多个开源框架； |


-------------------  
[End](#head)
{:.warning}  

# 附录
## A 参考资料
1. lartpang. Some Tricks of PyTorch[EB/OL]. <https://github.com/lartpang/PyTorchTricks>. -/2020-10-10.     
1. 有三AI. 当前模型量化有哪些可用的开源工具？[EB/OL]. <https://cloud.tencent.com/developer/article/1559658>. 2019-12-18/2020-10-10.    
1. 商汤科技SenseTime. 模型量化了解一下？[EB/OL]. <https://zhuanlan.zhihu.com/p/132561405>. 2020-04-17/2020-10-13.    
内容很丰富，有很多指导性观点；    
1. 郝泽宇. 神经网络加速之量化模型[EB/OL]. <https://www.jiqizhixin.com/articles/2018-06-01-11>. 2018-06-01/2020-10-13.    
1. 黎明灰烬. 神经网络量化简介[EB/OL]. <https://jackwish.net/2019/neural-network-quantization-introduction-chn.html>. 2019-05-01/2020-10-13.    
1. [pytorch MobileNet-v2-pruning](https://github.com/wlguan/MobileNet-v2-pruning)    

## B 资源
1. [cnn-quantization](https://github.com/submission2019/cnn-quantization)    
