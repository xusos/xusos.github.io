---
layout: article
title:  "「DLFramework」 caffe2NCNN: 分类网络"
date:   2019-09-05 10:00:40 +0800
key: ncnn-foundation-20190905
aside:
  toc: true
category: [AI, dl_frameworks, ncnn]
---
<span id='head'></span>  

<!--more-->   

# 0 [环境准备](/ai/dl_frameworks/ncnn/worktool/2019/01/30/foundation.html#1-安装)       

# 1 caffe 模型
## 1.1 准备模型
[常用分类模型](#models)     
模型相关的文件有 `train.prototxt`、`deploy.prototxt`、`snapshot_10000.caffemodel`，但部署的时候只需要 `deploy.prototxt` 和 `caffemodel`；  
## 1.2 转新版
ncnn 只支持转换新版的 caffe 模型；新版 caffe 框架中自带了转换的工具：     
```
caffe/build/tool/upgrade_net_proto_text [老prototxt] [新prototxt]
caffe/build/tool/upgrade_net_proto_binary [老caffemodel] [新caffemodel]
```
## 1.3 参数修改
输入层改用 Input，因为每次只需要做一个图片，所以第一个 dim 设为 1    
```
layer {
  name: "data"
  type: "Input"
  top: "data"
  input_param { shape: { dim: 1 dim: 3 dim: 227 dim: 227 } }
}
```


# 2 ncnn 模型  
## 2.1 转换
```
build/tools/caffe/caffe2ncnn [input.prototxt] [input.caffemodel] [output.param] [output.bin]
```

## 2.2 加密
也就是去除可见字符串，此步骤可选；   
param 和 bin 文件已经可以用了，但是 param 描述文件是明文的，容易被窥探到网络结构；故使用 ncnn2mem 工具转换为二进制描述文件和内存模型，生成 param.bin 和两个静态数组的代码文件：     
```
build/tools/ncnn2mem [input.param] [input.bin] [output.id.h] [output.mem.h]
```
*其实该操作加密性并不强*     

# 3 推理
## 3.1 加载模型

直接加载 param 和 bin:     
```c++
ncnn::Net net;
net.load_param("alexnet.param");
net.load_model("alexnet.bin");
```
加载二进制的 param.bin 和 bin:     
```c++
ncnn::Net net;
net.load_param_bin("alexnet.param.bin");
net.load_model("alexnet.bin");
```
从内存引用加载网络和模型，没有可见字符串，模型数据全在代码里头，没有任何外部文件；    
另外，android apk 打包的资源文件读出来也是内存块；   
```c++
#include "alexnet.mem.h"
ncnn::Net net;
net.load_param(alexnet_param_bin);
net.load_model(alexnet_bin);
```
以上三种都可以加载模型，其中内存引用方式加载是 zero-copy 的，所以使用 net 模型的来源内存块必须存在；    

## 3.2 卸载模型
```
net.clear();
```

## 3.3 输入和输出
ncnn 的输入输出都是自己的 Mat 结构；    
输入数据准备，按需进行预处理    
```c++
#include "mat.h"
unsigned char* rgbdata;// data pointer to RGB image pixels
int w;// image width
int h;// image height
ncnn::Mat in = ncnn::Mat::from_pixels(rgbdata, ncnn::Mat::PIXEL_RGB, w, h);

const float mean_vals[3] = {104.f, 117.f, 123.f};
in.substract_mean_normalize(mean_vals, 0);
```
推理      
```c++
#include "net.h"
ncnn::Mat in;
ncnn::Mat out;
ncnn::Extractor ex = net.create_extractor();
ex.set_light_mode(true);
ex.input("data", in);
ex.extract("prob", out);
```
如果是二进制的 param.bin 方式，没有可见字符串，利用 alexnet.id.h 的枚举来代替 blob 的名字     
```c++
#include "net.h"
#include "alexnet.id.h"
ncnn::Mat in;
ncnn::Mat out;
ncnn::Extractor ex = net.create_extractor();
ex.set_light_mode(true);
ex.input(param_id::BLOB_data, in);
ex.extract(param_id::BLOB_prob, out);
```
获取 Mat 中的输出数据，Mat 内部的数据通常是三维的，c / h / w，遍历获得全部分类的得分      
```c++
ncnn::Mat out_flatterned = out.reshape(out.w * out.h * out.c);
std::vector<float> scores;
scores.resize(out_flatterned.w);
for (int j=0; j<out_flatterned.w; j++)
{
    scores[j] = out_flatterned[j];
}
```
# 4 某些使用技巧

## 4.1 Extractor 有个多线程加速的开关，设置线程数能加快计算
```
ex.set_num_threads(4);
```
Mat 转换图像的时候可以顺便转换颜色和缩放大小，这些顺带的操作也是有优化的
支持 RGB2GRAY GRAY2RGB RGB2BGR 等常用转换，支持缩小和放大
```c++
#include "mat.h"
unsigned char* rgbdata;// data pointer to RGB image pixels
int w;// image width
int h;// image height
int target_width = 227;// target resized width
int target_height = 227;// target resized height
ncnn::Mat in = ncnn::Mat::from_pixels_resize(rgbdata, ncnn::Mat::PIXEL_RGB2GRAY, w, h, target_width, target_height);
```
Net 有从 FILE* 文件描述加载的接口，可以利用这点把多个网络和模型文件合并为一个，分发时能方便些，内存引用就无所谓了
```c++
$ cat alexnet.param.bin alexnet.bin > alexnet-all.bin

#include "net.h"
FILE* fp = fopen("alexnet-all.bin", "rb");
net.load_param_bin(fp);
net.load_model(fp);
fclose(fp);
```

## 4.2 取特定层的值
打开 param 文件，第二列就是 Input，每一层的 Input 名称就是上一层的输出名称；   


-------------------  
[End](#head)
{:.warning}  

# 附录
## A 资源汇总
<span id="models">**1. 常用分类模型**</span>    

| 网络 | ImageNet | Voc |  |
| --- | --- | --- | --- |
| AlexNet |  |  | [prototxt](https://github.com/BVLC/caffe/blob/master/models/bvlc_alexnet/deploy.prototxt)-[caffemodel](http://dl.caffe.berkeleyvision.org/bvlc_alexnet.caffemodel) |
| GoogLeNet |  |  | [prototxt](https://github.com/BVLC/caffe/blob/master/models/bvlc_googlenet/deploy.prototxt)-[caffemodel](http://dl.caffe.berkeleyvision.org/bvlc_googlenet.caffemodel) |
| MobileNetV1 | [model](https://github.com/shicai/MobileNet-Caffe) |  |  |
| MobileNetV2 | [model](https://github.com/shicai/MobileNet-Caffe) |  |  |
| mobileNetV3 |  |  |  |


*[caffe model zoo](https://github.com/BVLC/caffe/wiki/Model-Zoo)*
