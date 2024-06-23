---
layout: article
title:  "「DL」 深度学习问答"
date:   2019-04-11 08:20:40 +0800
key: dl-question
aside:
  toc: true
tags: Q&A
category: [AI, DL]
sidebar:
  nav: INTERVIEW
---
<span id='head'></span>  


<!--more-->



| 基础 |  |  |  
| --- | --- | --- |
| [传统的图像处理的意义](#traditional) | [不适合 DL 的数据集](#not_cnn) |  |  
| [网络输入为什么用 224](#input_224) | [网络输入必须是 RGB 吗](#input_channel) |  |  
| [CNN 中术语解释](#cnn_term) | [CNN 结构特点](#cnn_constructure) | [特征的层次性](#feature_layer) |  
| [激活函数](#activate_func) | [交叉熵损失](#cross_entropy) | [softmax](#softmax) |  
| [卷积的作用](#convolution) | [pooling 作用](#pooling) | [各层的区别](#layer_compare) |  
| [特征图大小计算](#feature_map_size) | [感受野及其计算](#receptive) | [卷积层参数量计算](#conv_weight_num) |  
| [BN 原理及作用](#bn) | [范数及其应用](#norm) |  |  
|  |  |  |  
|  |  |  |  

| 进阶 |  |  |
| --- | --- | --- |
| [交叉熵为什么能用做 loss](#cross_entropy_loss) | [权值共享](#weight_share) | [优化算法](#optimizer) |
|  |  |  |

| 理论 |  |  |  |
| --- | --- | --- | --- |
| [2 个 3\*3 代替 5\*5 卷积的优势](#3_3) |  |  |  |
| [RNN](#RNN) |  |  |  |
|  |  |  |  |

| 实战 |  |  |  |
| --- | --- | --- | --- |
| [梯度消失/爆炸](#gradient_abnormal) | [调参流程](#train_param) | [过拟合](#overfit_adverse) | [欠拟合](#underfitting) |
| [fine-tuning](#fine_tuning) | [dropout](#dropout) | [提升泛化能力](#generalization) |  |
| [模型加速](#compress) |  |  |  |


# 1 基础

<span id="traditional">    </span>    

**CNN 出现后，传统的图像处理还有意义吗**
{:.warning}  
[知乎](https://www.zhihu.com/question/322742318)     

<span id="input_224">    </span>    

**网络输入为什么用 224**
{:.warning}  
用于分类的卷积网络包括下采样和分类；   
- **一个分类对应的最后一个特征图的大小——$7 \times 7$**   
最后一个特征图经过分类操作（全连接或全局池化）得到分类结果，一个分类对应的最后一层特征图大小可以是 $3 \times 3$，$5 \times 5$，$7 \times 7$ 等；其中 $7 \times 7$ 更合理，因为尺寸过小会造成信息丢失严重，尺寸太大，信息的抽象程度不够，计算量也大；$7 \times 7$ 较为平衡；    
- **整个卷积网络下采样的程度为—— $2^5$**  
图像从输入到最后一层，分辨率降低的程度通常是 $2^n$；  
下采样 $1/4$，输入是 $7 \times 2^4=112$；下采样 $1/5$，输入是 $7 \times 2^5=224$；下采样 $1 / 6$，输入是 $7 \times  2^6=228$；  
而 imagenet 的图像大小都在 300 左右；与 300 最接近的就是 224 了，故选择了 $2^5$；

>以上只是多多种巧合情况的综合，使得经典论文中大多使用 $224 \times 224$ 的输入尺寸；实际应用中，仍需根据网络本身结构（下采样程度）和采集到的图像尺寸来综合考虑最终使用输入尺寸；   

[1]. 龙鹏. 【AI-1000问】为什么深度学习图像分类的输入多是224*224[EB/OL]. <https://zhuanlan.zhihu.com/p/58188430>. 2019-03-03/2019-03-18.    


<span id="input_channel">    </span>    

**网络输入必须是 RGB 吗**
{:.warning}  
图像的表示使用的是矩阵,每个矩阵代表一个通道；图像的类型包括二值图、灰度图和彩色图，其中彩色图又包括 RGB、YUV、HSV 和 HSL等；   
深度学习算法的输入看的是一个个通道，所以可以输入二值图、灰度图和彩色图，也可以是将几种表示方法拼接起来作为输入（[ColorNet](https://arxiv.org/abs/1902.00267) 中就此问题进行过探讨）；    


<span id="not_cnn">    </span>   

**不适合 DL 的数据集**    
{:.warning}
+ 数据集太小，数据样本不足时，深度学习相对其它机器学习算法，没有明显优势；   
+ 数据集没有局部相关特性，目前深度学习表现比较好的领域主要是图像／语音／自然语言处理等领域，这些领域的一个共性是局部相关性。图像中像素组成物体，语音信号中音位组合成单词，文本数据中单词组合成句子，这些特征元素的组合一旦被打乱，表示的含义同时也被改变。对于没有这样的局部相关性的数据集，不适于使用深度学习算法进行处理；举个例子：预测一个人的健康状况，相关的参数会有年龄、职业、收入、家庭状况等各种元素，将这些元素打乱，并不会影响相关的结果；   

<span id="cnn_term">    </span>  

**CNN 中术语解释**
{:.warning}  
CNN 的主要参数：    
+ 卷积（Kernal/filter）；    
+ 填充；    
+ 滑动步长；     
+ 池化；    
+ 通道；      

<span id="activate_func">    </span>    

**激活函数**
{:.warning}
 sigmoid，relu，softplus，tanh，RBF 及其应用场景；    
>《深度学习》 sigmoid 和 softplus 在 3.10 常用函数及其性质；6.3 隐藏单元（激活函数）

作用：为网络引入非线性；（卷积操作是线性的）    

| 函数 | 公式 | 特点 | 应用 |
| --- | --- | --- | --- |
| sigmoid | $\frac{1}{1 + \exp(-x)}$  | 值域在 (0, 1)；<br>绝对值较大时函数进入饱和状态，即对微小的输入变化不敏感； | |
| tanh |  $\frac {1-e^{-2x}}{1+e^{-2x}}$`对吗`{:.warning} | `与 sigmoid 的区别`{:.warning} |  |
| ReLu | $\max (0, x)$  | 计算简单；避免梯度消失；缓解过拟合（一部分输出为 0,稀疏），有助于 SGD 收敛`为啥，梯度保持在1？`{:.warning} |  |
| softplus |  $\log {(1 + \exp (x))}$ |  |  |
| RBF |   |  |  |



`函数求导及换算关系`{:.warning}


<span id="softmax">    </span>   

**softmax**    
{:.warning}      
分类问题中，直接使用输出层的输出有两个问题：
+ 神经网络输出层的输出值的范围不确定，我们难以直观上判断这些值的意义
+ 由于真实标签是离散值，这些离散值与不确定范围的输出值之间的误差难以衡量

`softmax回归`解决了以上两个问题，它**将输出值变换为值为正且和为1的概率分布**，公式如下：

$$softmax(y)_{i} = y_{i}^{'} = \frac{e^{yi}}{\sum_{j=1}^{n}e^{yj}}$$

<span id="cross_entropy">    </span>   

**交叉熵损失**
{:.warning}
交叉熵刻画了两个概率分布之间的距离，它是分类问题中使用比较广泛的一种损失函数，交叉熵一般会与softmax回归一起使用，公式如下：    
$$L = -\sum_{c=1}^{M}y_{c}log(p_{c})或者H(p,q)=-\sum p(x)logq(x)$$（p代表正确答案，q代表预测值）    
- $M$ ——类别的数量；    
- $y_{c}$ ——指示变量（0或1）,如果该类别和样本的类别相同就是1，否则是0；    
- $p_{c}$ ——对于观测样本属于类别 $c$ 的预测概率；    


<span id="convolution">    </span>   

**卷积的作用**
{:.warning}
+ 卷积网络中的卷积核参数是通过网络训练出来的；   
+ 通过卷积核的组合以及随着网络后续操作的进行，卷积操作可获取图像区域不同类型特征；基本而一般的模式会逐渐被抽象为具有高层语义的“概念”表示，也就是自动学习到图像的高层特征；    
+ 卷积神经网络学到的模式具有平移不变性（translation invariant），卷积神经网络可以学到模式的空间层次结构；    


<span id="layer_compare">    </span>   

**各层的区别**
{:.warning}
**卷积层与全连接层的区别**    
+ 卷积层学习到的是局部模式（对于图像，学到的就是在输入图像的二维小窗口中发现的模式）
+ 全连接层学习到的是全局模式（全局模式就算设计所有像素）；  


**卷积层与池化层的区别**     
- 卷积层有参数，池化层没有参数；    
- 卷积可以改变通道数，池化不会；    


<span id="feature_map_size">    </span>  

**特征图大小计算**   
{:.warning}


channel：$out =$ 卷积核(池化核)数量 *通常 池化不会改变通道数*      

1. 卷积： $out = (input + 2 × padding - kernel) / {strid} + 1 \quad$   *（向下取整）*    
2. 反卷积：  $out = (in - 1) × strid - 2 × padding + kernel$     
3. 池化： $out = (input - kernel) / {strid} + 1 \quad$   *（向上取整）*    

*卷积层一般填充像素，填充量为 $(kernel-1)/2$ 且步长为 1 时，特征图大小保持不变，池化层一般不填充像素；*         


<span id="receptive">    </span>    

**感受野及其计算**
{:.warning}
概念：    
后一层神经元在前一层神经元的感受空间，也可以定义为卷积神经网络中每层的特征图（`Feature Map`）上的像素点在原始图像中映射的区域大小；   

注意：感受野在 `CNN` 中是呈指数级增加的；小卷积核（如3*3）通过多层叠加可取得与大卷积核（如7*7）同等规模的感受野，此外采用小卷积核有两个优势：     
1. 小卷积核需多层叠加，加深了网络深度进而增强了网络容量(model capacity)和复杂度（model complexity）；    
2. 增强了网络容量的同时减少了参数个数；    

计算：     
+ 第一层卷积层的输出特征图像素的感受野的大小等于滤波器的大小    
+ 深层卷积层的感受野大小和它之前所有层的滤波器大小和步长有关系    
+ 计算感受野大小时，忽略了图像边缘的影响    

$RF_{n} = RF_{n-1} + (kernel_n-1) \* \prod_0^{n-1} stride$    

> 参考[感受野（receptive file）计算](https://www.starlg.cn/blog/2017/06/13/Receptive-File/)     
[深度神经网络中的感受野(Receptive Field)](https://zhuanlan.zhihu.com/p/28492837)   

[CNN中的参数解释及计算](https://flat2010.github.io/2018/06/15/%E6%89%8B%E7%AE%97CNN%E4%B8%AD%E7%9A%84%E5%8F%82%E6%95%B0/)


<span id="conv_weight_num">    </span>   

**卷积层参数量计算**
{:.warning}
$Channel_{in} × Width_{kernel} × Height_{kernel} × Channel_{out} + Channel_{out}$    
*卷积核尺寸为 $Width_{kernel} × Height_{kernel}$，卷积核数量为 $Channel_{out}$；最后一项是偏置数量；*          


<span id="cnn_constructure">    </span>   

**CNN 结构特点**
{:.warning}
局部连接，权值共享，池化操作，多层次结构；     

+ 局部连接使网络可以提取数据的局部特征
+ 权值共享大大降低了网络的训练难度，一个Filter只提取一个特征，在整个图片（或者语音／文本） 中进行卷积
+ 池化操作与多层次结构一起，实现了数据的降维，将低层次的局部特征组合成为较高层次的特征，从而对整个图片进行表示。


<span id="pooling">    </span>   

**pooling 层作用**
{:.warning}
1. 增加特征平移不变性；汇合可以提高网络对微小位移的容忍能力；    
2. 减小特征图大小；汇合层对空间局部区域进行下采样，使下一层需要的参数量和计算量减少，并降低过拟合风险；    
3. 最大汇合可以带来非线性；这是目前最大汇合更常用的原因之一；     

<span id="feature_layer">    </span>   

**特征的层次性**
{:.warning}
卷积操作可获取图像区域不同类型特征，而汇合等操作可对这些特征进行融合和抽象，随着若干卷积、汇合等操作的堆叠，各层得到的深度特征逐渐从泛化特征（如边缘、纹理等）过渡到高层语义表示（躯干、头部等模式）；    


<span id="bn">    </span>   

**BN 原理及作用**
{:.warning}
**问题**：权重的变化会引起计算结果变化，也就是下一层的输入数据的数据分布一直在变     
- **训练不稳定**：不断变化的数据分布让学习过程变得不稳定；*最明显的表现就是对初始化敏感*     
- **训练慢**：不同数据分布所需学习率也不同，只能选取最小的学习率；   
- **不拟合**：未加限制的情况下输出结果容易陷入激活函数的饱和区；    

**原理**：**BN 将输入归一化到高斯分布**，让更多的值落在 0 附近，这保证了梯度的有效性（不会因为高动态范围而引发梯度消失或梯度爆炸），可以解决反向传播过程中的梯度问题；`手写 BN 代码`{:.warning}      
1. **降低过拟合**：BN 实在批次维度上做的，这样经过 BN 处理后，样本间就有了关联性，也就是同一样本身处不同批次时，输出结果也不同；由此降低了过拟合；`好牵强`{:.warning}     
1. **加速训练过程**：      
    - **可以用更高的学习率**：使用 BN 后，层的输入被限制在特定的区间内，那么所有层所需处理的数据分布就一样，就可以选用同一个较高的学习率；     
    - **移除或使用较低 dropout**：BN 也可以防止过拟合；    
1. **结果更精确**     
    - **降低 L2 的权重**：过拟合问题不严重了，自然不需要太大的正则化处理，这样一来偏差就小了，结果自然更精确`到底是精确还是准确，偏差方差到底再说什么`{:warning}           
1. **缓解梯度问题（消失、爆炸）**     

**为什么要加伽马和贝塔，不加可以吗？**     
**困境**：不加归一化，会出现上述的各种弊端；加了归一化，会使所有网络层的输出都是标准正态分布，这限制了模型的表达能力；    
**方案**：为了解决这个问题，加入可学习的参数 $\gamma, \beta$，当二者恰好为数据的均值和方差时，就相当于没有归一化；也就是说这两个参数的可学习性，使得 BN 在不加归一化和标准归一化之间做了个中和，其实就是**动态归一化**；     
因此，这个参数不加也行，在浅层网络效果还是不错的，但是深层/复杂网络中，加上效果更好；        

**BN 应在激活层之前还是之后**    
放在前边：避免破坏非线性特征；让数据尽量不落在激活函数的饱和区；    
放在后边：（激活函数用 Relu）避免因归一化带来的相似数据分布而导致非线性特征趋于同化；    
`存在争议`{:.warning}    

**更多研究**：    
- layer norm：针对单个样本在某一层上做归一化；优点是避免了 batch 大小的影响，也因不需要保存每一层的统计量而减小了内存的消耗；缺点是同时对所有维度进行标准化，如果维度间量纲不一样，会导致模型表达能力下降（为啥）；   
- weight norm:权重多归一化；        
- cosine norm：卷积层输出之所以无界是因为卷积操作无界，那么就用同样可以衡量相似度的余弦；缺点是点积操作考虑了向量夹角和大小，而余弦只考虑了夹角，会造成表达能力下降；        
- group norm：    
- instance norm：    


<span id="norm">    </span>    

**范数及其应用**
{:.warning}
>《深度学习》2.5 范数，7.1、7.2 正则化      

*范数，norm：$L^p$ 范数就是元素绝对值的 $p$ 次方的和的 $1/p$ 次方；用于衡量向量的大小，直观上来看是衡量从原点到 $x$ 的距离；*    
$${ \left \| x \right \| }_p = \left(\sum_i|x_i|^p \right)^{1/p}  \qquad （p \in R,\quad p \geq 1）$$     

常见范数：    

| 范数 | 解释 | 说明 | 作用 |
| --- | --- | --- | --- |
| $L_0$| 非 0 元素个数；| 但因数学意义不对（不满足尺度缩放）故常用 $L_1$ 来代替；  |  |
| $L_1$| 绝对值之和；| 通常用来衡量 0 值和非 0 值的差异；| 让权重变得稀疏（更多0），方便特征提取`为什么会变得稀疏`{:.warning}`推导`{:.warning}  |
| $L_2$| 欧式距离；| 原点附近增长缓慢；导数与所有元素相关，而平方 $L_2$ 导数只与当前元素相关；|  感知具有较高方差的输入`推导`{:.warning}，可以更好地防止过拟合 |
| $L_{\infty}$| 最大范数，最大的绝对值；| |   |
| $L_F$| 矩阵的 Frobenius 范数，相当与向量的二范数；| |   |

应用：正则化：减小过拟合；通常正则项加在损失函数上，来对权重施加限制；     
*正则化会用少量偏差的增加换取方差的减少；正则通常只加在权重上；*

# 2 进阶
<span id="cross_entropy_loss">    </span>   

**为什么交叉熵可以用作代价函数**
{:.warning}
从数学上来理解就是，为了让学到的模型分布更接近真实数据的分布，我们需要最小化模型数据分布与训练数据之间的 `KL 散度`，而因为训练数据的分布是固定的，因此最小化 `KL 散度`等价于最小化交叉熵，而且交叉熵计算更简单，所以机器/深度学习中常用交叉熵 `cross-entroy` 作为分类问题的损失函数；    


<span id="weight_share">    </span>   

**权值共享**
{:.warning}

**滤波器**：是一个与输入数据做点积运算的矩阵，这个过程叫做特征提取，运算结果就是特征；如果滤波器的元素个数与输入数据的元素个数相同，就是**全连接**；那么为了降低计算量，同时减少参数量，我们选取元素个数远小于输入数据元素个数的滤波器，然后让小滤波器执行滑窗操作，这种方式我们称之为**卷积**；卷积与全连接相比，可以认为是全连接的参数被等分成若干份，然后每一份都使用相同的参数，这就被称之为**权重共享**；（LeNet5 提出的）     

*学过传统图像处理的，很容易就发现卷积其实就是经典的滑窗操作，只是在跟全连接相比时，才有了权重共享的概念*       

# 3 理论

<span id="optimizer">    </span>   

**优化算法**
{:.warning}
`Adam`、`AdaGrad`、`RMSProp`优化算法具有自适应性     

121

<span id="RNN">    </span>   

**RNN**
{:.warning}
循环神经网络（recurrent neural network, RNN）, 主要应用在语音识别、语言模型、机器翻译等时序分析问题上；   
***在经典应用中，卷积神经网络在不同的空间位置共享参数，循环神经网络是在不同的时间位置共享参数，从而能够使用有限的参数处理任意长度的序列***
RNN 可以看做作是同一神经网络结构在时间序列上被复制多次的结果，这个被复制多次的结构称为循环体，如何设计循环体的网络结构是RNN解决实际问题的关键；    
RNN的输入有两个部分，一部分为上一时刻的状态，另一部分为当前时刻的输入样本；    


<span id="audio_image_fusion">   </span>    

**视频信息包括图片和音频，这两种特征怎么融合**
{:.warning}  
`神经网络是否能融合这两种特征`{:.warning}     
**融合**：此处图像和音频属于多模态信息，可以通过一定方法映射到统一空间，然后进行融合；至于融合方式就简单了，算数运算都可以；     
神经网络**当然可以**融合多模态特征：对于卷积网络来说，输入就是矩阵，图像就是具有1～3个通道的二维矩阵，而声音就是1～2个声道的特殊二维矩阵（特殊在行数为1）；只要保证后续提取到的特征维度一样，就能够进行融合；          

<span id="calc_feature_map">   </span>    

**计算 feature map 大小**
{:.warning}  
输出的 feature map 大小：
$\mathbf{H_{out} = { {H_{in} + 2 \times {pad} - kernel} \over stride} + 1}$   
$\mathbf{W_{out} = { {W_{in} + 2 \times {pad} - kernel} \over stride} + 1}$   

*注：当 stride 为 1 时，若 $\mathbf{pad = { {kernel − 1} \over 2} }$，则输出 feature map大小不变*   


<span id="3_3">    </span>    

**VGG使用 2 个 3\*3 代替 5\*5 卷积的优势**
{:.warning}
CNN 中多层卷积叠加是为了得到更大的感受野和更多的非线性变换；    

在相同感受野下：    
- **网络参数更少**：两个 $3×3$ 卷积层串联相当于一个 $5×5$ 的卷积层，$\frac {2×3×3}{5×5}=0.72$；   
- **模型表达能力更强**：非线性变换增加至两倍；    

`到底是降低过拟合了，还是加重过拟合了`{:.warning} `计算量变大了还是变小了`{:.warning}   

<span id="">    </span>    

**简单介绍一下贝叶斯概率与频率派概率，以及在统计中对于真实参数的假设。**
{:.warning}
p55

答：p67：3.10 上面那一段

<span id="">    </span>    

**Jacobian，Hessian 矩阵及其在深度学习中的重要性**
{:.warning}
p86-p92
<span id="">    </span>    

**KL 散度在信息论中度量的是那个直观量**
{:.warning}
p74
<span id="">    </span>    

**数值计算中的计算上溢与下溢问题，如 softmax 中的处理方式**
{:.warning}
p80-p81
<span id="">    </span>    

**与矩阵的特征值相关联的条件数 (病态条件) 指什么，与梯度爆炸与梯度弥散的关系**
{:.warning}
p82;
<span id="">    </span>    

**在基于梯度的优化问题中，如何判断一个梯度为 0 的零界点为局部极大值／全局极小值还是鞍点，Hessian 矩阵的条件数与梯度下降法的关系**
{:.warning}
p86-p92

<span id="">    </span>    

**KTT 方法与约束优化问题，活跃约束的定义**
{:.warning}
p93-p95

<span id="">    </span>    

**模型容量，表示容量，有效容量，最优容量概念**
{:.warning}
p111;p113;p114;p115

<span id="">    </span>    

**正则化中的权重衰减与加入先验知识在某些条件下的等价性**
{:.warning}
p119;p138

<span id="">    </span>    

**高斯分布的广泛应用的缘由**
{:.warning}
p63-p64

<span id="">    </span>    

**最大似然估计中最小化 KL 散度与最小化分布之间的交叉熵的关系**
{:.warning}
p132

<span id="">    </span>    

**在线性回归问题，具有高斯先验权重的 MAP 贝叶斯推断与权重衰减的关系，与正则化的关系**
{:.warning}
 p138-p139

<span id="">    </span>    

**稀疏表示，低维表示，独立表示**
{:.warning}
p147

<span id="">    </span>    

**列举一些无法基于地图 (梯度？) 的优化来最小化的代价函数及其具有的特点**
{:.warning}
p155 最顶一段

<span id="">    </span>    

**在深度神经网络中，引入了隐藏层，放弃了训练问题的凸性，其意义何在**
{:.warning}
p191-192

<span id="">    </span>    

**函数在某个区间的饱和与平滑性对基于梯度的学习的影响**
{:.warning}
p160

<span id="">    </span>    

**梯度爆炸的一些解决办法**
{:.warning}
p302

答：p198

<span id="">    </span>    

**在前馈网络中，深度与宽度的关系及表示能力的差异**
{:.warning}
p200-p201

<span id="">    </span>    

**为什么交叉熵损失可以提高具有 sigmoid 和 softmax 输出的模型的性能，而使用均方误差损失则会存在很多问题。分段线性隐藏层代替 sigmoid 的利弊**
{:.warning}
p226;p226

<span id="">    </span>    

**表示学习的发展的初衷？并介绍其典型例子: 自编码器**
{:.warning}
p3-p4;p4

<span id="">    </span>    

**在做正则化过程中，为什么只对权重做正则惩罚，而不对偏置做权重惩罚**
{:.warning}
p230

<span id="">    </span>    

**在深度学习神经网络中，所有的层中考虑使用相同的权重衰减的利弊**
{:.warning}
p230

<span id="">    </span>    

**正则化过程中，权重衰减与 Hessian 矩阵中特征值的一些关系，以及与梯度弥散，梯度爆炸的关系**
{:.warning}
p231-234

<span id="">    </span>    

**L1／L2 正则化与高斯先验／对数先验的 MAP 贝叶斯推断的关系**
{:.warning}
p234-p237

<span id="">    </span>    

**什么是欠约束，为什么大多数的正则化可以使欠约束下的欠定问题在迭代过程中收敛**
{:.warning}
p239

<span id="">    </span>    

**为什么考虑在模型训练时对输入 (隐藏单元／权重) 添加方差较小的噪声，与正则化的关系**
{:.warning}
p240-p243

<span id="">    </span>    

**共享参数的概念及在深度学习中的广泛影响**
{:.warning}
p245;p253

<span id="">    </span>    

**Dropout 与 Bagging 集成方法的关系，以及 Dropout 带来的意义与其强大的原因**
{:.warning}
p258-p268

<span id="">    </span>    

**批量梯度下降法更新过程中，批量的大小与各种更新的稳定性关系**
{:.warning}
p279

<span id="">    </span>    

**如何避免深度学习中的病态，鞍点，梯度爆炸，梯度弥散**
{:.warning}
p282-p293

<span id="">    </span>    

**SGD 以及学习率的选择方法，带动量的 SGD 对于 Hessian 矩阵病态条件及随机梯度方差的影响**
{:.warning}
p294；p296-p300

<span id="">    </span>    

**初始化权重过程中，权重大小在各种网络结构中的影响，以及一些初始化的方法；偏置的初始化**
{:.warning}
初始化权重：p301-p305；偏置初始化：p305-p306

<span id="">    </span>    

**自适应学习率算法: AdaGrad，RMSProp，Adam 等算法的做法**
{:.warning}
AdaGrad:p307; RMSProp:p307-p308; Adam:p308-p309

<span id="">    </span>    

**二阶近似方法: 牛顿法，共轭梯度，BFGS 等的做法**
{:.warning}
牛顿法：p310-p313; 共轭梯度: p313-p316; BFGS:p316-p317

<span id="">    </span>    

**Hessian 的标准化对于高阶优化算法的意义**
{:.warning}
p318-p321

<span id="">    </span>    

**卷积网络中的平移等变性的原因，常见的一些卷积形式**
{:.warning}
平移等变性：p338-p339；常见的一些卷积形式：p347-p358

<span id="">    </span>    

**pooling 的做法的意义**
{:.warning}
p342-p347

<span id="">    </span>    

**循环神经网络常见的一些依赖循环关系，常见的一些输入输出，以及对应的应用场景**
{:.warning}
p378-p395

<span id="">    </span>    

**seq2seq，gru，lstm 等相关的原理**
{:.warning}
seq2seq:p396-p397; gru:p411-p412; lstm:p408-p411

<span id="">    </span>    

**采样在深度学习中的意义**
{:.warning}
p469-p471

<span id="">    </span>    

**自编码器与线性因子模型，PCA，ICA 等的关系**
{:.warning}
自编码器与线性因子模型: p489-p490;PCA:p490-p491;ICA:p491-p493

<span id="">    </span>    

**自编码器在深度学习中的意义，以及一些常见的变形与应用**
{:.warning}
意义: p502-p503; 常见变形: p503-p508；p509-p512; p521-p524 应用: p515-p520;p524-p525

<span id="">    </span>    

**受限玻尔兹曼机广泛应用的原因**
{:.warning}
p460: 想特别了解的人注意这句话：  See Mohamed et al (2012b) for an analysis of reasons for the success of these models.

答：p595-p598

答：p599

<span id="">    </span>    

**配分函数通常难以计算的解决方案**
{:.warning}
p605,p606 第一段

<span id="">    </span>    

**几种参数估计的联系与区别: MLE／MAP／贝叶斯**
{:.warning}
P134-P139

<span id="">    </span>    

**半监督的思想以及在深度学习中的应用**
{:.warning}
p541-p546

<span id="">    </span>    

**举例 CNN 中的 channel 在不同数据源中的含义**
{:.warning}
p360-p362

<span id="">    </span>    

**深度学习在 NLP，语音，图像等领域的应用及常用的一些模型**
{:.warning}
p452-p485

<span id="">    </span>    

**word2vec 与 glove 的比较**
{:.warning}
How is GloVe different from word2vec?；GloVe 以及 Word2vec 能称为 deep learning 么？这俩模型的层次其实很浅的；

http://t.cn/RvYslDf

这个问题没找到答案，我去找了 quora 和知乎上的相关问题以及 quora 一个回答提及的论文。   （若有人在书中找到，请批评指正）

<span id="">    </span>    

**注意力机制在深度学习的某些场景中为何会被大量使用，其几种不同的情形**
{:.warning}
p475-p476

<span id="">    </span>    

**wide&deep 模型中的 wide 和 deep 介绍**
{:.warning}
https://arxiv.org/pdf/1606.07792.pdf   此问题答案未在书中找到，为此我去找了原论文，论文图 1 有详细的介绍。 （若有人在书中找到，请批评指正）

<span id="">    </span>    

**核回归与 RBF 网络的关系**
{:.warning}
p142

<span id="">    </span>    

**LSTM 结构推导，为什么比 RNN 好？**
{:.warning}
p408-p411

<span id="">    </span>    

**怎么理解贝叶斯模型的有效参数数据会根据数据集的规模自动调整**
{:.warning}
关于非参数模型：p115-p116 ；非参数模型不依赖于特定的概率模型，它的参数是无穷维的，数据集的规模的大小影响着模型使用更多或者更少的参数来对其进行建模。(并未在书中找到准确的答案，若有更好的回答，请联系我改正)

*本答案是根据问题在Deep Learning上找到的答案；有些答案只是自己读书后在书上做的笔记的具体页面，毕竟原 po（http://t.cn/RObdPGk） 说还有另外一本书，所以该答案可能不是特别准确也不完善，答案也是给大家做个参考，若发现答案有问题，请联系我并指正，大家共同进步，谢谢*


# 4 实战


<span id="overfit_adverse">    </span>    

**过拟合解决方案**
{:.warning}
>p230-p268；    

**描述**：模型学习到了噪声（无关特征）；   
**成因**：数据量少，网络复杂；       
**表现**：在训练集上准确度很高，测试集上准确度低；高方差，低偏差；     
**方案**：正则化（参数范数惩罚）、数据集增强、提前终止、参数绑定与参数共享、模型融合（Bagging 和其他集成方法）、Dropout、Batch Normalization；     
导致 overfit 的位置往往在数据边界处，如果初始化权重就已经落在数据内部，overfit 现象就可以得到一定的缓解；    


<span id="underfitting">    </span>  

**欠拟合**
{:.warning}
训练过程中模型不收敛，是否说明这个模型无效：不一定，导致模型不收敛的原因有很多种可能，常见的有以下几种：     
+ 没有对数据做归一化；    
+ 没有检查过你的结果；这里的结果包括预处理结果和最终的训练测试结果；   
+ 忘了做数据预处理；   
+ 忘了使用正则化；    
+ Batch Size 设的太大；    
+ 学习率设的不对；    
+ 最后一层的激活函数用的不对；    
+ 网络存在坏梯度；比如Relu对负值的梯度为0，反向传播时，0梯度就是不传播；   
+ 参数初始化错误；   
+ 网络太深。隐藏层神经元数量错误；   


<span id="gradient_abnormal">    </span>  

**梯度消失/爆炸**   
{:.warning}  

神经网络训练是使用反向传播改变网络的参数，以降低误差；过程使用了链式求导法则，将梯度逐层累积反向传播；    

| 问题 | 描述 | 成因 | 现象 | 方案 |
|:--------:|--------|--------| --- | --- |
| 梯度消失 | 梯度趋近于 0 | 激活函数变化平缓 |  | 微调、`BN`、`Relu`、<br>`LSTM`/`GRU`、`ResNet``待验证`{:.warning} |
| 梯度爆炸 | 梯度累积过大，导致权重溢出<br>伪梯度爆炸 | 梯度大于 1 时，<br>累积后成倍增长； | 模型不收敛<br>loss 激增/Nan<br>权重激增/Nan<br>每层梯度大于 1 | 换层数少的网络、微调、`BN`、梯度截断、Relu 代替 Sigmoid 和 Tanh、调小学习率、增大批次、warmup、RNN中用较小的时间步长、用 LSTM 代替 RNN、权重正则化 |

表面原因：
- 激活函数影响：导数的梯度大于小于1都不太好，因为受链式求导影响，这种变化会被放大；所以选用 Relu 系激活函数，让导数更稳；    
- 初始化不得当：`什么情况是不得当`{:.warning}     
BN 让梯度更加稳定在 1 附近，对上述两个问题都有缓解；    

根本原因：    
反向传播法则；    

*梯度消失时，浅层权重变化慢；梯度爆炸时，浅层梯度变化快*   

<span id="train_param">    </span>  

**深度学习调参经验**   
{:.warning}  
 - 参数初始化    
 - 数据的预处理方式    
 - 训练技巧    
 - 尽量对数据进行shuffle和augmentation    
 - Ensemble    
 - 学习率    
 - dropout    
 - relu+bn    
 - 网络层数    
 - batch_size      

<span id="fine_tuning">    </span>  

**fine-tuning**
{:.warning}
**定义**：同一个网络（也可以是某些层），在预训练模型的基础上来训练新的数据；    
**优点**：减少训练时间；一方面不用再费力拟合基础特征，另一方面避免了不合适的初始化所引发无法拟合或拟合困难问题；     
为什么微调只重视修改最后几层神经网络权值：    
1. CNN 中底层是通用特征，**高层是抽象特征**；微调是一个跨域迁移的问题，在这个过程中通用特征可以共用，抽象特征随不同问题而有所变化；所以着重调整高层特征；    
2. 模型过拟合通常是因为模型参数与数据量不协调造成的；实际应用场景，通常数据量都不大，这种情况下只调整少量的高层特征会**降低过拟合**的风险；    

<span id="dropout">    </span>  

**dropout**
{:.warning}
**定义**：模型过拟合的一个重要原因就是**参数量太大**，但是用参数量少的模型表达能力又有限；那为了让参数量大的模型不过拟合，其中一个办法就是在训练过程中让部分**神经元随机失活**；这样对与一次训练来说，相当于是在训练小网络，但是最终使用的时候使用的是整个网络；      
**优点**：不仅能防止过拟合，而且因为部署时所有神经元都参与，所以有了 bagging 的效果，会提升泛化能力；       
*`dropout`效果跟`bagging`效果类似（bagging是减少方差variance，而boosting是减少偏差bias）*    

**训练流程**：    
1. 设置超参——随机失活概率 p；   
1. 为神经元设置是否失活的状态；   
1. 所有神经元参与前想传播；     
1. 反向传播时只更新没有失活的神经元；    
1. 重复 2～4；   

*推荐 输入层 0.8，隐层 0.5；*    

**测试流程**：      
每个神经单元的权重参数要乘以概率 p`为什么`{:.warning}；   


<span id="mobile_framework">    </span>  

**移动端深度学习框架有哪些**
{:.warning}
TensorFlow Lite、MACE（小米）、ncnn（腾讯）；    



<span id="generalization">    </span>  

**提升泛化能力**
{:.warning}
- 防止模型过拟合；    
- 模型融合方法；     


<span id="compress">    </span>  

**模型加速**
{:.warning}

>网络结构改进

| 技术 | 说明 | 代表 |
| --- | --- | --- |
| 深度可分离卷积/组卷积 | 降低计算量 | mobilenet，Xception；shufflenet，ResNeXt，IGC |
| 分解卷积 | 1×k 和 k×1 代替 k×k | Inception3，ERFNet |
| bottleneck | 复杂操作前对卷积降维，最后可以再升维 | SqueezeNet |
| NAS | 自动衡量速度和精度 |  |

>知识蒸馏    

>模型压缩

| 技术 | 说明 | 代表 |
| --- | --- | --- |
| 剪枝 | 按比例滤除权重接近0的部分（mask，微调，重新导出） |  |
| 核稀疏化 | 训练时用正则项加以诱导，以便使用剪枝 |  |
| 量化 | 部分权重二值化（降低存储，加法代替乘法） |  |
|  | 二值网络 | 小规模数据尚可 |
|  | 同或网络 | 位计数+同或近似卷积；<br>比二值网络好点，ImageNet比常规网络低10%；生产环境一般 |
|  | 三值权重 | 单阈值变双阈值 |
|  | 整形、单精度量化 |  |
| 低秩分解 | SVD、CP、Tucker、Tensor Train、Block Term | 很少用，小卷积的使用让矩阵分解的方法很难实现网络加速和压缩 |

[模型压缩总览](https://www.jianshu.com/p/e73851f32c9f)   

-------------------  
[End](#head)
{:.warning}  

# 附录
## A 资源
1. [那些深度学习《面试》你可能需要知道的](https://zhuanlan.zhihu.com/p/29965072)    
1. [机器学习及大数据相关面试的职责和面试问题](https://zhuanlan.zhihu.com/p/27151345)    
1. [如何准备机器学习工程师的面试](https://zhuanlan.zhihu.com/p/29969587)    
1. [推荐算法相关的文档整理](https://zhuanlan.zhihu.com/p/29969721)    
1. [机器学习和深度学习习题集（上）](https://zhuanlan.zhihu.com/p/86154440)    
1. [深度学习 500 问](https://zhuanlan.zhihu.com/p/71979604)    
1. [深度学习专项课程精炼图笔记](https://zhuanlan.zhihu.com/p/91178285)    
1. [笔记——深度学习](https://github.com/amusi/Deep-Learning-Interview-Book/blob/master/docs/%E6%B7%B1%E5%BA%A6%E5%AD%A6%E4%B9%A0.md)    
1. [算法理论基础知识应知应会](https://github.com/sladesha/Reflection_Summary)    
1. [浅谈神经网络中的梯度爆炸问题](https://zhuanlan.zhihu.com/p/32154263)    


## B 示例
<span id="receptive"> </span>
**计算 AlexNet VGG 网络的感受野**    
```Python
#!/usr/bin/env python

# [filter size, stride, padding]
net_struct = {'alexnet': {'net':[[11,4,0],[3,2,0],[5,1,2],[3,2,0],[3,1,1],[3,1,1],[3,1,1],[3,2,0]],
                   'name':['conv1','pool1','conv2','pool2','conv3','conv4','conv5','pool5']},
       'vgg16': {'net':[[3,1,1],[3,1,1],[2,2,0],[3,1,1],[3,1,1],[2,2,0],[3,1,1],[3,1,1],[3,1,1],
                        [2,2,0],[3,1,1],[3,1,1],[3,1,1],[2,2,0],[3,1,1],[3,1,1],[3,1,1],[2,2,0]],
                 'name':['conv1_1','conv1_2','pool1','conv2_1','conv2_2','pool2','conv3_1','conv3_2',
                         'conv3_3', 'pool3','conv4_1','conv4_2','conv4_3','pool4','conv5_1','conv5_2','conv5_3','pool5']},
       'zf-5':{'net': [[7,2,3],[3,2,1],[5,2,2],[3,2,1],[3,1,1],[3,1,1],[3,1,1]],
               'name': ['conv1','pool1','conv2','pool2','conv3','conv4','conv5']}}



def outFromIn(isz, net, layernum):
    """
    计算feature map大小
    """
    totstride = 1
    insize = isz
    for layer in range(layernum):
        fsize, stride, pad = net[layer]
        outsize = (insize - fsize + 2*pad) / stride + 1
        insize = outsize
        totstride = totstride * stride
    return outsize, totstride

def inFromOut(net, layernum):
    """
    计算感受野receptive file大小
    """
    RF = 1
    for layer in reversed(range(layernum)):
        fsize, stride, pad = net[layer]
        RF = ((RF -1)* stride) + fsize
    return RF

if __name__ == '__main__':
    imsize = 224

    print "layer output sizes given image = %dx%d" % (imsize, imsize)

    for net in net_struct.keys():
        print '************net structrue name is %s**************'% net
        for i in range(len(net_struct[net]['net'])):
            p = outFromIn(imsize,net_struct[net]['net'], i+1)
            rf = inFromOut(net_struct[net]['net'], i+1)
            print "Layer Name = %s, Output size = %3d, Stride = % 3d, RF size = %3d" % (net_struct[net]['name'][i], p[0], p[1], rf)
```


<span id="iou"> </span>
**IoU 计算**     
```python
# candidateBound = [x1, y1, x2, y2]
def calculateIoU(candidateBound, groundTruthBound):
    cx1， cy1， cx1, cx2 = candidateBound
    gx1, gy1, gx2, gy2 = groundTruthBound

    carea = (cx2 - cx1) * (cy2 - cy1) #C的面积
    garea = (gx2 - gx1) * (gy2 - gy1) #G的面积
    x1, y1, x2, y2 = max(cx1, gx1), min(cy1, gy1), min(cx2, gx2), max(cy2, gy2)
    # 原点为(0, 0)，所以 min(cy1, gy1) 是min不是max
    w, h = max(0, (x2 - x1)), max(0, (y2 - y1))
    area_intersection = w * h
    area_union = carea + garea - area_intersection

    iou = area_intersection / area_union
    return iou
```
