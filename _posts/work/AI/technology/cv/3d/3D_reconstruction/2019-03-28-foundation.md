---
layout: article
title:  "「CV」 三维重建资源汇总"
date:   2019-03-28 10:06:40 +0800
key: 3D-reconstruction-foundation-20190328
aside:
  toc: true
category: [AI, CV, 3D, reconstruction]
tags: 资源
---
<span id="head"></span>   
<center class="half">
  <img src="/assets/images/cv_3d/3D_reconstruction/foundation.png"/>图1. 三维重建任务概览
</center>

关键词：`3D reconstruction` · `generative` · `3D mesh`   

# 1 基础
## 1.1 体素 VS 点云

<!--more-->  

**体素**：volume pixel（voxel），与二维的像素一样，需存储所有三维像素点，没有物体的地方像素值为 0；像素具有规律性的排列，可以直接套用卷积神经网络；运算时需要庞大的内存与运算量；  
**点云**：point cloud，是三维点的集合，只需记录物体所在的点的坐标；没有规律性的排列，因此无法套用卷积神经网络；高分辨率下，比较节省内存与运算量，也比较适合表示高分辨率的三维物体；  

# 2 综述
1. [Image-based 3D Object Reconstruction: State-of-the-Art and Trends in the Deep Learning Era](http://cn.arxiv.org/abs/1906.06543)   
*2019-06-15* [paper](https://arxiv.org/abs/1906.06543)    

# 3 理论


# 4 单视图重建
## 4.1 GAN
使用二维编码器、三维解码器(即 GAN 中的成器)和判别器；   

1.  [Learning a Probabilistic Latent Space of Object Shapes via 3D Generative-Adversarial Modeling](http://cn.arxiv.org/abs/1610.07584)   
NIPS 2016 *2016-10-24* [paper](https://arxiv.org/abs/1610.07584) | [project](http://3dgan.csail.mit.edu/)  [torch](https://github.com/zck119/3dgan-release)      
3D GAN   


1.  [Transformation-Grounded Image Generation Network for Novel 3D View Synthesis](https://zpascal.net/cvpr2017/Park_Transformation-Grounded_Image_Generation_CVPR_2017_paper.pdf)    
CVPR 2017 *2017* [paper](https://zpascal.net/cvpr2017/Park_Transformation-Grounded_Image_Generation_CVPR_2017_paper.pdf) | [project](http://www.cs.unc.edu/%7Eeunbyung/tvsn/) | [torch](https://github.com/silverbottlep/tvsn)-official    

1. [Weakly supervised 3D Reconstruction with Adversarial Constraint](http://cn.arxiv.org/abs/1705.10904)   
*2017-05-31* [Paper](https://arxiv.org/abs/1705.10904) | [theano](https://github.com/jgwak/McRecon) | [解读](/ai/cv/3d/reconstruction/paper_reading/2019/07/03/Weakly-supervised-3D-Reconstruction-with-Adversarial-Constraint-reading.html)    


1. [3D Shape Induction from 2D Views of Multiple Objects](http://cn.arxiv.org/abs/1612.05872)   
CVPR 2017 *2016-12-18* [Paper](https://arxiv.org/abs/1612.05872) | [Python](https://github.com/matheusgadelha/PrGAN)        
弱监督三维重建    

1. [Visual Object Networks: Image Generation with Disentangled 3D Representation](http://cn.arxiv.org/abs/1812.02725)   
NIPS 2018, VON, 谷歌 [Paper](https://arxiv.org/abs/1812.02725) | [Pytorch](https://github.com/junyanz/VON) | [Project](http://von.csail.mit.edu/)     
*`单视角` · `GAN + AE` · `WGAN-GP`*    
**单张图像生成三维图像**：启发自经典的图形学，我们将三维图像生成分为形状、视角和纹理三个部分，并使用 GAN 进行学习；网络先学习到三维形状，然后转为 2.5D（即轮廓和深度图），再对深度图施加纹理，以生成逼真的图像；   
文章使用独立的网络完成上述各操作，包括 $GAN_{shape}$（**WGAN-GP**），$GAN_{texture}$（**PatchGAN** + **LS-GAN** + **AE-ResNet**），$Estimate_{texture}$（AE-ResNet），$Estimate_{2.5D}$（AE-ResNet）；      
**$GAN_{shape}$**：2D 输入用的 Pix3D 数据集，3D 输入用的 ShapeNet 数据集；（均使用了椅子和车分类）；使用 [FID](/ai/dl/gan/2019/03/26/GAN-survey.html#45-fid) 评估 GAN 的效果；    
>最终效果是挺好，只是从理论上看速度就够慢的；不过开源了这么多代码，也是挺实用；    

1. [GAL: Geometric Adversarial Loss for Single-View 3D-Object Reconstruction](https://xjqi.github.io/GAL.pdf)   
ECCV 2018, 腾讯优图，香港中文 [Paper](https://xjqi.github.io/GAL.pdf)    
*`点云` · `GAN` · `3D卷积` · `点度量`*    

1. [Learning Single-View 3D Reconstruction with Limited Pose Supervision](http://openaccess.thecvf.com/content_ECCV_2018/papers/Guandao_Yang_A_Unified_Framework_ECCV_2018_paper.pdf)   
ECCV 2018 [Paper](http://openaccess.thecvf.com/content_ECCV_2018/papers/Guandao_Yang_A_Unified_Framework_ECCV_2018_paper.pdf) | [Tensorflow](https://github.com/stevenygd/3d-recon)   
*`弱监督`*      

1. [Global-to-Local Generative Model for 3D Shapes](http://vcc.tech/file/upload_file//image/research/att201810171620/G2L.pdf)   
SIGGRAPH 2018, 深圳大学 [Paper](http://vcc.tech/file/upload_file//image/research/att201810171620/G2L.pdf) | [Tensorflow](https://github.com/Hao-HUST/G2LGAN) | [Project](http://vcc.szu.edu.cn/research/2018/G2L)     
从三维物体的组件出发，生成同样结构的另外一种三维物体；使用基于体素的 GAN 对整体三维模型进行建模，得到多个局部结构，该网络有两个判别器，一个作用于整体，一个作用于局部，最后还有质量损失函数；之后使用条件自编码网络来重组局部结构得到三维模型；文章还提出了新的评价 GAN 模型的方法；   
>摘要读起来很乱啊；   

1. [Learning View Priors for Single-view 3D Reconstruction](http://cn.arxiv.org/abs/1811.10719)   
CVPR 2019 [Paper](https://arxiv.org/abs/1811.10719) | [Project](http://hiroharu-kato.com/projects_en/view_prior_learning.html) 马上开源     
$\bullet \bullet \bullet$     
使用 GAN，并且融合了单视图重建和视角信息；   


## 4.2 自编码
针对二维（输入）和三维（标签）分别训练出一个自编码器，得到的两个编码向量越接近越好；使用时，先用二维编码器得到特征向量，然后用三维解码器得到对应的三维数据（可以是体素，也可以是点云）；   

1. [Category-Specific Object Reconstruction from a Single Image](http://cn.arxiv.org/abs/1411.6069)    
*2014-11-22* [Paper](https://arxiv.org/abs/1411.6069)   
在 PASCAL VOC 2012 和 PASCAL 3D+ 数据集上进行实验，利用关键点和图像分割标签并结合视角估计进行三维重建；核心理论是基于 EM 最大化；   

1. [Mesh-based Autoencoders for Localized Deformation Component Analysis](http://cn.arxiv.org/abs/1709.04304)   
*2017-12-16* [Paper](https://arxiv.org/abs/1709.04304)    
针对三维几何形状分析与合成问题中变形部位提取问题中，当变形较大时效果不好的情况，提出了使用稀疏正则化来帮助提取局部变形；   
>总结分析跟没写一样；   


1. [Exploring Generative 3D Shapes Using Autoencoder Networks](http://www.nobuyuki-umetani.com/publication/2017_siggatb_explore/2017_siggatb_ExploringGenerative3DShapes.pdf)   
2017 [Paper](https://www.autodeskresearch.com/publications/exploring_generative_3d_shapes)   
将非结构化的三角网格转化为具有拓扑的矩形网格；输入输出都是三维结构；     

1. [Variational Autoencoders for Deforming 3D Mesh Models](http://cn.arxiv.org/abs/1709.04307)   
CVPR 2018 *2017-09-13* [Paper](https://arxiv.org/abs/1709.04307) | [Matlab](https://github.com/aldehydecho/Mesh-VAE)    
$\bullet  \bullet$   `什么是条件 VAE`{:.warning}    
使用 VAE 分析三维形状，可用于三维结构生成、三维结构插值和特征嵌入；具体的应用有姿态变换，手势变换和表情迁移；文中还提到了条件 VAE；      

1. [DeformNet: Free-Form Deformation Network for 3D Shape Reconstruction from a Single Image](http://cn.arxiv.org/abs/1708.04672)   
*2017-08-11* [Paper](https://arxiv.org/abs/1708.04672)   
$\bullet  \bullet$   `怎么解决的推理问题`{:.warning}    
编码信息中融合了二维图像和三维图像的信息；   

1. [Using Locally Corresponding CAD Models for Dense 3D Reconstructions from a Single Image](http://ci2cv.net/media/papers/chenkong_cvpr_2017.pdf)   
CVPR 2017 [Paper](http://ci2cv.net/media/papers/chenkong_cvpr_2017.pdf)    
利用二维图像及其关键点，重建三维模型；早期的模型都要么是基于一组 CAD 映射，要么是的各映射元素之间进行混合，都很难融合到 CNN 里，本文想了个两阶段的策略，把这些融合进去了；其中使用了图卷积；在合成数据集和真实数据集上表现都很好；      
`什么叫  dense 3D shape of an object`{:.warning}   
>感觉是三维重建的另一个分支了   

1. [Compact Model Representation for 3D Reconstruction](http://cn.arxiv.org/abs/1707.07360)   
2017 [Paper](https://arxiv.org/abs/1707.07360) | [Code](https://github.com/jhonykaesemodel/compact_3D_reconstruction)     

1. [Image2Mesh: A Learning Framework for Single Image 3D Reconstruction](http://cn.arxiv.org/abs/1711.10669)   
2017 [Paper](https://arxiv.org/abs/1711.10669) | [Code](https://github.com/jhonykaesemodel/image2mesh)     

1. [Learning free-form deformations for 3D object reconstruction ](http://cn.arxiv.org/abs/1803.10932)   
ACCV 2018 [Paper](https://arxiv.org/abs/1803.10932) | [Tensorflow](https://github.com/jackd/template_ffd)    

1. [Lions and Tigers and Bears: Capturing Non-Rigid, 3D, Articulated Shape from Images](http://files.is.tue.mpg.de/black/papers/zuffiCVPR2018.pdf)   
CVPR 2018 [Paper](http://files.is.tue.mpg.de/black/papers/zuffiCVPR2018.pdf)   

1. [GRASS: Generative Recursive Autoencoders for Shape Structures](http://cn.arxiv.org/abs/1705.02090)      
SIGGRAPH 2017 [Paper](https://arxiv.org/abs/1705.02090) | [Matlab](https://github.com/junli-lj/grass) | [Pytorch](https://github.com/kevin-kaixu/grass_pytorch) | [Project](https://kevinkaixu.net/projects/grass.html)      
*`自编码` · `对称结构` · `图卷积` · `RNN`*    
**从物体的层次性和对称性入手提高生成效果**：GRASS，   
**几何结构编码**：将物体各部位的外接框编码成固定长度的向量；  
**循环自编码**：使用 RNN 作为自编码网络，将每一个目标框编码成特征向量，同时生成起层次结构；然后使用相反的结构来恢复物体框；使用重建损失来指导训练；    
**学习局部结构**：在自编码基础上，加入 GAN，来生成物体形状；GAN 根据物体的多个局部编码生成其三维结构；   
**几何合成**：  
>使用了复杂的组合模型来探索三维图像的几何结构问题，针对不同的部位单独生成其对应的三维模型，来提高生成效果；（论文很难读）；   

1. [Cross-modal Deep Variational Hand Pose Estimation](http://cn.arxiv.org/abs/1803.11404)    
*2018-03-30* [Paper](https://arxiv.org/abs/1803.11404)    
*`手 3D 姿态估计` · `VAE`*   
$\bullet  \bullet$   `怎么论证的 VAE 效果比 GAN 好`{:.warning} `那段数学证明在干嘛`{:.warning}    
使用 VAE 从平面图估计出手的三维姿态；并为此，根据 AVE 的变分下界推导出目标函数；`可是最后还是用的 KL 散度和 L2 啊`{:.warning}    
>文中的多模态指的是数据格式不同——RGB、二维、三位和深度图；    

1. [GRAINS: Generative Recursive Autoencoders for INdoor Scenes](http://cn.arxiv.org/abs/1807.09193)    
*2018-07-24* [Paper](https://arxiv.org/abs/1807.09193)    
使用递归变分自编码网络进行三维室内场景生成； VAE 主要负责 2D 转 3D；`RNN 在里边干啥了`{:.warning}    

1. [3D Shape Reconstruction from a Single 2D Image via 2D-3D Self-Consistency](http://cn.arxiv.org/abs/1811.12016)   
*2018-11-29* [paper](https://arxiv.org/abs/1811.12016)   
>摘要很烂，所用方法之字未提；    

1. [Learning single-image 3D reconstruction by generative modelling of shape, pose and shading](http://cn.arxiv.org/abs/1901.06447)   
*2019-01-19* [Paper](https://arxiv.org/abs/1901.06447)
弱监督三维重建；   

1. [Learning to Infer and Execute 3D Shape Programs](http://cn.arxiv.org/abs/1901.02875)   
ICLR 2019 [Paper](https://arxiv.org/abs/1901.02875) | [Pytorch](https://github.com/HobbitLong/shape2prog) | [Project](http://shape2prog.csail.mit.edu/)   
**问题**：3D 图像的表示可以用体素，点云和网格；这些方式各有优劣，但是都无法表示物体的边缘和平面特性；  
**方案**：本文用程序（事先定义好语言）来表示 3D 图像；并对物体的对称性和重复结构进行建模；    
**模型**：模型包括一个程序生成器和一个程序执行器；生成器用于生成模型的表征程序，执行器用于执行生成的程序，且带有渲染功能；生成器包含两个 LSTM，并结合了 3D 卷积；   
**数据集**：shapeNet，Pix3D和自建数据集；   
>本文着眼于解析 3D 物体形状以在相关领域取得进一步的成果；模型整体上是自编码结构，只不过得到的「编码」不是数值，而是具有语法的文字；  
文章是基于三维数据做的实验，作者认为该方法可以扩展到三维重建；   
摘要没看懂；   

1. [3D Organ Shape Reconstruction from Topogram Images](http://cn.arxiv.org/abs/1904.00073)   
*2019-03-29* [Paper](https://arxiv.org/abs/1904.00073)   
基于 CT 的 3D 肝脏器官重建；    

1. [Dense 3D Face Decoding over 2500FPS: Joint Texture & Shape Convolutional Mesh Decoders](http://cn.arxiv.org/abs/1904.03525)    
*2019-04-06* [Paper](https://arxiv.org/abs/1904.03525)   
$\bullet  \bullet$   

1. [Convolutional Mesh Regression for Single-Image Human Shape Reconstruction](https://pdfs.semanticscholar.org/0038/a0ddf8a0278be15406cafccd3acde2dbc6a7.pdf?_ga=2.38895779.1829027256.1556162802-1749154426.1548839945)   
*2019* [Paper](https://pdfs.semanticscholar.org/0038/a0ddf8a0278be15406cafccd3acde2dbc6a7.pdf?_ga=2.38895779.1829027256.1556162802-1749154426.1548839945)      
*`图卷积`*  

1. [Photo-Geometric Autoencoding to Learn 3D Objects from Unlabelled Images](http://cn.arxiv.org/abs/1906.01568)   
*2019-06-04* [paper](https://arxiv.org/abs/1906.01568)    


## 4.3 其他
1. [Learning to Generate Chairs, Tables and Cars with Convolutional Networks](http://cn.arxiv.org/abs/1411.5928)   
2014 [Paper](https://arxiv.org/abs/1411.5928)  

1. [Weakly-supervised Disentangling with Recurrent Transformations for 3D View Synthesis](http://cn.arxiv.org/abs/1601.00706)   
2015, NIPS [Paper](https://arxiv.org/abs/1601.00706) | [Caffe](https://github.com/jimeiyang/deepRotator)     

1. [Analysis and synthesis of 3D shape families via deep-learned generative models of surfaces](https://people.cs.umass.edu/~hbhuang/publications/bsm/)   
2015 [Paper](https://people.cs.umass.edu/~hbhuang/publications/bsm/)   

1. [Structured Prediction of Unobserved Voxels From a Single Depth Image](http://visual.cs.ucl.ac.uk/pubs/depthPrediction/depth_prediction_main.pdf)   
CVPR 2016, Voxlets [Paper](http://visual.cs.ucl.ac.uk/pubs/depthPrediction/depth_prediction_main.pdf) | [Python](https://github.com/mdfirman/voxlets) | [Project](http://visual.cs.ucl.ac.uk/pubs/depthPrediction/)    
*`深度三维重建`*    
根据单张深度图重建整个三维模型；  
**数据集**：自建了数据集——tabletop 主要是包括遮挡情况，目前公开数据集很少包括这样的场景；NYU-Depth V2 数据集，我们把其中没有重建模型的数据，自己合成了对应的三维模型；    

1. [3D-R2N2: 3D Recurrent Reconstruction Neural Network](http://cn.arxiv.org/abs/1604.00449)   
ECCV 2016 [Paper](https://arxiv.org/abs/1604.00449) | [Theano](https://github.com/chrischoy/3D-R2N2)    

1. [Perspective Transformer Nets: Learning Single-View 3D Object Reconstruction without 3D Supervision](http://cn.arxiv.org/abs/1612.00814)   
NIPS 2016 [Paper](https://arxiv.org/abs/1612.00814) | [Torch](https://github.com/xcyan/nips16_PTN)-Offical     

1. [Learning a Predictable and Generative Vector Representation for Objects](http://cn.arxiv.org/abs/1603.08637)   
ECCV 2016, TL-EmbeddingNet [Paper](https://arxiv.org/abs/1603.08637) | [Caffe](https://github.com/rohitgirdhar/GenerativePredictableVoxels)-Offical(for test) | [Video](http://videolectures.net/eccv2016_girdhar_vector_representation/)          

 1. [Unsupervised Learning of 3D Structure from Images](http://cn.arxiv.org/abs/1607.00662)   
NIPS 2016 [Paper](https://arxiv.org/abs/1607.00662)    

1. [Generative and Discriminative Voxel Modeling with Convolutional Neural Networks]()   
2016 [Paper](https://arxiv.org/abs/1608.04236.pdf) | [Code](https://github.com/ajbrock/Generative-and-Discriminative-Voxel-Modeling)    

1. [Multi-view Supervision for Single-view Reconstruction via Differentiable Ray Consistency](http://cn.arxiv.org/abs/1704.06254)   
CVPR 2017 [Paper](https://arxiv.org/abs/1704.06254) | [Python](https://github.com/shubhtuls/drc)-Offical        

1. [Synthesizing 3D Shapes via Modeling Multi-View Depth Maps and Silhouettes with Deep Generative Networks](http://openaccess.thecvf.com/content_cvpr_2017/papers/Soltani_Synthesizing_3D_Shapes_CVPR_2017_paper.pdf)   
CVPR 2017 [Paper](http://openaccess.thecvf.com/content_cvpr_2017/papers/Soltani_Synthesizing_3D_Shapes_CVPR_2017_paper.pdf) | [Torch-Lua](https://github.com/Amir-Arsalan/Synthesize3DviaDepthOrSil)    

1. [Shape Completion using 3D-Encoder-Predictor CNNs and Shape Synthesis](http://cn.arxiv.org/abs/1612.00101)   
CVPR 2017 [Paper](https://arxiv.org/abs/1612.00101) | [Torch](https://github.com/angeladai/cnncomplete)    

1. [Octree Generating Networks: Efficient Convolutional Architectures for High-resolution 3D Outputs](http://cn.arxiv.org/abs/1703.09438)   
2017 [Paper](https://arxiv.org/abs/1703.09438) | [Code](https://github.com/lmb-freiburg/ogn)   

1. [Hierarchical Surface Prediction for 3D Object Reconstruction]()   
2017 [Paper](https://arxiv.org/abs/1704.00710.pdf)     

1. [OctNetFusion: Learning Depth Fusion from Data]()   
2017 [Paper](https://arxiv.org/abs/1704.01047.pdf) | [Code](https://github.com/griegler/octnetfusion) | [Caffe](https://github.com/lmb-freiburg/ogn)        

1. [A Point Set Generation Network for 3D Object Reconstruction from a Single Image](http://cn.arxiv.org/abs/1612.00603)   
2017 [Paper](https://arxiv.org/abs/1612.00603) | [Tensorflow](https://github.com/fanhqme/PointSetGeneration)     

1. [Learning Representations and Generative Models for 3D Point Clouds](http://cn.arxiv.org/abs/1707.02392)   
ICML 2018 [Paper](https://arxiv.org/abs/1707.02392) | [Tensorflow](https://github.com/optas/latent_3d_points)-Offical   

1. [Shape Generation using Spatially Partitioned Point Clouds](http://cn.arxiv.org/abs/1707.06267)   
BMVC 2017 [Paper](https://arxiv.org/abs/1707.06267)      

1. [PCPNET:Learning Local Shape Properties from Raw Point Clouds](http://cn.arxiv.org/abs/1710.04954)   
2017 [Paper](https://arxiv.org/abs/1710.04954) | [Torch](https://github.com/paulguerrero/pcpnet)      

1. [Tag Disentangled Generative Adversarial Networks for Object Image Re-rendering]()   
IJCAI 2017 优必选 [Paper](http://static.ijcai.org/proceedings-2017/0404.pdf) | [Video](http://www.mooc.ai/open/course/248)       

1. [3D Shape Reconstruction from Sketches via Multi-view Convolutional Networks](http://cn.arxiv.org/abs/1707.06375)   
3DV 2017 [Paper](https://arxiv.org/abs/1707.06375) | [C++](https://github.com/happylun/SketchModeling)-Offical | [Project](https://people.cs.umass.edu/~zlun/papers/SketchModeling/)   

1. [Interactive 3D Modeling with a Generative Adversarial Network](http://cn.arxiv.org/abs/1706.05170)   
3DV 2017 [Paper](https://arxiv.org/abs/1706.05170) | [Lua-py](https://github.com/jerryjliu/3dexps)       

1. [SurfNet: Generating 3D shape surfaces using deep residual networks](http://cn.arxiv.org/abs/1703.04079)   
CVPR 2017 [Paper](https://arxiv.org/abs/1703.04079) | [Matlab](https://github.com/sinhayan/surfnet)   

1. [3D-PRNN: Generating Shape Primitives with Recurrent Neural Networks](http://cn.arxiv.org/abs/1708.01648)   
ICCV 2017 [Paper](https://arxiv.org/abs/1708.01648) | [Pytorch-lua](https://github.com/zouchuhang/3D-PRNN)   

1. [Large-Scale 3D Shape Reconstruction and Segmentation from ShapeNet Core55](http://cn.arxiv.org/abs/1710.06104)   
ICCV 2017 [Paper](https://arxiv.org/abs/1710.06104)    

1. [Pix2vox: Sketch-Based 3D Exploration with Stacked Generative Adversarial Networks]()   
2017 [Tensorflow-PyQt](https://github.com/maxorange/pix2vox)    

1. [3D Sketching using Multi-View Deep Volumetric Prediction](http://cn.arxiv.org/abs/1707.08390)   
2017 [Paper](https://arxiv.org/abs/1707.08390)   

1. [MarrNet: 3D Shape Reconstruction via 2.5D Sketches](http://cn.arxiv.org/abs/1711.03129)   
NIPS 2017 [Paper](https://arxiv.org/abs/1711.03129) | [Pytorch](https://github.com/jiajunwu/marrnet) | [Project](http://marrnet.csail.mit.edu/)       

1. [Learning a Multi-View Stereo Machine](http://cn.arxiv.org/abs/1708.05375)   
2017 NIPS, 伯克利 [Paper](https://arxiv.org/abs/1708.05375) | [Tensorflow](https://github.com/akar43/lsm) | [Blog](https://bair.berkeley.edu/blog/2017/09/05/unified-3d/)      

1. [Scaling CNNs for High Resolution Volumetric Reconstruction from a Single Image](https://ieeexplore.ieee.org/document/8265323/)   
2017 [Paper](https://ieeexplore.ieee.org/document/8265323/)    

1. [ComplementMe: Weakly-Supervised Component Suggestions for 3D Modeling](http://cn.arxiv.org/abs/1708.01841)   
SIGGRAPH 2017 [Paper](https://arxiv.org/abs/1708.01841) | [Tensorflow](https://github.com/mhsung/complement-me)-Offical | [Project](https://mhsung.github.io/complement-me.html)       


1. [Learning to Reconstruct High-quality 3D Shapes with Cascaded Fully Convolutional Networks](http://openaccess.thecvf.com/content_ECCV_2018/papers/Yan-Pei_Cao_Learning_to_Reconstruct_ECCV_2018_paper.pdf）    
ECCV 2018 *2018* [paper](http://openaccess.thecvf.com/content_ECCV_2018/papers/Yan-Pei_Cao_Learning_to_Reconstruct_ECCV_2018_paper.pdf)     
3D FCN；   

1. [Neural 3D Mesh Renderer](http://cn.arxiv.org/abs/1711.07566)   
CVPR 2018 [Paper](https://arxiv.org/abs/1711.07566) | [Chainer](https://github.com/hiroharu-kato/neural_renderer)-Offical | [Pytorch](https://github.com/daniilidis-group/neural_renderer) | [Tensorflow-Chainer](https://github.com/laughtervv/tf_neural_renderer) | [Project](http://hiroharu-kato.com/projects_en/neural_renderer.html)    

1. [Multi-view Consistency as Supervisory Signal  for Learning Shape and Pose Prediction](http://cn.arxiv.org/abs/1801.03910)   
CVPR 2018 [Paper](https://arxiv.org/abs/1801.03910) | [Pytorch](https://github.com/shubhtuls/mvcSnP)-Offical | [Project](https://shubhtuls.github.io/mvcSnP/)  

1. [Object-Centric Photometric Bundle Adjustment with Deep Shape Prior](http://cn.arxiv.org/abs/1711.01470)   
2018 [Paper](https://arxiv.org/abs/1711.01470)   

1. [Learning Efficient Point Cloud Generation for Dense 3D Object Reconstruction](http://cn.arxiv.org/abs/1706.07036)   
AAAI 2018 [Paper](https://arxiv.org/abs/1706.07036) | [Tensorflow](https://github.com/chenhsuanlin/3D-point-cloud-generation)-Offical | [Project](https://chenhsuanlin.bitbucket.io/3D-point-cloud-generation/)   

1. [Pixel2Mesh: Generating 3D Mesh Models from Single RGB Images](http://cn.arxiv.org/abs/1804.01654)   
2018, 复旦大学、普林斯顿大学、Intel Labs 和腾讯 AI Lab [Paper](https://arxiv.org/abs/1804.01654) | [Tensorflow](https://github.com/nywang16/Pixel2Mesh)    

1. [AtlasNet: A Papier-Mâché Approach to Learning 3D Surface Generation](http://cn.arxiv.org/abs/1802.05384)   
2018 CVPR [Paper](https://arxiv.org/abs/1802.05384) | [Pytorch](https://github.com/ThibaultGROUEIX/AtlasNet)-Offical | [Project](http://imagine.enpc.fr/~groueixt/atlasnet/)    

1. [Deep Marching Cubes: Learning Explicit Surface Representations]()   
CVPR 2018 [Paper](http://www.cvlibs.net/publications/Liao2018CVPR.pdf) | [Pytorch](https://github.com/yiyiliao/deep_marching_cubes)    

1. [Im2Avatar: Colorful 3D Reconstruction from a Single Image](http://cn.arxiv.org/abs/1804.06375)   
2018 [Paper](https://arxiv.org/abs/1804.06375) | [Tensorflow](https://github.com/syb7573330/im2avatar)-Offical | [Project](https://liuziwei7.github.io/projects/Im2Avatar)    

1. [Learning Category-Specific Mesh Reconstruction from Image Collections](http://cn.arxiv.org/abs/1803.07549)   
ECCV 2018, 伯克利 [Paper](https://arxiv.org/abs/1803.07549) | [Pytorch](https://github.com/akanazawa/cmr)-Offical | [Project](https://akanazawa.github.io/cmr/)    

1. [Layer-structured 3D Scene Inference via View Synthesis](http://cn.arxiv.org/abs/1807.10264)  
ECCV 2018 [Paper](https://arxiv.org/abs/1807.10264) | [Tensorflow](https://github.com/google/layered-scene-inference) | [Project](https://shubhtuls.github.io/lsi/)  

1. [Sidekick Policy Learning for Active Visual Exploration](http://cn.arxiv.org/abs/1807.11010)  
ECCV 2018 [Paper](https://arxiv.org/abs/1807.11010) | [Pytorch](https://github.com/srama2512/sidekicks) | [Project](http://vision.cs.utexas.edu/projects/sidekicks/)   

1. [Im2Pano3D: Extrapolating 360° Structure and Semantics Beyond the Field of View](http://cn.arxiv.org/abs/1712.04569)   
CVPR 2018 [Paper](https://arxiv.org/abs/1712.04569) | [Pytorch](https://github.com/shurans/im2pano3d/)-Matlab | [Project](http://im2pano3d.cs.princeton.edu/)   

1. [CSGNet: Neural Shape Parser for Constructive Solid Geometry](http://cn.arxiv.org/abs/1712.08290)   
CVPR 2018 [Paper](https://arxiv.org/abs/1712.08290) | [Python-2D](https://github.com/Hippogriff/CSGNet)-Offical | [Python-3D](https://github.com/Hippogriff/3DCSGNet) | [Project](https://hippogriff.github.io/CSGNet/)       

1. [Multi-View Silhouette and Depth Decomposition for High Resolution 3D Object Representation](http://cn.arxiv.org/abs/1802.09987)   
NIPS 2018 [Paper](https://arxiv.org/abs/1802.09987) | [Tensorflow](https://github.com/EdwardSmith1884/Multi-View-Silhouette-and-Depth-Decomposition-for-High-Resolution-3D-Object-Representation)     

1. [Pixels, voxels, and views: A study of shape representations for single view 3D object shape prediction](http://cn.arxiv.org/abs/1804.06032)   
CVPR 2018 [Paper](https://arxiv.org/abs/1804.06032) | [Pytorch](https://github.com/daeyun/object-shapes-cvpr18)-Offical | [Project](https://www.ics.uci.edu/~daeyuns/pixels-voxels-views/)       

1. [Neural scene representation and rendering](http://science.sciencemag.org/content/sci/360/6394/1204.full.pdf?ijkey=kpkRRXA1ckHD6&keytype=ref&siteid=sci)   
2018, GQN [Paper](http://science.sciencemag.org/content/sci/360/6394/1204.full.pdf?ijkey=kpkRRXA1ckHD6&keytype=ref&siteid=sci) | [Chainer](https://github.com/musyoku/chainer-gqn) | [Tensorflow](https://github.com/ogroth/tf-gqn) | [Pytorch](https://github.com/iShohei220/torch-gqn) | [Project](https://deepmind.com/blog/neural-scene-representation-and-rendering/) | [Dataset-GQN](https://github.com/deepmind/gqn-datasets)         
速度相当慢；  

1. [Im2Struct: Recovering 3D Shape Structure from a Single RGB Image](http://cn.arxiv.org/abs/1804.05469)   
CVPR 2018 *2018.04.16* [Paper](https://arxiv.org/abs/1804.05469) | [Matlab](https://github.com/chengjieniu/Im2Struct)-Offical    
*`CNN` · `LSTM`*    
根据二维图像重建三维图像的 CAD 模型（以长方体表示 3D 物体的各个组件）；    

1. [FoldingNet: Point Cloud Auto-encoder via Deep Grid Deformation](http://cn.arxiv.org/abs/1712.07262)   
CVPR 2018 *2017.12.19* [Paper](https://arxiv.org/abs/1712.07262) | [Project](https://ai4ce.github.io/publication/yang-2018-foldingnet/)     
*`图`*   
$\bullet  \bullet$  `损失函数用的什么`{:.warning} `2D-3D框架`{:.warning}    
使用 3D 的自编码器进行点云重建，且框架可以用作 2D 转 3D；   

1. [Pix3D: Dataset and Methods for Single-Image 3D Shape Modeling](http://cn.arxiv.org/abs/1804.04610)   
CVPR 2018 *2018.4.12* [Paper](https://arxiv.org/abs/1804.04610) | [Tensorflow](https://github.com/xingyuansun/pix3d)-Offical | [Project](http://pix3d.csail.mit.edu/)   
$\bullet  \bullet$   `评估标准是什么`{:.warning} `常用的二维图像编码是什么`{:.warning}    
一个可用于三维重建的数据集，考虑到现有的数据集要么是只有三维模型，要么是二维和三维数据之间缺乏对应关系，或者就是数据量太小；我们提出了一个新的三维重建评估标准，还在这个数据集上对前沿算法上进行了测评；    

1. [3D-RCNN: Instance-level 3D Object Reconstruction via Render-and-Compare](http://openaccess.thecvf.com/content_cvpr_2018/CameraReady/1128.pdf)   
CVPR 2018 [Paper](http://openaccess.thecvf.com/content_cvpr_2018/CameraReady/1128.pdf) | [Author](http://yinli.cvpr.net/) | [Project](http://abhijitkundu.info/projects/3D-RCNN/)   
输入二维图像，检测到目标后，对目标进行三维重建，然后映射回原图；`怎么做的重建`{:.warning}   
>最终的效果很像实例分割啊    

1. [Matryoshka Networks: Predicting 3D Geometry via Nested Shape Layers](http://cn.arxiv.org/abs/1804.10975)   
CVPR 2018 *2018.4.29* [Paper](https://arxiv.org/abs/1804.10975) [Pytorch](https://bitbucket.org/visinf/projects-2018-matryoshka) |      
$\bullet  \bullet$    
针对三维重建问题，我们提出了一个高效的网络；核心思想是把三维重建问题当作是二维预测问题；我们先跑了个基准网络，直接根据 2D 图像预测 3D 体素；使用经过验证的基于像素的图片预测任务，效果有所提升；基于这个方法，我们提出了一个能够记忆形状的编码网络，可以递归地重建三维物体，达到高分辨率；

1. [ALIGNet: Partial-Shape Agnostic Alignment via Unsupervised Learning](http://cn.arxiv.org/abs/1804.08497)   
SIGGRAPH 2018 [Paper](https://arxiv.org/abs/1804.08497) | [Pytorch](https://github.com/ranahanocka/ALIGNet/)-Offical-lua | [Project](https://ranahanocka.github.io/ALIGNet/)     
*`无监督`*   
ALIGNet：基于无监督学习的未知局部形状对齐：将2D 图像对齐到未知的三维形状，传统方法都是匹配特征点来对齐，此时当一部分形状缺失时就无法进行对齐；本文针对缺失的部分专门提供了一个损失函数；  

1. [PointGrid: A Deep Network for 3D Shape Understanding](http://openaccess.thecvf.com/content_cvpr_2018/papers/Le_PointGrid_A_Deep_CVPR_2018_paper.pdf)   
CVPR 2018 [Paper](http://openaccess.thecvf.com/content_cvpr_2018/papers/Le_PointGrid_A_Deep_CVPR_2018_paper.pdf) | [Tensorflow](https://github.com/trucleduc/PointGrid)     
*`3D 识别`*

1. [Learning to Reconstruct 3D Manhattan Wireframes from a Single Image](https://arxiv.org/abs/1905.07482)   
*2019-05-17* [paper](https://arxiv.org/abs/1905.07482)   

## 4.4  RGB-D

1. [3DMatch: Learning Local Geometric Descriptors from RGB-D Reconstructions](http://cn.arxiv.org/abs/1603.08182)   
CVPR 2017 [Paper](https://arxiv.org/abs/1603.08182) | [Matlab](https://github.com/andyzeng/3dmatch-toolbox)-Offical | [Project](http://3dmatch.cs.princeton.edu/)    

# 5 多视图重建
## 5.1 GAN
1. [Learning 3D Shapes as Multi-Layered Height-maps using 2D Convolutional Networks](http:/cn./arxiv.org/abs/1807.08485)   
ECCV 2018 *2018-07-23* [Paper](https://arxiv.org/abs/1807.08485) | [Pytorch](https://github.com/krips89/mlh_mvcnn)       
*`CNN` · `3D 形状分类` · `ModelNet` · `DCGAN`*    

## 5.2 自编码

## 5.3 其他
1. [Conditional Single-view Shape Generation for Multi-view Stereo Reconstruction](http://cn.arxiv.org/abs/1904.06699)    
CVPR 2019 *2019-04-14* [paper](https://arxiv.org/abs/1904.06699) | [tensorflow](https://github.com/weiyithu/OptimizeMVS)-offical          
多个视角单独重建的结果取交集；    
>这就需要假设，未知视线下重建结果是多的，感觉不是很合理啊；    


# 6 基于视角的重建

# 7 其他
1. [Occupancy Networks: Learning 3D Reconstruction in Function Space](http://cn.arxiv.org/abs/1812.03828)   
CVPR 2019 *2018-12-10* [paper](https://arxiv.org/abs/1812.03828) | [pytorch](https://github.com/autonomousvision/occupancy_networks)-offical       


-------------------  
[End](#head)
{:.warning}  


# 附录
## A 参考资料
[1]. 维基百科. 三维重建[EB/OL]. <https://zh.wikipedia.org/wiki/%E4%B8%89%E7%BB%B4%E9%87%8D%E5%BB%BA>. -/2019-03-28.   
[2]. dragonlong. Trending in 3D Vision[EB/OL]. <https://github.com/dragonlong/Trending-in-3D-Vision>. -/2019-03-28.    
[3]. timzhang642. 3D-Machine-Learning[EB/OL]. <https://github.com/timzhang642/3D-Machine-Learning>. -/2019-03-28.    
[4]. poodar.chu. 点云感知 CVPR 2018 论文总结. <https://zhuanlan.zhihu.com/p/41287237>.  2018-08-04/2019-03-28     
[5]. sophie. CVPR 2019 论文汇总[EB/OL]. <http://bbs.cvmart.net/topics/302/cvpr#12>. 2019-03/2019-07-12.     
