---
layout: article
title:  "「DL」 元学习资源汇总"
date:   2019-05-23 12:00:40 +0800
key: meta-learning-foundation-20190523
aside:
  toc: true
category: [AI, DL, meta_learning]
tags: 资源
---
<span id='head'></span>  
>识别从未见过的数据类别，使模型具有知识迁移的能力；        

`zero shot learning`     

<!--more-->

# 1 综述
1. [Learning to Detect Unseen Object Class by Between-Class Attribute Transfer](https://pdfs.semanticscholar.org/0890/89c2051bb4a786dfd79276f5c7a2c3672244.pdf)           
CVPR 2009 *2009* [paper](https://pdfs.semanticscholar.org/0890/89c2051bb4a786dfd79276f5c7a2c3672244.pdf)           
最早提出零样本学习；    
$\bullet \bullet$ detect        

1. [Zero Shot Learning with Semantic Output Codes](https://pdfs.semanticscholar.org/0f69/11bc1e6abee8bbf9dd3f8d54d40466429da7.pdf?_ga=2.4060537.835547854.1580895914-504939339.1571502740)     
NIPS 2009 *2009* [paper](https://pdfs.semanticscholar.org/0f69/11bc1e6abee8bbf9dd3f8d54d40466429da7.pdf?_ga=2.4060537.835547854.1580895914-504939339.1571502740)    
$\bullet \bullet$ Output        

1. [Recent Advances in Zero-shot Recognition](http://cn.arxiv.org/abs/1710.04837)      
*2017* [paper](https://arxiv.org/abs/1710.04837)     
$\bullet \bullet$ advance     

1. [A Survey of Zero-Shot Learning: Settings, Methods, and Applications](http://www.ntulily.org/wp-content/uploads/journal/A_Survey_of_Zero-Shot_Learning_Settings_Methods_and_Applications_accepted.pdf)     
TIST 2019 *2019* [paper](http://www.ntulily.org/wp-content/uploads/journal/A_Survey_of_Zero-Shot_Learning_Settings_Methods_and_Applications_accepted.pdf) | [blog](https://www.zhuanzhi.ai/document/d65595558528ee55018fddcad2911da9)       
$\bullet \bullet$ Survey        

# 2 理论
1. [Learning from one example through shared densities on transforms](https://people.cs.umass.edu/~elm/papers/Miller_congealing.pdf)           
*2000* [paper](https://people.cs.umass.edu/~elm/papers/Miller_congealing.pdf)          
$\bullet \bullet$     
贝叶斯单次学习算法的方法     

1. [A Neural-Symbolic Architecture for Inverse Graphics Improved by Lifelong Meta-Learning](http://cn.arxiv.org/abs/1905.08910)   
*2019-05-22* [paper](https://arxiv.org/abs/1905.08910)    

1. [Embedded Meta-Learning: Toward more flexible deep-learning models](http://cn.arxiv.org/abs/1905.09950)   
*2019-05-23* [paper](https://arxiv.org/abs/1905.09950)   


# 3 小样本学习
## 3.1 基于度量的
1. [Prototypical Networks for Few-shot Learning](http://cn.arxiv.org/abs/1703.05175)   
NIPS 2017 *2017-03-15* [paper](https://arxiv.org/abs/1703.05175) | [openreview](https://openreview.net/forum?id=B1-Hhnslg)       

## 3.2 基于模型的
1. [Task-Agnostic Meta-Learning for Few-shotLearning](http://cn.arxiv.org/abs/1805.07722)    
*2018-05-20* [paper](https://arxiv.org/abs/1805.07722) | [reddit](https://www.reddit.com/r/MachineLearning/comments/8m70um/r_taskagnostic_metalearning_for_fewshot_learning/)       

## 3.3 基于优化的
1. [Optimization as a model for few-shot learning](https://openreview.net/pdf?id=rJY0-Kcll)    
ICLR 2017 [paper](https://openreview.net/pdf?id=rJY0-Kcll) | [openreview](https://openreview.net/forum?id=rJY0-Kcll) | [iclr_notes](https://pdfs.semanticscholar.org/14e2/57bd91af4366d79effac149f03b95f1eaf74.pdf)           

1. [Learning to Compare: Relation Network for Few-Shot Learning](http://cn.arxiv.org/abs/1711.06025)   
CVPR 2018 *2017-11-16* [paper](https://arxiv.org/abs/1711.06025) | [pytorch](https://github.com/floodsung/LearningToCompare_FSL)    
文章探讨了这个为什么会有论文中的 idea；提出了一种基于度量（metric-based）的方法，只不过不是人为度量，而是让网络去度量；    

## 3.4 其他
1. [Attentive Task-Agnostic Meta-Learning for Few-Shot Text Classification](http://metalearning.ml/2018/papers/metalearn2018_paper23.pdf)         
[paper](http://metalearning.ml/2018/papers/metalearn2018_paper23.pdf)       | [openreview](https://openreview.net/forum?id=SyxMWh09KX)    

1. [Learning Classifier Synthesis for Generalized Few-Shot Learning](http://cn.arxiv.org/abs/1906.02944)   
*2019-06-07* [paper](https://arxiv.org/abs/1906.02944)    

1. [Meta-Learning with Domain Adaptation for Few-Shot Learning under Domain Shift](https://openreview.net/pdf?id=ByGOuo0cYm)    
ICLR 2019 [paper](https://openreview.net/pdf?id=ByGOuo0cYm) | [openreview](https://openreview.net/forum?id=ByGOuo0cYm)   

1. [Learning to Propagate Labels: Transductive Propagation Network for Few-shot Learning](http://cn.arxiv.org/abs/1805.10002)   
ICLR 2019 *2018-05-25* [paper](https://arxiv.org/abs/1805.10002) | [tensorflow](https://github.com/csyanbin/TPN)-official | [pytorch](https://github.com/csyanbin/TPN-pytorch)-official | [openreview](https://openreview.net/forum?id=SyVuRiC5K7) | [blog](https://zhuanlan.zhihu.com/p/55111343)            

1. [Adaptive Posterior Learning: few-shot learning with a surprise-based memory module](http://cn.arxiv.org/abs/1902.02527)    
ICLR 2019 *2019-02-07* [paper](https://arxiv.org/abs/1902.02527) | [openreview](https://openreview.net/forum?id=ByeSdsC9Km) [pytorch](https://github.com/cogentlabs/apl)      

1. [A Transductive Multi-Head Model for Cross-Domain Few-Shot Learning](http://cn.arxiv.org/abs/2006.11384)  
 *2020-06-08* [paper](https://arxiv.org/abs/2006.11384)     
 
# 4 单样本学习
## 4.1 基于度量的
1. [Matching Networks for One Shot Learning](http://cn.arxiv.org/abs/1606.04080)   
NIPS 2016 *2016-06-13* [paper](https://arxiv.org/abs/1606.04080)    

## 4.2 其他
1. [One-shot learning of object categories](http://vision.stanford.edu/documents/Fei-FeiFergusPerona2006.pdf)           
*2006* [paper](http://vision.stanford.edu/documents/Fei-FeiFergusPerona2006.pdf)           

# 5 零样本学习
1. [Zero-data learning of new tasks](https://www.aaai.org/Papers/AAAI/2008/AAAI08-103.pdf)          
AAAI 2008 *2008* [paper](https://www.aaai.org/Papers/AAAI/2008/AAAI08-103.pdf)          

1. [Zero-Shot Learning with Semantic Output Codes](https://papers.nips.cc/paper/3650-zero-shot-learning-with-semantic-output-codes.pdf)     
NIPS 2009 *2009* [paper](https://papers.nips.cc/paper/3650-zero-shot-learning-with-semantic-output-codes.pdf)    

1. [DeViSE: A Deep Visual-Semantic Embedding Model](https://papers.nips.cc/paper/5204-devise-a-deep-visual-semantic-embedding-model.pdf)     
NIPS 2013 *2013* [paper](https://papers.nips.cc/paper/5204-devise-a-deep-visual-semantic-embedding-model.pdf)    
DeViSE       

1. [Zero-shot learning through cross-modal transfer](http://cn.arxiv.org/abs/1301.3666)    
NIPS 2013 *2013-01-16* [paper](https://arxiv.org/abs/1301.3666) | [matlab](https://github.com/mganjoo/zslearning)    
CMT       

1. [Attribute-Based Classification for Zero-Shot Visual Object Categorization](http://pub.ist.ac.at/~chl/papers/lampert-pami2013.pdf)   
TPAMI 2013 *2013* [paper](http://pub.ist.ac.at/~chl/papers/lampert-pami2013.pdf)     
DAP       

1. [Label Embedding for Attribute-Based Classification](https://www.cv-foundation.org/openaccess/content_cvpr_2013/papers/Akata_Label-Embedding_for_Attribute-Based_2013_CVPR_paper.pdf)  
CVPR 2013 *2013* [paper](https://www.cv-foundation.org/openaccess/content_cvpr_2013/papers/Akata_Label-Embedding_for_Attribute-Based_2013_CVPR_paper.pdf)      
ALE       

1. [Transductive Multi-view Embedding for Zero-Shot Recognition and Annotation](https://www.eecs.qmul.ac.uk/~txiang/publications/Fu_et_al_embedding_eccv2014.pdf)    
ECCV 2014 *2014* [paper](https://www.eecs.qmul.ac.uk/~txiang/publications/Fu_et_al_embedding_eccv2014.pdf)  | [matlab](https://github.com/yanweifu/embedding_zero-shot-learning)    
TMV-BLP       

1. [Zero-Shot Learning via Visual Abstraction](https://computing.ece.vt.edu/~santol/projects/zsl_via_visual_abstraction/eccv2014_zsl_via_visual_abstraction.pdf)  
ECCV 2014 *2014* [paper](https://computing.ece.vt.edu/~santol/projects/zsl_via_visual_abstraction/eccv2014_zsl_via_visual_abstraction.pdf)  | [matlab](https://github.com/StanislawAntol/zsl_via_visual_abstraction) | [project](https://computing.ece.vt.edu/~santol/projects/zsl_via_visual_abstraction/)    

1. [Zero-Shot Recognition with Unreliable Attributes](https://papers.nips.cc/paper/5290-zero-shot-recognition-with-unreliable-attributes.pdf)     
NIPS 2014 *2014* [paper](https://papers.nips.cc/paper/5290-zero-shot-recognition-with-unreliable-attributes.pdf)     

1. [Evaluation of Output Embeddings for Fine-Grained Image Classification](https://www.mpi-inf.mpg.de/fileadmin/inf/d2/akata/1690.pdf)  
CVPR 2015 *2015* [paper](https://www.mpi-inf.mpg.de/fileadmin/inf/d2/akata/1690.pdf)  | [code](https://www.mpi-inf.mpg.de/index.php?id=2325)     
$\bullet \bullet$ - SJE-II       

1. [Zero-Shot Object Recognition by Semantic Manifold Distance](https://www.cv-foundation.org/openaccess/content_cvpr_2015/papers/Fu_Zero-Shot_Object_Recognition_2015_CVPR_paper.pdf)  
CVPR 2015 *2015* [paper](https://www.cv-foundation.org/openaccess/content_cvpr_2015/papers/Fu_Zero-Shot_Object_Recognition_2015_CVPR_paper.pdf)    

1. [Zero-Shot Learning via Semantic Similarity Embedding](https://www.cv-foundation.org/openaccess/content_iccv_2015/papers/Zhang_Zero-Shot_Learning_via_ICCV_2015_paper.pdf)  
ICCV 2015 *2015* [paper](https://www.cv-foundation.org/openaccess/content_iccv_2015/papers/Zhang_Zero-Shot_Learning_via_ICCV_2015_paper.pdf)  | [code](https://zimingzhang.wordpress.com/source-code/)     
$\bullet \bullet$ - SSE       

1. [Semi-Supervised Zero-Shot Classification with Label Representation Learning](https://www.cv-foundation.org/openaccess/content_iccv_2015/papers/Li_Semi-Supervised_Zero-Shot_Classification_ICCV_2015_paper.pdf)  
ICCV 2015 *2015* [paper](https://www.cv-foundation.org/openaccess/content_iccv_2015/papers/Li_Semi-Supervised_Zero-Shot_Classification_ICCV_2015_paper.pdf)     
LRL       

1. [Unsupervised Domain Adaptation for Zero-Shot Learning](https://www.cv-foundation.org/openaccess/content_iccv_2015/papers/Kodirov_Unsupervised_Domain_Adaptation_ICCV_2015_paper.pdf)  
ICCV 2015 *2015* [paper](https://www.cv-foundation.org/openaccess/content_iccv_2015/papers/Kodirov_Unsupervised_Domain_Adaptation_ICCV_2015_paper.pdf)    
UDA       

1. [Predicting Deep Zero-Shot Convolutional Neural Networks using Textual Descriptions](https://www.cv-foundation.org/openaccess/content_iccv_2015/papers/Ba_Predicting_Deep_Zero-Shot_ICCV_2015_paper.pdf)  
ICCV 2015 *2015* [paper](https://www.cv-foundation.org/openaccess/content_iccv_2015/papers/Ba_Predicting_Deep_Zero-Shot_ICCV_2015_paper.pdf)    

1. [Transductive Multi-view Zero-Shot Learning](https://arxiv.org/abs/1501.04560)  
TPAMI 2015 *2015* [paper](https://arxiv.org/abs/1501.04560)  | [matlab](https://github.com/yanweifu/embedding_zero-shot-learning)    
TMV       
1. [An embarrassingly simple approach to zero-shot learning](http://proceedings.mlr.press/v37/romera-paredes15.pdf)  
ICML 2015 *2015* [paper](http://proceedings.mlr.press/v37/romera-paredes15.pdf)  | [python](https://github.com/MLWave/extremely-simple-one-shot-learning)      
$\bullet \bullet \bullet$ - EsZSL       
入门的工程；    

1. [Label-Embedding for Image Classification](http://cn.arxiv.org/abs/1503.08677)  
TPAMI 2016 *2016* [paper](https://arxiv.org/abs/1503.08677)    
ALE       

1. [Relational Knowledge Transfer for Zero-Shot Learning](https://www.aaai.org/ocs/index.php/AAAI/AAAI16/paper/view/11802/11854)  
AAAI 2016 *2016* [paper](https://www.aaai.org/ocs/index.php/AAAI/AAAI16/paper/view/11802/11854)    
RKT      

1. [An Empirical Study and Analysis of Generalized Zero-Shot Learning for Object Recognition in the Wild](http://cn.arxiv.org/abs/1605.04253)  
ECCV 2016 *2016* [paper](https://arxiv.org/abs/1605.04253)

1. [Multi-Task Zero-Shot Action Recognition with Prioritised Data Augmentation](http://cn.arxiv.org/abs/1611.08663)  
ECCV 2016 *2016* [paper](https://arxiv.org/abs/1611.08663)
MTE     

1. [Zero-Shot Recognition via Structured Prediction](https://pdfs.semanticscholar.org/be96/1637db8561b027fd48788c64e7919c7cd760.pdf)  
ECCV 2016 *2016* [paper](https://pdfs.semanticscholar.org/be96/1637db8561b027fd48788c64e7919c7cd760.pdf)

1. [Improving Semantic Embedding Consistency by Metric Learning for Zero-Shot Classification](http://cn.arxiv.org/abs/1607.08085)  
ECCV 2016 *2016* [paper](https://arxiv.org/abs/1607.08085)

1. [Multi-Cue Zero-Shot Learning With Strong Supervision](http://openaccess.thecvf.com/content_cvpr_2016/papers/Akata_Multi-Cue_Zero-Shot_Learning_CVPR_2016_paper.pdf)  
CVPR 2016 *2016* [paper](http://openaccess.thecvf.com/content_cvpr_2016/papers/Akata_Multi-Cue_Zero-Shot_Learning_CVPR_2016_paper.pdf) | [project](https://www.mpi-inf.mpg.de/index.php?id=2935)
MC-ZSL     

1. [Latent Embeddings for Zero-Shot Classification](http://openaccess.thecvf.com/content_cvpr_2016/papers/Xian_Latent_Embeddings_for_CVPR_2016_paper.pdf)  
CVPR 2016 *2016* [paper](http://openaccess.thecvf.com/content_cvpr_2016/papers/Xian_Latent_Embeddings_for_CVPR_2016_paper.pdf) | [code](http://datasets.d2.mpi-inf.mpg.de/yxian16cvpr/latEm.zip)  
$\bullet \bullet$ - LATEM     

1. [Less Is More: Zero-Shot Learning From Online Textual Documents With Noise Suppression](http://openaccess.thecvf.com/content_cvpr_2016/papers/Qiao_Less_Is_More_CVPR_2016_paper.pdf)  
CVPR 2016 *2016* [paper](http://openaccess.thecvf.com/content_cvpr_2016/papers/Qiao_Less_Is_More_CVPR_2016_paper.pdf)  
LIM    

1. [Synthesized Classifiers for Zero-Shot Learning](http://openaccess.thecvf.com/content_cvpr_2016/papers/Changpinyo_Synthesized_Classifiers_for_CVPR_2016_paper.pdf)  
CVPR 2016 *2016* [paper](http://openaccess.thecvf.com/content_cvpr_2016/papers/Changpinyo_Synthesized_Classifiers_for_CVPR_2016_paper.pdf) | [code](https://github.com/pujols/zero-shot-learning)-official | [matlab](https://github.com/pujols/Zero-shot-learning-journal)-official  
$\bullet \bullet$ - SYNC    

1. [Recovering the Missing Link: Predicting Class-Attribute Associations for Unsupervised Zero-Shot Learning](http://openaccess.thecvf.com/content_cvpr_2016/papers/Al-Halah_Recovering_the_Missing_CVPR_2016_paper.pdf)  
CVPR 2016 *2016* [paper](http://openaccess.thecvf.com/content_cvpr_2016/papers/Al-Halah_Recovering_the_Missing_CVPR_2016_paper.pdf)  
RML    

1. [Zero-Shot Learning via Joint Latent Similarity Embedding](http://openaccess.thecvf.com/content_cvpr_2016/papers/Zhang_Zero-Shot_Learning_via_CVPR_2016_paper.pdf)  
CVPR 2016 *2016* [paper](http://openaccess.thecvf.com/content_cvpr_2016/papers/Zhang_Zero-Shot_Learning_via_CVPR_2016_paper.pdf) | [code](https://drive.google.com/file/d/1RimUgUlf2tfpntzlxdlYaAvm34HX0fUb/view?usp=sharing)  
$\bullet \bullet$ - SLE     

1. [Semantically Consistent Regularization for Zero-Shot Recognition](http://www.svcl.ucsd.edu/~morgado/score/score-cvpr17.pdf)  
CVPR 2017 *2017* [paper](http://www.svcl.ucsd.edu/~morgado/score/score-cvpr17.pdf) | [caffe](https://github.com/pedro-morgado/score-zeroshot)  
$\bullet \bullet$ - Deep-SCoRe      

1. [Learning a Deep Embedding Model for Zero-Shot Learning](http://cn.arxiv.org/abs/1611.05088)  
CVPR 2017 *2017* [paper](https://arxiv.org/abs/1611.05088) | [tensorflow](https://github.com/lzrobots/DeepEmbeddingModel_ZSL)  
$\bullet \bullet$ - DEM     

1. [From Zero-Shot Learning to Conventional Supervised Classification: Unseen Visual Data Synthesis](http://openaccess.thecvf.com/content_cvpr_2017/html/Long_From_Zero-Shot_Learning_CVPR_2017_paper.html)  
CVPR 2017 *2017* [paper](http://openaccess.thecvf.com/content_cvpr_2017/html/Long_From_Zero-Shot_Learning_CVPR_2017_paper.html)  
VDS     

1. [Low-Rank Embedded Ensemble Semantic Dictionary for Zero-Shot Learning](http://openaccess.thecvf.com/content_cvpr_2017/papers/Ding_Low-Rank_Embedded_Ensemble_CVPR_2017_paper.pdf)  
CVPR 2017 *2017* [paper](http://openaccess.thecvf.com/content_cvpr_2017/papers/Ding_Low-Rank_Embedded_Ensemble_CVPR_2017_paper.pdf)  
ESD     

1. [Semantic Autoencoder for Zero-Shot Learning](http://openaccess.thecvf.com/content_cvpr_2017/papers/Kodirov_Semantic_Autoencoder_for_CVPR_2017_paper.pdf)  
CVPR 2017 *2017* [paper](http://openaccess.thecvf.com/content_cvpr_2017/papers/Kodirov_Semantic_Autoencoder_for_CVPR_2017_paper.pdf)  | [matlab](https://github.com/Elyorcv/SAE)-official | [pytorch](https://github.com/hoseong-kim/sae-pytorch)    
$\bullet \bullet$ - SAE     

1. [Zero-Shot Recognition Using Dual Visual-Semantic Mapping Paths](http://openaccess.thecvf.com/content_cvpr_2017/papers/Li_Zero-Shot_Recognition_Using_CVPR_2017_paper.pdf)         
CVPR 2017 *2017* [paper](http://openaccess.thecvf.com/content_cvpr_2017/papers/Li_Zero-Shot_Recognition_Using_CVPR_2017_paper.pdf)  
DVSM     

1. [Matrix Tri-Factorization With Manifold Regularizations for Zero-Shot Learning](http://openaccess.thecvf.com/content_cvpr_2017/papers/Xu_Matrix_Tri-Factorization_With_CVPR_2017_paper.pdf)  
CVPR 2017 *2017* [paper](http://openaccess.thecvf.com/content_cvpr_2017/papers/Xu_Matrix_Tri-Factorization_With_CVPR_2017_paper.pdf)  
MTF-MR    

1. [Gaze Embeddings for Zero-Shot Image Classification](http://cn.arxiv.org/abs/1611.09309)  
CVPR 2017 *2017* [paper](https://arxiv.org/abs/1611.09309)  | [python](https://github.com/Noura-kr/CVPR17)     
$\bullet \bullet$ - SJE   

1. [Zero-Shot learning - The Good, the Bad and the Ugly](http://openaccess.thecvf.com/content_cvpr_2017/papers/Xian_Zero-Shot_Learning_-_CVPR_2017_paper.pdf)  
CVPR 2017 *2017* [paper](http://openaccess.thecvf.com/content_cvpr_2017/papers/Xian_Zero-Shot_Learning_-_CVPR_2017_paper.pdf)  | [caffe](https://github.com/pedro-morgado/score-zeroshot)    
$\bullet \bullet$ - GUB    

1. [Attributes2Classname: A Discriminative Model for Attribute-Based Unsupervised Zero-Shot Learning](http://openaccess.thecvf.com/content_ICCV_2017/papers/Demirel_Attributes2Classname_A_Discriminative_ICCV_2017_paper.pdf)  
ICCV 2017 *2017* [paper](http://openaccess.thecvf.com/content_ICCV_2017/papers/Demirel_Attributes2Classname_A_Discriminative_ICCV_2017_paper.pdf) | [tensorflow](https://github.com/berkandemirel/attributes2classname)    
$\bullet \bullet$ - A2C     

1. [Predicting Visual Exemplars of Unseen Classes for Zero-Shot Learning](http://openaccess.thecvf.com/content_ICCV_2017/papers/Changpinyo_Predicting_Visual_Exemplars_ICCV_2017_paper.pdf)  
ICCV 2017 *2017* [paper](http://openaccess.thecvf.com/content_ICCV_2017/papers/Changpinyo_Predicting_Visual_Exemplars_ICCV_2017_paper.pdf) | [matlab](https://github.com/pujols/Zero-shot-learning-journal)  
PVE    

1. [Learning Discriminative Latent Attributes for Zero-Shot Classification](http://openaccess.thecvf.com/content_ICCV_2017/papers/Jiang_Learning_Discriminative_Latent_ICCV_2017_paper.pdf)  
ICCV 2017 *2017* [paper](http://openaccess.thecvf.com/content_ICCV_2017/papers/Jiang_Learning_Discriminative_Latent_ICCV_2017_paper.pdf)  
LDL    

1. [Zero-Shot Recognition via Direct Classifier Learning with Transferred Samples and Pseudo Labels](https://aaai.org/ocs/index.php/AAAI/AAAI17/paper/view/14160/14281)  
AAAI 2017 *2017* [paper](https://aaai.org/ocs/index.php/AAAI/AAAI17/paper/view/14160/14281)    
DCL     

1. [Zero-Shot Learning via Category-Specific Visual-Semantic Mapping and Label Refinement](https://ieeexplore.ieee.org/document/8476580)        
*2018* [paper](https://ieeexplore.ieee.org/document/8476580)    
AEZSL       

1. [Zero-Shot Dialog Generation with Cross-Domain Latent Actions](http://cn.arxiv.org/abs/1805.04803)     
SIGDIAL 2018 *2018* [paper](https://arxiv.org/abs/1805.04803)  | [pytorch](https://github.com/snakeztc/NeuralDialog-ZSDG)     
$\bullet \bullet$ - ZSGD       

1. [Adversarial Zero-shot Learning With Semantic Augmentation](https://aaai.org/ocs/index.php/AAAI/AAAI18/paper/view/16805/15965)  
AAAI 2018 *2018* [paper](https://aaai.org/ocs/index.php/AAAI/AAAI18/paper/view/16805/15965)    
GANZrl    

1. [Joint Dictionaries for Zero-Shot Learning](https://aaai.org/ocs/index.php/AAAI/AAAI18/paper/view/16404/16723)  
AAAI 2018 *2018* [paper](https://aaai.org/ocs/index.php/AAAI/AAAI18/paper/view/16404/16723)    
JDZsL     

1. [Zero-Shot Learning via Class-Conditioned Deep Generative Models](https://aaai.org/ocs/index.php/AAAI/AAAI18/paper/view/16087/16709)  
AAAI 2018 *2018* [paper](https://aaai.org/ocs/index.php/AAAI/AAAI18/paper/view/16087/16709)    
VZSL     

1. [Zero-Shot Learning With Attribute Selection](https://aaai.org/ocs/index.php/AAAI/AAAI18/paper/view/16350/16272)  
AAAI 2018 *2018* [paper](https://aaai.org/ocs/index.php/AAAI/AAAI18/paper/view/16350/16272)   
AS     

1. [Deep Semantic Structural Constraints for Zero-Shot Learning](https://aaai.org/ocs/index.php/AAAI/AAAI18/paper/view/16309/16294)  
AAAI 2018 *2018* [paper](https://aaai.org/ocs/index.php/AAAI/AAAI18/paper/view/16309/16294)    
DSSC     

1. [Towards Affordable Semantic Searching: Zero-Shot Retrieval via Dominant Attributes](https://aaai.org/ocs/index.php/AAAI/AAAI18/paper/view/16626/16314)  
AAAI 2018 *2018* [paper](https://aaai.org/ocs/index.php/AAAI/AAAI18/paper/view/16626/16314)    
ZsRDA      

1. [Zero-shot learning-A comprehensive evaluation of the good, the bad and the ugly](http://cn.arxiv.org/abs/1707.00600)  
TPAMI 2018 *2017-07-03* [paper](https://arxiv.org/abs/1707.00600) | [project](https://www.mpi-inf.mpg.de/departments/computer-vision-and-multimodal-computing/research/zero-shot-learning/zero-shot-learning-the-good-the-bad-and-the-ugly/)     
C-GUB    

1. [Transductive Unbiased Embedding for Zero-Shot Learning](http://cn.arxiv.org/abs/1803.11320)   
CVPR 2018 *2018-03-30* 阿里 [paper](https://arxiv.org/abs/1803.11320) | [blog](http://www.sohu.com/a/232858182_473283)      
TUE     

1. [Zero-shot Recognition via Semantic Embeddings and Knowledge Graphs](http://cn.arxiv.org/abs/1803.08035)  
CVPR 2018 *2018* [paper](https://arxiv.org/abs/1803.08035) | [tensorflow](https://github.com/JudyYe/zero-shot-gcn)  
$\bullet \bullet$ - GCN   

1. [Preserving Semantic Relations for Zero-Shot Learning](http://cn.arxiv.org/abs/1803.03049)  
CVPR 2018 *2018* [paper](https://arxiv.org/abs/1803.03049)  
PSR     

1. [A Generative Adversarial Approach for Zero-Shot Learning From Noisy Texts](http://openaccess.thecvf.com/content_cvpr_2018/papers/Zhu_A_Generative_Adversarial_CVPR_2018_paper.pdf)  
CVPR 2018 *2018* [paper](http://openaccess.thecvf.com/content_cvpr_2018/papers/Zhu_A_Generative_Adversarial_CVPR_2018_paper.pdf)  
GAN-NT     

1. [Zero-Shot Visual Recognition Using Semantics-Preserving Adversarial Embedding Networks](http://openaccess.thecvf.com/content_cvpr_2018/papers/Chen_Zero-Shot_Visual_Recognition_CVPR_2018_paper.pdf)  
CVPR 2018 *2018* [paper](http://openaccess.thecvf.com/content_cvpr_2018/papers/Chen_Zero-Shot_Visual_Recognition_CVPR_2018_paper.pdf) | [tensorflow](https://github.com/zjuchenlong/sp-aen.cvpr18)  
$\bullet \bullet$ - SP-AEN     

1. [Multi-Label Zero-Shot Learning With Structured Knowledge Graphs](http://openaccess.thecvf.com/content_cvpr_2018/papers/Lee_Multi-Label_Zero-Shot_Learning_CVPR_2018_paper.pdf)  
CVPR 2018 *2018* [paper](http://openaccess.thecvf.com/content_cvpr_2018/papers/Lee_Multi-Label_Zero-Shot_Learning_CVPR_2018_paper.pdf) | [project](https://people.csail.mit.edu/weifang/project/vll18-mlzsl/)  
ML-SKG      

1. [Generalized Zero-Shot Learning via Synthesized Examples](http://openaccess.thecvf.com/content_cvpr_2018/papers/Verma_Generalized_Zero-Shot_Learning_CVPR_2018_paper.pdf)  
CVPR 2018 *2018* [paper](http://openaccess.thecvf.com/content_cvpr_2018/papers/Verma_Generalized_Zero-Shot_Learning_CVPR_2018_paper.pdf)  
GZSL-SE      

1. [Feature Generating Networks for Zero-Shot Learning](http://openaccess.thecvf.com/content_cvpr_2018/papers/Xian_Feature_Generating_Networks_CVPR_2018_paper.pdf)  
CVPR 2018 *2018* [paper](http://openaccess.thecvf.com/content_cvpr_2018/papers/Xian_Feature_Generating_Networks_CVPR_2018_paper.pdf) | [code](http://datasets.d2.mpi-inf.mpg.de/xian/cvpr18xian.zip) |   [project](https://www.mpi-inf.mpg.de/departments/computer-vision-and-multimodal-computing/research/zero-shot-learning/feature-generating-networks-for-zero-shot-learning/)  
$\bullet \bullet$ - FGN     

1. [Discriminative Learning of Latent Features for Zero-Shot Recognition](http://cn.arxiv.org/abs/1803.06731)   
CVPR 2018 *2018-03-18* [paper](https://arxiv.org/abs/1803.06731) | [blog](http://baijiahao.baidu.com/s?id=1596522553301644906&wfr=spider&for=pc)   
$\bullet \bullet$ latent feature        
LDF    

1. [Webly Supervised Learning Meets Zero-shot Learning: A Hybrid Approach for Fine-grained Classification](http://openaccess.thecvf.com/content_cvpr_2018/papers/Niu_Webly_Supervised_Learning_CVPR_2018_paper.pdf)  
CVPR 2018 *2018* [paper](http://openaccess.thecvf.com/content_cvpr_2018/papers/Niu_Webly_Supervised_Learning_CVPR_2018_paper.pdf)
WSL     

1. [Selective Zero-Shot Classification with Augmented Attributes](http://openaccess.thecvf.com/content_ECCV_2018/papers/Jie_Song_Selective_Zero-Shot_Classification_ECCV_2018_paper.pdf)   
ECCV 2018 *2018* [paper](http://openaccess.thecvf.com/content_ECCV_2018/papers/Jie_Song_Selective_Zero-Shot_Classification_ECCV_2018_paper.pdf)      
SZSL      

1. [Learning Class Prototypes via Structure Alignment for Zero-Shot Recognition](http://openaccess.thecvf.com/content_ECCV_2018/papers/Huajie_Jiang_Learning_Class_Prototypes_ECCV_2018_paper.pdf)    
ECCV 2018 *2018* [paper](http://openaccess.thecvf.com/content_ECCV_2018/papers/Huajie_Jiang_Learning_Class_Prototypes_ECCV_2018_paper.pdf)      
LCP-SA     

1. [Multi-modal Cycle-consistent Generalized Zero-Shot Learning](http://openaccess.thecvf.com/content_ECCV_2018/papers/RAFAEL_FELIX_Multi-modal_Cycle-consistent_Generalized_ECCV_2018_paper.pdf)    
ECCV 2018 *2018* [paper](http://openaccess.thecvf.com/content_ECCV_2018/papers/RAFAEL_FELIX_Multi-modal_Cycle-consistent_Generalized_ECCV_2018_paper.pdf) | [tensorflow](https://github.com/rfelixmg/frwgan-eccv18)     
$\bullet \bullet$ - MC-ZSL     

1. [Generalized Zero-Shot Learning with Deep Calibration Network](http://papers.nips.cc/paper/7471-generalized-zero-shot-learning-with-deep-calibration-network.pdf)      
NIPS 2018 *2018* [paper](http://papers.nips.cc/paper/7471-generalized-zero-shot-learning-with-deep-calibration-network.pdf)   
DCN     

1. [Stacked Semantics-Guided Attention Model for Fine-Grained Zero-Shot Learning](http://papers.nips.cc/paper/7839-stacked-semantics-guided-attention-model-for-fine-grained-zero-shot-learning.pdf)    
NIPS 2018 *2018* [paper](http://papers.nips.cc/paper/7839-stacked-semantics-guided-attention-model-for-fine-grained-zero-shot-learning.pdf)
S2GA     

1. [Domain-Invariant Projection Learning for Zero-Shot Recognition](http://papers.nips.cc/paper/7380-domain-invariant-projection-learning-for-zero-shot-recognition.pdf)     
NIPS 2018 *2018* [paper](http://papers.nips.cc/paper/7380-domain-invariant-projection-learning-for-zero-shot-recognition.pdf)
DIPL      

1. [Generalized Zero- and Few-Shot Learning via Aligned Variational Autoencoders](http://cn.arxiv.org/abs/1812.01784)  
CVPR 2019 *2019* [paper](https://arxiv.org/abs/1812.01784) | [pytorch](https://github.com/edgarschnfld/CADA-VAE-PyTorch)    
$\bullet \bullet$ - CADA-VAE     

1. [Generative Dual Adversarial Network for Generalized Zero-shot Learning](http://cn.arxiv.org/abs/1811.04857)  
CVPR 2019 *2019* [paper](https://arxiv.org/abs/1811.04857) | [pytorch](https://github.com/stevehuanghe/GDAN)     
$\bullet \bullet$ - GDAN     

1. [Hybrid-Attention based Decoupled Metric Learning for Zero-Shot Image Retrieval](http://www.bhchen.cn/paper/cvpr19.pdf)     
CVPR 2019 *2019* [paper](http://www.bhchen.cn/paper/cvpr19.pdf) | [caffe](https://github.com/chenbinghui1/Hybrid-Attention-based-Decoupled-Metric-Learning)    
$\bullet \bullet$ - DeML      

1. [Generalized Zero-Shot Recognition based on Visually Semantic Embedding](http://cn.arxiv.org/abs/1811.07993)  
CVPR 2019 *2019* [paper](https://arxiv.org/abs/1811.07993)     
Gzsl-VSE     

1. [Leveraging the Invariant Side of Generative Zero-Shot Learning](htts://cn.arxiv.org/abs/1904.04092)  
CVPR 2019 *2019* [paper](https://arxiv.org/abs/1904.04092) | [pytorch](https://github.com/lijin118/LisGAN)    
$\bullet \bullet$ - LisGAN     

1. [Rethinking Knowledge Graph Propagation for Zero-Shot Learning](http://cn.arxiv.org/abs/1805.11724)  
CVPR 2019 *2019* [paper](https://arxiv.org/abs/1805.11724) | [pytorch](https://github.com/cyvius96/DGP)    
$\bullet \bullet$ - DGP    

1. [Domain-Aware Generalized Zero-Shot Learning](http://cn.arxiv.org/abs/1812.09903)  
CVPR 2019 *2019* [paper](https://arxiv.org/abs/1812.09903)      
DAZL     

1. [Progressive Ensemble Networks for Zero-Shot Recognition](http://cn.arxiv.org/abs/1805.07473)  
CVPR 2019 *2019* [paper](https://arxiv.org/abs/1805.07473)      
PrEN    

1. [On Zero-Shot Learning of generic objects](http://cn.arxiv.org/abs/1904.04957)  
CVPR 2019 *2019* [paper](https://arxiv.org/abs/1904.04957) | [pytorch](https://github.com/TristHas/GOZ)-official     
$\bullet \bullet$     

1. [Semantically Aligned Bias Reducing Zero Shot Learning](http://cn.arxiv.org/abs/1904.07659)  
CVPR 2019 *2019* [paper](https://arxiv.org/abs/1904.07659)     
SABR-T      

1. [Attentive Region Embedding Network for Zero-shot Learning](http://openaccess.thecvf.com/content_CVPR_2019/papers/Xie_Attentive_Region_Embedding_Network_for_Zero-Shot_Learning_CVPR_2019_paper.pdf)  
CVPR 2019 *2019* [paper](http://openaccess.thecvf.com/content_CVPR_2019/papers/Xie_Attentive_Region_Embedding_Network_for_Zero-Shot_Learning_CVPR_2019_paper.pdf) |  [pytorch](https://github.com/gsx0/Attentive-Region-Embedding-Network-for-Zero-shot-Learning)     
$\bullet \bullet$ - AREN      

1. [Marginalized Latent Semantic Encoder for Zero-Shot Learning](http://openaccess.thecvf.com/content_CVPR_2019/papers/Ding_Marginalized_Latent_Semantic_Encoder_for_Zero-Shot_Learning_CVPR_2019_paper.pdf)  
CVPR 2019 *2019* [paper](http://openaccess.thecvf.com/content_CVPR_2019/papers/Ding_Marginalized_Latent_Semantic_Encoder_for_Zero-Shot_Learning_CVPR_2019_paper.pdf)    

1. [Compressing Unknown Classes with Product Quantizer for Efficient Zero-Shot Classification](http://openaccess.thecvf.com/content_CVPR_2019/papers/Li_Compressing_Unknown_Images_With_Product_Quantizer_for_Efficient_Zero-Shot_Classification_CVPR_2019_paper.pdf)   
CVPR 2019 *2019* [paper](http://openaccess.thecvf.com/content_CVPR_2019/papers/Li_Compressing_Unknown_Images_With_Product_Quantizer_for_Efficient_Zero-Shot_Classification_CVPR_2019_paper.pdf)    
PQZSL    

1. [Gradient Matching Generative Networks for Zero-Shot Learning](http://openaccess.thecvf.com/content_CVPR_2019/papers/Sariyildiz_Gradient_Matching_Generative_Networks_for_Zero-Shot_Learning_CVPR_2019_paper.pdf)  
CVPR 2019 *2019* [paper](http://openaccess.thecvf.com/content_CVPR_2019/papers/Sariyildiz_Gradient_Matching_Generative_Networks_for_Zero-Shot_Learning_CVPR_2019_paper.pdf)    

1. [Hierarchical Disentanglement of Discriminative Latent Features for Zero-shot Learning](http://openaccess.thecvf.com/content_CVPR_2019/papers/Tong_Hierarchical_Disentanglement_of_Discriminative_Latent_Features_for_Zero-Shot_Learning_CVPR_2019_paper.pdf)        
CVPR 2019 *2019* [paper](http://openaccess.thecvf.com/content_CVPR_2019/papers/Tong_Hierarchical_Disentanglement_of_Discriminative_Latent_Features_for_Zero-Shot_Learning_CVPR_2019_paper.pdf)    

1. [Creativity Inspired Zero-Shot Learning](http://openaccess.thecvf.com/content_ICCV_2019/papers/Elhoseiny_Creativity_Inspired_Zero-Shot_Learning_ICCV_2019_paper.pdf)        
ICCV 2019 *2019* [paper](http://openaccess.thecvf.com/content_ICCV_2019/papers/Elhoseiny_Creativity_Inspired_Zero-Shot_Learning_ICCV_2019_paper.pdf)       [pytorch](https://github.com/mhelhoseiny/CIZSL)    
$\bullet \bullet$ - CIZSL     

1. [Attribute Attention for Semantic Disambiguation in Zero-Shot Learning](http://openaccess.thecvf.com/content_ICCV_2019/papers/Liu_Attribute_Attention_for_Semantic_Disambiguation_in_Zero-Shot_Learning_ICCV_2019_paper.pdf)        
ICCV 2019 *2019* [paper](http://openaccess.thecvf.com/content_ICCV_2019/papers/Liu_Attribute_Attention_for_Semantic_Disambiguation_in_Zero-Shot_Learning_ICCV_2019_paper.pdf) | [pytorch](https://github.com/ZJULearning/AttentionZSL)     
$\bullet \bullet$  - LFGAA+SA      

1. [Transferable Contrastive Network for Generalized Zero-Shot Learning](http://openaccess.thecvf.com/content_ICCV_2019/papers/Jiang_Transferable_Contrastive_Network_for_Generalized_Zero-Shot_Learning_ICCV_2019_paper.pdf)        
ICCV 2019 *2019* [paper](http://openaccess.thecvf.com/content_ICCV_2019/papers/Jiang_Transferable_Contrastive_Network_for_Generalized_Zero-Shot_Learning_ICCV_2019_paper.pdf)            
TCN      

1. [Rethinking Zero-Shot Learning: A Conditional Visual Classification Perspective](http://openaccess.thecvf.com/content_ICCV_2019/papers/Li_Rethinking_Zero-Shot_Learning_A_Conditional_Visual_Classification_Perspective_ICCV_2019_paper.pdf)        
ICCV 2019 *2019* [paper](http://openaccess.thecvf.com/content_ICCV_2019/papers/Li_Rethinking_Zero-Shot_Learning_A_Conditional_Visual_Classification_Perspective_ICCV_2019_paper.pdf)          
GXE     

1. [Learning Feature-to-Feature Translator by Alternating Back-Propagation for Generative Zero-Shot Learning](http://openaccess.thecvf.com/content_ICCV_2019/papers/Zhu_Learning_Feature-to-Feature_Translator_by_Alternating_Back-Propagation_for_Generative_Zero-Shot_Learning_ICCV_2019_paper.pdf)        
ICCV 2019 *2019* [paper](http://openaccess.thecvf.com/content_ICCV_2019/papers/Zhu_Learning_Feature-to-Feature_Translator_by_Alternating_Back-Propagation_for_Generative_Zero-Shot_Learning_ICCV_2019_paper.pdf) | [pytorch](https://github.com/EthanZhu90/ZSL_ABP)       
$\bullet \bullet$     


1. [Modeling Inter and Intra-Class Relations in the Triplet Loss for Zero-Shot Learning](http://openaccess.thecvf.com/content_ICCV_2019/papers/Le_Cacheux_Modeling_Inter_and_Intra-Class_Relations_in_the_Triplet_Loss_for_ICCV_2019_paper.pdf)        
ICCV 2019 *2019* [paper](http://openaccess.thecvf.com/content_ICCV_2019/papers/Le_Cacheux_Modeling_Inter_and_Intra-Class_Relations_in_the_Triplet_Loss_for_ICCV_2019_paper.pdf)    

1. [Dual Adversarial Semantics-Consistent Network for Generalized Zero-Shot Learning](http://cn.arxiv.org/abs/1907.05570)    
NIPS 2019 *2019-07-12* [paper](https://arxiv.org/abs/1907.05570)    
双生 GAN；   

1. [Transductive Zero-Shot Learning with Visual Structure Constraint](http://papers.nips.cc/paper/9188-transductive-zero-shot-learning-with-visual-structure-constraint.pdf)          
NIPS 2019 *2019* [paper](http://papers.nips.cc/paper/9188-transductive-zero-shot-learning-with-visual-structure-constraint.pdf) | [pytorch](https://github.com/raywzy/VSC)-official    
$\bullet \bullet$ - VSC     

1. [Zero-shot Learning via Simultaneous Generating and Learning](http://papers.nips.cc/paper/8300-zero-shot-learning-via-simultaneous-generating-and-learning.pdf)          
NIPS 2019 *2019* [paper](http://papers.nips.cc/paper/8300-zero-shot-learning-via-simultaneous-generating-and-learning.pdf)                

1. [Semantic-Guided Multi-Attention Localization for Zero-Shot Learning](http://papers.nips.cc/paper/9632-semantic-guided-multi-attention-localization-for-zero-shot-learning.pdf)          
NIPS 2019 *2019* [paper](http://papers.nips.cc/paper/9632-semantic-guided-multi-attention-localization-for-zero-shot-learning.pdf)    
SGMA

1. [Visual Space Optimization for Zero-shot Learning](http://cn.arxiv.org/abs/1907.00330)   
*2019-06-30* [paper](https://arxiv.org/abs/1907.00330)     
>设计了一个新的 loss；   



# 6 元学习

## 6.1 基于度量的


## 6.2 基于模型的
1. [Model-Agnostic Meta-Learning for Fast Adaptation of Deep Networks](http://cn.arxiv.org/abs/1703.03400)   
ICML 2017 *2017-03-09* 伯克利 [paper](https://arxiv.org/abs/1703.03400) | [tensorflow](https://github.com/cbfinn/maml)-official | [project](https://sites.google.com/view/maml)-official | [blog](https://bair.berkeley.edu/blog/2017/07/18/learning-to-learn/)-official       


## 6.3 基于优化的

## 6.4 其他
1. [Amortized Bayesian Meta-Learning](https://openreview.net/pdf?id=rkgpy3C5tX)   
ICLR 2019 [paper](https://openreview.net/pdf?id=rkgpy3C5tX) | [openreview](https://openreview.net/forum?id=rkgpy3C5tX)     

1. [Learning to Learn with Conditional Class Dependencies](https://openreview.net/pdf?id=BJfOXnActQ)   
ICLR 2019 [paper](https://openreview.net/pdf?id=BJfOXnActQ) | [openreview](https://openreview.net/forum?id=BJfOXnActQ)    


# 7 应用
## 7.1 分类

## 7.2 检测
1. [Zero-Shot Object Detection: Learning to Simultaneously Recognize and Localize Novel Concepts](http://cn.arxiv.org/abs/1803.06049)     
ACCV 2018 *2018-03-16* [paper](https://arxiv.org/abs/1803.06049)     

## 7.3 分割

## 7.4 GAN

## 7.5 强化学习
1. [Sample-efficient policy learning in multi-agent Reinforcement Learning via meta-learning](http://cn.arxiv.org/abs/1805.12375)   
ICML 2019 *2018-05-31* [paper](https://arxiv.org/abs/1805.12375) | [openreview](https://openreview.net/forum?id=r1fiFs09YX)    



-------------------  
[End](#head)
{:.warning}  

# 附录
## A 资源
1. [paper-with-code/元学习](https://paperswithcode.com/task/meta-learning/codeless?page=9)    
1. [paper-with-code/少样本学习](https://paperswithcode.com/task/few-shot-image-classification)    
1. [awesome-zero-shot-learning](https://github.com/chichilicious/awesome-zero-shot-learning#Papers)    
1. [从 CVPR 2019 一览小样本学习研究进展](https://zhuanlan.zhihu.com/p/75263636)     

## B 数据集

| 名称 | 年份 | 数据量  | 类型 | 类别数 |
| --- | --- | --- | --- |
| [LAD](https://github.com/PatrickZH/A-Large-scale-Attribute-Dataset-for-Zero-shot-Learning) |   |   | Large-scale Attribute Dataset | 230 |
| [CUB](http://www.vision.caltech.edu/visipedia/CUB-200-2011.html) |  |   | Caltech-UCSD Birds | 200 |
| [AWA2](https://cvml.ist.ac.at/AwA2/) |   |    | Animals | 50 |
| [aPY](http://vision.cs.uiuc.edu/attributes/) |   |   | attributes Pascal and Yahoo | 32 |
| [Flowers](http://www.robots.ox.ac.uk/~vgg/data/flowers/) |  |  |  | 102 |
| [SUN](http://cs.brown.edu/~gmpatter/sunattributes.html) |   |   | Scene Attributes | 717 |

## C 比赛
1. AI Challenger 2018    
[解决方案](https://github.com/foamliu/Zero-Shot-Learning)    

## D 研究员
1. Donald M. Palatucci
1. 保罗·维奥拉     
[linked in](https://www.linkedin.com/in/violapaul/)
Amazon Air科学副总裁，前MIT教授，计算机视觉研究员，ICCV Helmholtz Prize 得主     

1. 奥里奥尔·温亚尔斯     
[O. Vinyals](http://www1.icsi.berkeley.edu/~vinyals/) [google research](https://research.google/people/OriolVinyals/)   
Oriol Vinyals是 DeepMind 的研究科学家，主要研究深度学习，博士毕业于加州大学伯克利分校     

1. 罗布弗格斯    

1. 李飞飞     
[profiles](https://profiles.stanford.edu/fei-fei-li/) [wikipedia](https://zh.wikipedia.org/wiki/%E6%9D%8E%E9%A3%9B%E9%A3%9B)    
斯坦福大学计算机科学系教授，斯坦福视觉实验室负责人，斯坦福大学人工智能实验室（SAIL）前负责人。专业领域是计算机视觉和认知神经科学。2016年11月李飞飞加入谷歌，担任谷歌云AI/ML首席科学家。2018年9月，返回斯坦福任教，现为谷歌云AI/ML顾问。10月20日斯坦福大学「以人为中心的AI计划」开启，李飞飞担任联合负责人。11月20日李飞飞不再担任SAIL负责人，Christopher Manning 接任该职位    

1. 杜米特鲁·艾尔罕     
[profiles](http://www.dumitru.ca/)    
谷歌大脑研究员，目前研究重点是可扩展高质量检测、快速单次检测、图像字幕生成、视觉问答和图像理解的结构化输出     

1. 理查德·索切     
[profiles](https://www.socher.org/)
Richard Socher（理查德·索赫尔）是Salesforce的首席科学家。 在此之前，他是斯坦福大学计算机科学系的兼职教授，也是2016年被 Salesforce 收购的 MetaMind 的创始人兼首席执行官/首席技术官。研究兴趣：CV、NLP、DL；   

1. 吴恩达    
[profiles](https://www.andrewng.org/)
斯坦福大学教授，人工智能著名学者，机器学习教育者。2011年，吴恩达在谷歌创建了谷歌大脑项目，以通过分布式集群计算机开发超大规模的人工神经网络。2014年5月16日，吴恩达加入百度，负责“百度大脑”计划，并担任百度公司首席科学家。2017年3月20日，吴恩达宣布从百度辞职。2017年12月，吴恩达宣布成立人工智能公司Landing.ai，并担任公司的首席执行官。2018年1月，吴恩达成立了投资机构AI Fund；   

## E 参考资料

1. [From Zero to Hero: Shaking Up the Field of Zero-shot Learning
](https://medium.com/@alitech_2017/from-zero-to-hero-shaking-up-the-field-of-zero-shot-learning-c43208f71332)     
1. [WHAT IS ZERO-SHOT LEARNING?](https://www.analyticsindiamag.com/what-is-zero-shot-learning/)    
1. [Zero-Shot Learning](https://medium.com/@cetinsamet/zero-shot-learning-53080995d45f)     
1. [【NLP笔记】Few-shot learning 少样本学习](https://zhuanlan.zhihu.com/p/66552960)   
