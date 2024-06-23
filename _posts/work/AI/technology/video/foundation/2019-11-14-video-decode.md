---
layout: article
title:  "「VIDEO」 视频解码"
date:   2019-11-14 11:08:40 +0800
key: video-decode-20191114
aside:
  toc: true
category: [AI, video, video_decode]
---
<span id='head'></span>  
>从视频中解出图像；    


<!--more-->

# 1 软解
>用 CPU 进行视频解码；     

```cpp
// 载入到 cpu 中
cv::Mat inMat;
vidInput >> inMat;

// 载入到 gpu（opencl） 中，如果不支持 opencl，则自动载入 cpu 中；
cv::UMat inMat;
vidInput >> inMat;
```
# 2 硬解
>非 CPU 进行视频编码，如显卡 GPU、专用的 DSP、FPGA、ASIC 芯片；
目前的主流 GPU 加速平台 Intel、AMD、NVIDIA；     

## 2.1 CUDA
>NVIDIA 的封闭编程框架，通过框架可以调用GPU计算资源；    

初始化环境    
```cpp
#include <cuda_runtime.h>
cudaGetDeviceCount(&num_devices);
cudaSetDevice(cuda_device);
//如果没有初始化 cuda 运行环境，执行会崩溃
```
解码    
```cpp
cv::cuda::GpuMat d_frame;
cv::Ptr<cv::cudacodec::VideoReader> d_reader = cv::cudacodec::createVideoReader(fname);

while(d_reader->nextFrame(d_frame))
{

}
```

## 2.2 OpenCL
>开放计算语言，为异构平台编写程序的该框架，异构平台可包含 CPU、GPU 以及其他计算处理器，目标是使相同的运算能支持不同平台硬件加速；    


## 2.3 AMD APP
>AMD 为自己的 GPU 提出的一套通用并行编程框架，标准开放，通过在 CPU、GPU 同时支持 OpenCL 框架，进行计算力融合；    
[intel-vaapi-driver](https://github.com/intel/intel-vaapi-driver)-github    


## 2.4 Inel QuickSync
>集成于 Intel 显卡中的专用视频编解码模块；    


# 3 对比
## 3.1 性能
画面尺寸：480*848；帧数：275；    

| 方式 | 性能（fps） |
| --- | --- |
| opencv + cuvid + tesla P4 | 1426.84 |    
| ffmpeg 4.0 API + [Intel(R) Xeon(R) Gold 6133 CPU @ 2.50GHz] | 206.46 |    

结论：GPU 解码是 CPU 解码的 6.9 倍；    
注意：    
1. GPU解码丢了两帧；    
2. 如果使用 cuda stream 流水线技术，理论上性能还会再提升；   

高清视频 更适合用 GPU 解码；     

## 3.2 特点
- GPU 硬解码优势：      
1. 硬解 CPU 占用率低，不需要太好的 CPU，单核足够；可以做多任务；     
1. CPU 需要倾尽全力才能解码 HDTV，而 GPU 只需动用 0.1 亿晶体管的解码模块就能完成任务，功耗低；    

- GPU硬解码高清视频的劣势：     
1. 起步较晚，软件支持度无法与软解相提并论；    
1. 视频编码、封装格式多样，硬解码无法做到全面兼容；       
1. 在画面补偿及画质增强方面不如软解；     
1. 操作复杂；    

- 独立显卡
A 卡和 N 卡各有所长，对于 H.264 两者都能提供完美支持，A 卡的优势就是能支持 VC-1 完全硬解码，而 N 卡则能提供对 MPEG2 的完美硬解，鉴于 VC-1 比 MPEG2 更复杂，而且使用率更高，因此我们普遍认为 A 卡在高清方面比 N 卡更完美一些；     

-------------------  
[End](#head)
{:.warning}  

# 附录
## A 参考资料
1. 我是小北挖哈哈. 视频和视频帧：Intel GPU（核显）的编解码故事[EB/OL]. <https://zhuanlan.zhihu.com/p/69192869>. 2019-09-17/2019-11-14.           

## B 代码示例

## C 常用操作
<span id="Mat2UMat">**1. Mat、UMat 互转**</span>        
从 UMat 转 Mat： `UMat::getMat(int access_flags)`       
*FLAG：ACCESS_READ、ACCESS_WRITE、ACCESS_RW、ACCESS_MASK、ACCESS_FAST；*     
最常用的就是读写，注意当使用这种方式的时候 UMat 对象将会被 LOCK 直到 CPU 使用获取 Mat 对象完成操作，销毁临时 Mat 对象之后，UMat 才可以再被使用；反过来也是一样，但是有的时候会出问题；所以可以直接使用 cv::CopyTo()；     
*不能提取其中某个特定元素的值；*    
