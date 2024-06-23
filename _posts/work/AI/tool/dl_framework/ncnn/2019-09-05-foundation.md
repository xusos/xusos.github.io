---
layout: article
title:  "「DLFramework」 NCNN 入门"
date:   2019-01-30 15:00:40 +0800
key: ncnn-foundation-20190130
aside:
  toc: true
category: [AI, dl_frameworks, ncnn]
---
<span id='head'></span>  
>腾讯 2017 年 7 月 开源的面向移动端的深度学习框架    
github: <https://github.com/Tencent/ncnn>  
document: <https://github.com/Tencent/ncnn/wiki>  
支持语言: C++      
支持框架: mxnet, caffe, onnx(pytorch)     
支持平台: 跨平台 ios/linux/windows，主要支持 Android；     

<!--more-->   

# 1 安装
## 1.1 Linux
下载源码，使用 [cmake]() 编译；最终 <install_dir> 目录下就会出现编译好的库文件和头文件；    
```shell
cd <ncnn-root-dir>
mkdir build && cd build
cmake -D CMAKE_INSTALL_PREFIX=<install_dir> ..
make -j4
make install
```

如果要支持 GPU(mobile)，需安装 vulkan；且为 cmake 添加参数 `-D Vulkan=ON`；    

```
该框架主要是在移动端做的优化，服务端（x86）基本没做；     
```

# 2 主要工作
1. 卷积层专门做了汇编的优化，感觉是一个很大的工作量     
2. caffe2ncnn 开源的代码，最近正好也在写 caffe 转嵌入式的模型，很有借鉴的意义      
3. 很轻量级的开源库，做具体的应用直接裁剪下应该代码量很小        

扩展到 DSP 中 CNN 的移植需要考虑的有：     
1. 由于 DSP 是定点运算，浮点的 32bit 网络转成定点的 16bit 或者 8bit 网络进行计算，能够把网络压缩 2-4 倍，并且不会引起精度的大幅度降低；fp16 好幸福；  
2. DMA 需要搬运数据到 TCM 来减少内存访问的时间，需要平衡数据搬运的时间与计算时间；    
3. 在计算的时候能够将有些层进行合并计算，例如卷积层,激活层会合并在一起计算，减少数据的复制；     
4. 不是很清楚 ARM 是否有计算 expf 的硬件单元，由于 dsp 上计算 expf 耗时太多，需要选一些快速计算方法来实现 expf 的计算；     

有几个共性的问题还是需要解决:   
1. tensorflow 的网络由于是 graph，计算的时候才知道网络的结果，迫切需要一个 tensorflow2caffe 的转换器；这个好难搞    
2. 网络压缩，网络还是太大，如果有通用的工具能够把网络压缩是极好的；mobile net，shuffle net 是比较有效的方法；     

# 3 问题
1. 默认的配置参数大小核全开，跑前几帧速度很美好，然而降频后性能惨不忍睹；另外我测试的要么全部绑定大核要么全部小核，不能跑一个大核几个小核这样的；不知道是BUG还是什么；最后实测要稳定跑只能全部绑小核跑，比全开的速度慢了一倍左右；     
2. 默认的反卷积实现好像有点问题，出来的数据在kernel size 3， step 2时不对；我是自己重新实现了，也不麻烦，用自带的1x1卷积加自己写的neon优化版col2im；    
3. 运算过程不支持8bit量化，这个在移动端是比较致命的问题；好在代码模块化的很好，很容易单独把卷积改成量化版本；虽然用mat来存8bit比较丑，要是mat能写成模板类就好了；       
4. 没做层间融合，尤其是BN层应该融进conv里面做；relu也是；concate 和eltwise应该都要通过地址分配来隐式的做；这一点opencv 的 dnn模块做的不错，可以参考实现一下；     

最近准备把卷积部分改到GPU上做，目前来看安卓上貌似只能用opencl了，而且适配不同机型貌似是个大坑；      


# 4 优势
方便移植；    

-------------------  
[End](#head)
{:.warning}  
# 附录
## A 参考资料
1. [NCNN入门](https://xywang93.github.io/2018/05/04/DeepLearning/%E5%B5%8C%E5%85%A5%E5%BC%8FAI/%E7%8E%A9%E8%BD%ACncnn/00-ncnn%E5%85%A5%E9%97%A8/)      

## B 研究员
1. [nihui](https://www.zhihu.com/people/nihui-2/activities)     
似乎是 ncnn 的作者；     

1. [mingyueguang](https://www.zhihu.com/people/mingyueguang-30/activities)     
CNN 移植到 DSP     
1. [绣花小浣熊](https://www.zhihu.com/people/xiu-hua-xiao-wan-xiong)    
广东珠海，移动端 DL；      
