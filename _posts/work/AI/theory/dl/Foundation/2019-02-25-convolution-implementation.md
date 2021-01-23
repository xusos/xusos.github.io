---
layout: article
title:  "「DL」 卷积计算"
date:   2019-02-25 13:08:40 +0800
key: conv-implement-20190225
aside:
  toc: true
category: [AI, DL, foundation]
---

>在 CNN 中, 大部分的计算消耗是在卷积计算, 尤其是端上设备对于性能的要求更为苛刻；本文撇开硬件和代码级的优化, 仅针对计算卷积的几个方法进行记述；    

这里说的卷积是是指卷积神经网络（CNN）中的卷积, 而不是数学意义上的卷积；其实, CNN 中的卷积对应数学中的互相关（cross correlation）；
{:.warning}  

<!--more-->

## 一、 滑窗
这种方法是最直观最简单的方法. 但是, 该方法不容易实现大规模加速, 因此, 通常情况下不采用这种方法 (但是也不是绝对不会用, 在一些特定的条件下该方法反而是最高效的)

## 二、 im2col
目前几乎所有的主流计算框架包括 Caffe, MXNet 等都实现了该方法；该方法把整个卷积过程转化成了矩阵相乘（GEMM）过程, 而 GEMM 在各种 BLAS 库中都是被极致优化的, 一般来说, 速度较快；  

**计算量**：卷积计算需要完成的乘法的次数为:  
$$\mu(F(m \times n, r \times s)) = m \times n \times n \times s \tag{1.1}$$  
$r \times s$ 表示卷积核的大小, $m \times n$ 表示输出大小  

[python 代码](#py_code_img2col)  

## 三、 FFT
傅里叶变换和快速傅里叶变化是在经典图像处理里面经常使用的计算方法, 但是, 在 CNN 中通常不采用, 主要是因为在 CNN 中的卷积模板通常都比较小, 例如 3×3 等, 这种情况下, FFT 的时间开销反而更大；

## 四、 Winograd
>Winograd 是存在已久最近被重新发现的方法, 在大部分场景中, Winograd 方法都显示和较大的优势, 目前 cudnn 中计算卷积就使用了该方法；  

**原理**：以加法代替乘法；  
**前提**：在处理器中, 乘法计算的时钟周期数要大于加法计算的时钟周期数；  
**计算量**：二维图像上卷积计算需要完成的乘法的次数为:  
$$\mu(F(m \times n, r \times s)) = (m+n-1) \times (n+s-1) \tag{2.1}$$  
$r \times s$ 表示卷积核的大小, $m \times n$ 表示输出大小  
Winograd 的证明方法较为复杂, 要用到数论中的一些知识, 但是, 使用起来很简单. 只需要按照如下公式计算:    
$$Y = A^T [[GgG^T] \odot [B^TdB]]A \tag{2.2}$$  
其中, $$\odot$$ 表示 element-wise multiplication；$A,G,B$ 根据输出大小和卷积核大小不同而不同，但是在计算之前就能确定的， $A,G,B$ 具体是多少, 可以通过 <https://github.com/andravin/wincnn> 的脚本计算；$g$ 是卷积核, $d$ 是输入的 data； g 的 shape 为 $r \times r$, $d$ 的 shape 为 $(m+r−1) \times (m+r−1)$  

注：  
- 多个 channel 的情况, 直接逐个 channel 按照上述方法计算完然后相加即可；  
- 在计算多个 channel 的时候, 仍然有可减少计算次数的地方；  
- 基于第二条，Winograd 在目前使用越来越多的 depthwise conv 中其优势不明显了；  
- 在 tile 较大的时候, Winograd 方法不适用, 因为, 在做 inverse transform 的时候的计算开销抵消了 Winograd 带来的计算节省；  
- Winograd 会产生误差；   

-------------------  
 End
{:.warning}  



## 附录
### A 代码
<span id="py_code_img2col">**1. im2col 的 Python 代码**</span>   
```python
import numpy as np
def get_im2col_indices(x_shape, field_height, field_width, padding=1, stride=1):
  # First figure out what the size of the output should be
  N, C, H, W = x_shape
  assert (H + 2 * padding - field_height) % stride == 0
  assert (W + 2 * padding - field_height) % stride == 0
  out_height = (H + 2 * padding - field_height) / stride + 1
  out_width = (W + 2 * padding - field_width) / stride + 1
  i0 = np.repeat(np.arange(field_height), field_width)
  i0 = np.tile(i0, C)
  i1 = stride * np.repeat(np.arange(out_height), out_width)
  j0 = np.tile(np.arange(field_width), field_height * C)
  j1 = stride * np.tile(np.arange(out_width), out_height)
  i = i0.reshape(-1, 1) + i1.reshape(1, -1)
  j = j0.reshape(-1, 1) + j1.reshape(1, -1)
  k = np.repeat(np.arange(C), field_height * field_width).reshape(-1, 1)
  return (k, i, j)


def im2col_indices(x, field_height, field_width, padding=1, stride=1):
  """ An implementation of im2col based on some fancy indexing """
  # Zero-pad the input
  p = padding
  x_padded = np.pad(x, ((0, 0), (0, 0), (p, p), (p, p)), mode='constant')
  k, i, j = get_im2col_indices(x.shape, field_height, field_width, padding, stride)
  cols = x_padded[:, k, i, j]
  C = x.shape[1]
  cols = cols.transpose(1, 2, 0).reshape(field_height * field_width * C, -1)
  return cols
```

### B 推荐资料
1. K. Chellapilla, et al. [High Performance Convolutional Neural Networks forDocument Processing](https://hal.archives-ouvertes.fr/file/index/docid/112631/filename/p1038112283956.pdf).   


### C 参考资料

[1].  Memo. Winograd 方法快速计算卷积[EB/OL]. <http://shuokay.com/2018/02/21/winograd/>. 2018-02-21/2019-02-25.   
