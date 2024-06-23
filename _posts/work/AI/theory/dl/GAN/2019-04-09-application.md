---
layout: article
title:  "「DL」 GAN 的应用"
date:   2019-04-09 15:48:40 +0800
key: gan-application-20190409
aside:
  toc: true
category: [AI, DL, GAN]
sidebar:
  nav: GAN
---
>过去 AI 擅长处理大数据，但是对于生成类任务，像艺术创作，被认为是人类专属；GAN 的出现改变了这一现状；  

<!--more-->   

<center class="half">
  <img src="/assets/images/AI/dl/GAN/app/app1.png" height="400"/>&emsp;<img src="/assets/images/AI/dl/GAN/app/app2.png" height="100"/>&emsp;<img src="/assets/images/AI/dl/GAN/app/app3.png" height="100"/>&emsp;<img src="/assets/images/AI/dl/GAN/app/app4.png" height="200"/>&emsp;<img src="/assets/images/AI/dl/GAN/app/app5.png" height="200"/>&emsp;
</center>

# 1 应用方向

## 1.1 二维图像

| 主题 | 模型 | 说明 |
| --- | :-: | --- |
| 图像翻译 | Pix2pix, PAN; CycleGAN, DiscoGAN | 一幅图像转换为另一幅图像，即风格变换 |
| 超分辨率 | SRGAN | 主要关注中间层误差，避免生成图像缺乏纹理 |
| 运动去模糊 | DeblurGAN | |
| 图像修复/补全 |  | 还原图像中缺失的部分 |
| 着色 |  | 图像颜色转换 |
| 深度估计 |  | depth prediction，根据单张图片估计出深度图 |
| 视角转换 |  | view synthesis，生成物体在其他视角下的二维图片 |
| 物体检测 | SeGAN, Perceptual GAN for small object detection | 引入超分辨率，进而提高小目标检测效果 |
| 目标变换 | GeneGAN, GP-GAN |  |
| 联合分布图像生成 | Coupled GAN | 使用权重共享，以学习到多个域的数据分布 |
| 文本转图片 | Stack GAN, TAN-GAN |  |
| 人脸迁移 | SD-GAN, SL-GAN, DR-GAN, AGEGAN |  |

GAN 在文本、语音领域应用较少的原因：    
- GAN 在优化的时候使用的是反向传播，对于文本，语音这种离散数据，GAN 没法直接跳到目标值，只能根据梯度一步步靠近；    
- 对于序列生成问题，每生成一个单词，我们就需要判断这个序列是否合理，可是 GAN 里面的判别器是没法做到的；除非我们针对每一个 step 都设置一个判别器，这显然不合理；   
为了解决这些问题，强化学习中的策略梯度下降（Policy gredient descent）被引入到 GAN 中应对序列生成问题；   


## 1.2 三维图像

| 主题 | 模型 | 说明 |
| --- | :-: | --- |
| 三维重建 |  | 3D reconstruction，2D 转 3D |


## 1.3 序列数据

| 主题 | 模型 | 说明 |
| --- | :-: | --- |
| 音乐生成 | C-RNN-GAN, SeqGAN, ORGAN, WaveGAN, SpecGAN | 使用了策略梯度下降 |
| 文本生成 | RankGAN |  |
| 语音转换 | VAW-GAN（VAE+WGAN） | 编码器进行语音编码，解码器负责重建音色 |
| 视频生成 | VideoGAN, Pose-GAN, MoCoGAN | |
| 行为分析 |  | 通过观察场景，来预测即将要出现的动作； |

## 1.4 其他

| 主题 | 模型 | 说明 |
| --- | :-: | --- |
| 半监督学习 | SSL-GAN, CatGAN; Triple-GAN | 生成的样本辅助分类器学习到数据空间 |
| 域适应 | DANN, ARDA, CycleGAN, CyCADA, Unsupervised pixel-lecel domain adaptation | 原域到目标域的迁移 |
| 持续学习 | Deep generative replay | 通过不断学习来解决多个任务 |
| 医学图像分割 | DI2IN; SCAN; SegAN |  |
| 图片隐写 | Steganography GAN, Secure steganography GAN | 图片中写入信息 |


# 2 实际应用

| 功能 | 模型 | 数据集 | Tensorflow | Pytorch | MXNet | Caffe | Keras | Theano | Torch |
| --- | :-: | --- | --- | --- | --- | --- | --- | --- | ---
| 手写数字识别 | DCGAN | MNIST |  |  |  |  | [jacobgil](https://github.com/jacobgil/keras-dcgan) |  |  |
| 服装生成 | Condition GAN | Fashion-MNIST |  |  |  |  |  |  |  |
| 人脸生成 | BEGAN | [CelebA](http://mmlab.ie.cuhk.edu.hk/projects/CelebA.html) | [carpedm20](https://github.com/carpedm20/BEGAN-tensorflow) |  |  |  |  |  |  |
| 苹果变橘子、马变斑马 | CycleGAN | [apple2orange](https://people.eecs.berkeley.edu/~taesung_park/CycleGAN/datasets/) | [xhujoy](https://github.com/xhujoy/CycleGAN-tensorflow) | [junyana](https://github.com/junyanz/pytorch-CycleGAN-and-pix2pix)  |  |  |  |  | [junyana](https://github.com/junyanz/CycleGAN)-offical-lua |
| 文本生成鸟 | StackGAN | [birds](http://www.vision.caltech.edu/visipedia/CUB-200-2011.html) | [Kuntal-G](https://github.com/Kuntal-G/StackGAN) |  |  |  |  |  |  |
| 性别转换 | DiscoGAN | [CelebA](http://mmlab.ie.cuhk.edu.hk/projects/CelebA.html)，facescrub |  | [SKTBrain](https://github.com/SKTBrain/DiscoGAN) |  |  |  |  |  |
| - | StarGAN | [CelebA](http://mmlab.ie.cuhk.edu.hk/projects/CelebA.html)，facescrub |  | [yunjey](https://github.com/yunjey/stargan) |  |  |  |  |  |
| 车转脸、包包变鞋子、包包涂鸦、鞋子涂鸦 | 同上 | [3D face](https://faces.dmi.unibas.ch/bfm/main.php?nav=1-2&id=downloads)，3D Car |  | 同上 |  |  |  |  |  |
| 涂鸦 | iGAN |  |  |  |  |  |  | [junyana](https://github.com/junyanz/iGAN) |  |
| 风格转换 | BicycleGAN |  |  | [junyana](https://github.com/junyanz/BicycleGAN) |  |  |  |  |  |
| 运动去模糊 | DeblurGAN |  | [RaphaelMeudec](https://github.com/RaphaelMeudec/deblur-gan) |  |  |  | [GOPRO](https://drive.google.com/file/d/1H0PIXvJH4c40pk7ou6nAwoxuR4Qh_Sa2/view?usp=sharing) |  |  |
| 换脸 | deepfakes+GAN |  |  |  |  |  | [shaoanlu](https://github.com/shaoanlu/faceswap-GAN) |  |  |
| 音频合成 | WaveGAN，SpecGAN |  | 官方·[chrisdonahue](https://github.com/chrisdonahue/wavegan) |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |

*-：代表同上*   


-------------------  
 End
{:.warning}  


# 附录
## A 参考资料
[1]. Jonathan Hui. GAN — Some cool applications of GANs[EB/OL]. <https://medium.com/@jonathan_hui/gan-some-cool-applications-of-gans-4c9ecca35900>. 2018-06-22/2019-04-09.     
[2]. Minchul Shin. 精彩的GAN应用和示例列表[EB/OL]. <https://www.ctolib.com/nashory-gans-awesome-applications.html>. 2017-10-13/2019-04-09.     
