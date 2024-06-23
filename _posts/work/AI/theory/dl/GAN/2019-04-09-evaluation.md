---
layout: article
title:  "「DL」 GAN 生成模型评估"
date:   2019-04-09 16:48:40 +0800
key: evaluation-of-generation-20190409
aside:
  toc: true
category: [AI, DL, GAN]
sidebar:
  nav: GAN
---
>实验发现，MMD 和 1-NN two-sample test 是最为合适的评价指标，这两个指标可以较好的区分真实样本和生成的样本, mode collapsing，且计算高效；   
总体说来，GAN 的学习是一个无监督学习过程，所以很难找到一个比较客观的，可量化的评估指标；有许多指标在数值上虽然高，但是生成效果却未必好；总之，GAN的评价目前依然是一个开放性的问题；  
<!--more-->

**符号**：$P_g$: 生成数据分布；$P_r$ 表示真实数据分布；$E$ :数学期望；$x$ :输入样本；$x\sim P_g$ :表示 $x$ 为生成样本的采样；$x\sim P_r$ :表示 $x$ 为真实样本的采样；$y$ :样本标签；$M$ :分类网络，通常选择 Inception network；   

现有的 example-based（基于样本层面做评价）方法，均是对生成样本与真实样本提取特征（通常用 InceptionNet），然后在特征空间做距离度量；    

## 1 Inception Score
以 ImageNet 为例，训练好的 GAN 所生成的样本经过 InceptionNet 后，得到的判别概率应该具有如下特性：   
- 对于同一个类别的图片，其输出的概率分布应该趋向于一个脉冲分布；可以保证生成样本的准确性；    
- 对于所有类别，其输出的概率分布应该趋向于一个均匀分布，这样才不会出现 mode collapsing 等，可以保证生成样本的多样性；    
因此，设计指标：  
\begin{equation}
IS(P_g)=e^{E_{x \sim P_g}[KL(p_M(y\|x)\Vert{p_M(y)})]}  
\end{equation}
理想的 GAN， $p_M(y|x)$ 趋近于脉冲分布， $p_M(y)$ 趋近于均匀分布；二者 KL 散度会很大；Inception Score 自然就高；实际实验表明，Inception Score 和人的主观判别趋向一致；IS 的计算没有用到真实数据，具体值取决于模型 M 的选择；    
**特点**：可以一定程度上衡量生成样本的多样性和准确性，但是无法检测过拟合；Mode Score 也是如此；不推荐在和 ImageNet 数据集差别比较大的数据上使用；`什么叫差别较大`{:.warning}  
`这里评估的生成模型可以生成多个类别？如果只能生成单个类别还能用这个吗`{:.warning}   

## 2 Mode Score
Mode Score 作为 Inception Score 的改进版本，关注了关于生成样本和真实样本预测的概率分布的相似性：    
\begin{equation}
 MS(P_g)=e^{E_{x\sim P_g}[KL(p_M(y|x)\Vert{p_M(y)})-KL(p_M(y)\Vert p_M(y^*))]}
\end{equation}

## 3 Kernel MMD
Maximum Mean Discrepancy；   
\begin{equation}\label{MMD}
MMD^2(P_r,P_g)=E{x_r\sim{P_r},x_g\sim{P_g}}[\lVert\Sigma{i=1}^{n1}k(x_r)-\Sigma{i=1}^{n2}k(x_g)\rVert]
\end{equation}  
核函数 k 把样本映射到再生希尔伯特空间(Reproducing Kernel Hilbert Space, RKHS) ，RKHS 相比于欧几里得空间有许多优点，对于函数内积的计算是完备的；  
公式 $\eqref{MMD}$ 后得到：   
\begin{equation}
MMD^2(P_r,P_g)=E{x_r,x_r^\prime \sim{P_r},x_g,x_g^\prime \sim{P_g}}[k(x_r,x_r^\prime)-2k(x_r,x_g)+k(x_g,x_g^\prime)]
\end{equation}
MMD值越小，两个分布越接近；   
**特点**：可以一定程度上衡量模型生成图像的优劣性，计算代价小；推荐使用；    

## 4 Wasserstein distance
Wasserstein distance 在最优传输问题中通常也叫做推土机距离；这个距离的介绍在 WGAN 中有详细讨论；   
Wasserstein distance 可以衡量两个分布之间的相似性；距离越小，分布越相似；  
**特点**：如果特征空间选择合适，会有一定的效果；但是计算复杂度为 $O(n^3)$ 太高；   

## 5 FID
FID（Fréchet Inception Distance） 距离计算真实样本和生成样本在特征空间之间的距离；首先利用 Inception 网络来提取特征，然后使用高斯模型对特征空间进行建模；根据高斯模型的均值和协方差来进行距离计算：  
\begin{equation}
FID(\mathbb P_r,\mathbb P_g)=\lVert\mu_r-\mu_g\rVert+Tr(C_r+C_g-2(C_rC_g)^{1/2})
\end{equation}
$\mu$, $C$ 分别代表协方差和均值；   
**特点**：尽管只计算了特征空间的前两阶矩，但是鲁棒，且计算高效；   

## 6 1-NN classifier
使用留一法，结合 1-NN（1-Nearest Neighbor classifier） 分类器（别的也行）计算真实图片、生成图像的精度；如果二者接近，则精度接近50%，否则接近0%；对于 GAN 的评价问题，作者分别用正样本的分类精度，生成样本的分类精度去衡量生成样本的真实性，多样性；     
对于真实样本 $x_r$ ，进行 1-NN 分类的时候，如果生成的样本越真实；则真实样本空间 $\mathbb R$ 将被生成的样本 $x_g$ 包围；那么 $x_r$ 的精度会很低；   
对于生成的样本 $x_g$ ，进行 1-NN 分类的时候，如果生成的样本多样性不足。由于生成的样本聚在几个 mode，则 $x_g$ 很容易就和 $x_r$ 区分，导致精度会很高；   
**特点**：理想的度量指标，且可以检测过拟合；     

## 7 其他   
AIS，KDE 方法也可以用于评价 GAN，但这些方法不是 model agnostic metrics；也就是说，这些评价指标的计算无法只利用：生成的样本，真实样本来计算；  



-------------------  
 End
{:.warning}  


# 附录
## A 参考资料
[1]. Xu Q, Huang G, Yuan Y, et al. An empirical study on evaluation metrics of generative adversarial networks[J]. arXiv preprint [arXiv:1806.07755](https://arxiv.org/abs/1806.07755), 2018.   
[2]. Borji A. Pros and cons of gan evaluation measures[J]. arXiv preprint [arXiv:1802.03446](https://arxiv.org/abs/1802.03446), 2019.   
[3]. Shmelkov K, Schmid C, Alahari K. [How good is my GAN?](https://arxiv.org/abs/1807.09499)[C]//Proceedings of the European Conference on Computer Vision (ECCV). 2018: 213-229.   
[4]. ICLR 2018 Conference Blind Submission. An empirical study on evaluation metrics of generative adversarial networks ICLR 2018 审稿[EB/OL]. <https://openreview.net/forum?id=Sy1f0e-R->. 2018-02-16/2019-04-09.   
[5].  我爱馒头. GAN万字长文综述[EB/OL]. <https://zhuanlan.zhihu.com/p/58812258>. 2019-03-23/2019-03-26.     
[^1]: ciic. KL散度、JS散度、Wasserstein距离[EB/OL]. <https://zxth93.github.io/2017/09/27/KL%E6%95%A3%E5%BA%A6JS%E6%95%A3%E5%BA%A6Wasserstein%E8%B7%9D%E7%A6%BB/index.html>. 2017-09-27/2019-04-09.    
[^2]: denny402. 概率分布之间的距离度量以及python实现(四)[EB/OL]. <https://www.cnblogs.com/denny402/p/7054950.html>. 2017-06-20/2019-04-09.    
[^3]: 夕月一弯. 概率分布之间的距离度量以及python实现[EB/OL]. <https://www.cnblogs.com/wt869054461/p/7156397.html>. 2017-07-12/2019-04-09.     
[^4]: 大奸猫. EMD距离wasserstein_distance的使用[EB/OL]. <https://blog.csdn.net/yeziand01/article/details/84404383>. 2018-11-23/2019-04-09.     
[^5]: 黄若孜. Wasserstein距离在生成模型中的应用[EB/OL]. <https://zhuanlan.zhihu.com/p/35879231>. 2018-04-19/2019-04-09.     
[^6]: -. wasserstein 距离的问题[EB/OL]. <https://www.zhihu.com/question/41752299>. -/2019-04-09.    
[^7]: Herbert_Zero. 一种度量准则：EMD[EB/OL]. <https://blog.csdn.net/liyuefeilong/article/details/45891945>. 2015-05-21/2019-04-09.    
