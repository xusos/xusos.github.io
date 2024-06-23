---
layout: article
title:  "「DLFramework」 TensorRT 入门"
date:   2019-02-12 16:00:40 +0800
key: tensorrt-foundation-20190212
aside:
  toc: true
category: [AI, dl_frameworks, tensorrt]
---
<span id='head'></span>  
> TensorRT 是 NVIDIA 发布的推理框架，用于在 NVIDIA GPUs 上进行深度学习模型部署；针对 NVIDIA 显卡做了优化；支持 TensorFlow、Caffe、PyTorch、MXnet、CNTK等所有主流框架及 ONNX；  
官网: <https://developer.nvidia.com/tensorrt>  
ONNX TensorRT: <https://github.com/onnx/onnx-tensorrt>  
官方文档汇总: <https://docs.nvidia.com/deeplearning/sdk/tensorrt-archived/index.html>,  
python API: <https://docs.nvidia.com/deeplearning/sdk/tensorrt-api/python_api/>  
支持语言: 支持 C++（核心） 和 Python；     

<!--more-->   

# 0 背景
CNN 的效率一直备受关注，主要思路是剪枝和量化； TnesorRT 就是进行量化，将 FP32 位权值数据优化为 FP16 或者 INT8，而推理精度不发生明显的降低；     

1. 只支持推理，不支持训练；
2. 底层针对NVIDIA显卡做了多方面的优化，不仅仅是量化，可以和 CUDA CODEC SDK 结合使用，也就是另一个开发包 DeepStream；
3. 独立于其他深度学习框架，通过解析框架文件来实现，不需要额外安装 DL 库；     

# 1 安装  
## 1.1 Linux 环境
[安装报错解决方案](#error_install)    
1）准备  
- 安装 cuda；（建议用 deb 安装）  
- 下载安装包 <https://developer.nvidia.com/nvidia-tensorrt-download>  
*根据自己的环境，下载相应的版本（ubuntu1x04, cudax.x, trt4.x.x.x ）；*   

2）安装  
```shell
sudo dpkg -i nv-tensorrt*.deb
sudo apt-get update
sudo apt-get install tensorrt
```

3）检测是否安装成功  
`dpkg -l | grep TensorRT`  
有输出则是安装成功  

4）卸载  

[TensorRT 文件组织](#install_dir)  


# 2 HelloWorld   
## 2.1 caffe
1. [模型转换](#caffe_convert)     
1. [调用](#caffe_demo)    
## 2.2 pyTorch
1. [torch_trt](https://github.com/jinfagang/torch_trt)   

-------------------  
[End](#head)
{:.warning}  




# 附录
## A 基本操作
<span id="error_install">**1. 安装时报错**</span>  
1） 密钥没注册  
提示： `The public CUDA GPG key does not appear to be installed.
To install the key, run this command:
sudo apt-key add /var/nv-tensorrt-repo-cuda8.0-ga-trt4.0.1.6-20180612/7fa2af80.pub`  

解决： 执行最后提示的那句话 `sudo apt-key add /var/nv-tensorrt*.pub`  

2） 缺乏依赖  
报错信息：  
```
The following packages have unmet dependencies:
 tensorrt : Depends: libnvinfer4 (>= 4.1.2) but it is not going to be installed
            Depends: libnvinfer-dev (>= 4.1.2) but it is not going to be installed
            Depends: libnvinfer-samples (>= 4.1.2) but it is not going to be installed
E: Unable to correct problems, you have held broken packages.
```
分析： 缺什么安什么，最终发现缺乏 `cuda-cublas-8-0`；是因为本机 cuda 使用了 run 安装，而 TensorRT 的 cuda 用的是 deb 安装的，deb 中有特别的依赖库；

解决： 准备 cuda deb 包即可  
下载 cuda 8.0 的相关 deb 包（如下图红框所示） <https://developer.nvidia.com/cuda-80-ga2-download-archive>；  
<img src="/assets/images/AI/dl_framework/tensorrt/cuda-8-0-deb.png" height="600"/>    

```shell
# 准备 cuda 依赖
sudo dpkg -i cuda-repo-ubuntu1604-8-0-local-cublas-performance-update_8.0.61-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64.deb
sudo apt-get update

# 安装依赖
sudo apt-get install python3-libnvinfer-doc
```

<span id="install_dir">**2. TensorRT 的文件组织**</span>  
安装后会生成 `/usr/src/tensorrt` 文件夹：   
```
tensorrt
    ├── bin     # 文件夹用于存放编译后的二进制文件
    ├── data
    ├── python  # 和 data 一起存放官方例程用到的资源文件，比如caffemodel文件，TensorFlow模型文件，一些图片等
    └── samples # 文件夹中是官方例程的源码
```

进入 samples 文件夹直接 make，会在 bin 目录中生成可执行文件，可以一一进行测试学习；  

tensorRT 是不开源的：  
1） 头文件位于 `/usr/include/x86_64-linux-gnu` 中  
```
NvCaffeParser.h, NvInfer.h, NvInferPlugin.h, NvOnnxConfig.h, NvOnnxParser.h, NvUffParser.h, NvUtils.h
```

2） 库文件位于 `/usr/lib/x86_64-linux-gnu` 中   
```

libnvinfer.so, libnvToolsExt.so, libnvinfer_plugin.a, libnvinfer_plugin.so.4, libnvcaffe_parser.so, libnvparsers.so.4.1.2, stubs/libnvrtc.so, libnvcaffe_parser.a, libnvidia-opencl.so.1, libnvvm.so, libnvinfer.a, libnvvm.so.3, libnvToolsExt.so.1, libnvrtc.so.7.5, libnvparsers.a, libnvblas.so.7.5, libnvToolsExt.so.1.0.0, libnvcaffe_parser.so.4.1.2, libnvinfer_plugin.so, libnvrtc-builtins.so, libnvparsers.so, libnvrtc-builtins.so.7.5.18, libnvblas.so.7.5.18, libnvvm.so.3.0.0, libnvrtc.so, libnvrtc-builtins.so.7.5, libnvinfer.so.4.1.2, libnvidia-opencl.so.390.30, libnvrtc.so.7.5.17, libnvblas.so, libnvinfer.so.4, libnvparsers.so.4, libnvinfer_plugin.so.4.1.2, libnvcaffe_parser.so.4
```

## B 推荐资料
1. arleyzhang. TensorRT(5)-INT8校准原理[EB/OL]. <https://arleyzhang.github.io/articles/923e2c40/>. 2018年09月03.   
1.  NVIDIA. TensorRT Installation Guide[EB/OL]. <https://docs.nvidia.com/deeplearning/sdk/tensorrt-archived/tensorrt_401/tensorrt-install-guide/index.html#installing-debian>. -/2019-02-12.   
1.  arleyzhang. TensorRT(1)-介绍-使用-安装[EB/OL]. <https://arleyzhang.github.io/articles/7f4b25ce/>. 2018-08-31/2019-02-12.   
1. linolzhang. TensorRT深度学习推理框架介绍[EB/OL]. <https://blog.csdn.net/linolzhang/article/details/79079863>. 2018-01-16/2019-09-18.     

## C 代码示例
<span id="caffe_convert">**1. 转换 caffe 模型**</span>     
```c++
void caffeToGIEModel( const std::string& deployFile,    // name for caffe prototxt
const std::string& modelFile,    // name for model 
const std::vector<std::string>& outputs,   // network outputs
unsigned int maxBatchSize,   // batch size - NB must be at least as large as the batch we want to run with)
IHostMemory *&gieModelStream)           // output buffer for the GIE model
{
  // 1.创建builder
  IBuilder* builder = createInferBuilder(gLogger);

  // 2.解析caffe模型，保存到 Network
  INetworkDefinition* network = builder->createNetwork();
  ICaffeParser* parser = createCaffeParser();
  const IBlobNameToTensor* blobNameToTensor = parser->parse(locateFile(deployFile,                 directories).c_str(), locateFile(modelFile, directories).c_str(),*network, DataType::kFLOAT);

  // 3.指定输出Tensor
  for (auto& s : outputs)
    network->markOutput(*blobNameToTensor->find(s.c_str()));

  // 4.构建engine
  builder->setMaxBatchSize(maxBatchSize);
  builder->setMaxWorkspaceSize(1 << 20);

  ICudaEngine* engine = builder->buildCudaEngine(*network);
  assert(engine);

  // 5.销毁parser
  network->destroy();
  parser->destroy();

  // 6.将engine序列化到GIE，退出
  gieModelStream = engine->serialize();
  engine->destroy();
  builder->destroy();
}
```


<span id="caffe_demo">**1. 转换 caffe 模型**</span>     
```c++
// 推理
void doInference(IExecutionContext& context, float* input, float* output, int batchSize)
{
  const ICudaEngine& engine = context.getEngine();
  // 传递给引擎的输入输出buffer指针- 需要精确的 IEngine::getNbBindings(),这里1个输入＋1个输出
  assert(engine.getNbBindings() == 2);
  void* buffers[2];

  // 1.为了绑定buffer，需要知道输入和输出tensor的names
  int inputIndex = engine.getBindingIndex(INPUT_BLOB_NAME),
  outputIndex = engine.getBindingIndex(OUTPUT_BLOB_NAME);

  // 2.创建 GPU buffer 和 stream
  CHECK(cudaMalloc(&buffers[inputIndex], batchSize * INPUT_H * INPUT_W * sizeof(float)));
  CHECK(cudaMalloc(&buffers[outputIndex], batchSize * OUTPUT_SIZE * sizeof(float)));

  cudaStream_t stream;
  CHECK(cudaStreamCreate(&stream));

  // 3.通过DMA 输入到 GPU,  异步之行batch，并通过DMA回传
  CHECK(cudaMemcpyAsync(buffers[inputIndex], input, batchSize * INPUT_H * INPUT_W * sizeof(float), cudaMemcpyHostToDevice, stream));
  context.enqueue(batchSize, buffers, stream, nullptr);
  CHECK(cudaMemcpyAsync(output, buffers[outputIndex], batchSize * OUTPUT_SIZE*sizeof(float), cudaMemcpyDeviceToHost, stream));
  cudaStreamSynchronize(stream);

  // 4.释放 stream 和 buffer
  cudaStreamDestroy(stream);
  CHECK(cudaFree(buffers[inputIndex]));
  CHECK(cudaFree(buffers[outputIndex]));  
}

int int main(int argc, char const *argv[])
{
  // 1.从caffe模型创建GIE模型，序列化到流
  IHostMemory *gieModelStream{nullptr};
  caffeToGIEModel("mnist.prototxt", "mnist.caffemodel", std::vector < std::string > { OUTPUT_BLOB_NAME }, 1, gieModelStream);

  // x.数据获取（略）
  // x.解析mean文件(略)

  // 2.反序列化，得到Runtime engine
  IRuntime* runtime = createInferRuntime(gLogger);
  ICudaEngine* engine = runtime->deserializeCudaEngine(gieModelStream->data(), gieModelStream->size(), nullptr);
  if (gieModelStream) gieModelStream->destroy();

  // 3.创建上下文
  IExecutionContext *context = engine->createExecutionContext();

  // 4.运行inference
  float prob[OUTPUT_SIZE];
  doInference(*context, data, prob, 1);

  // 5.销毁engine
  context->destroy();
  engine->destroy();
  runtime->destroy();

  return 0;
}

```
