---
layout: article
title:  "「CV」 图像特征提取概述"
date:   2019-07-03 10:06:40 +0800
key: feature-extract-survey-20190703
aside:
  toc: true
category: [AI, image_process]
sidebar:
  nav: ImageRetrieval
---
<span id='head'></span>  

<!--more-->  

# 1 灰度特征
## 1.1 查找颜色表

## 1.2 中心矩

## 1.3 直方图
**步骤**：计算图像的直方图——>取两个直方图的归一化相关系数（巴氏距离，直方图相交距离）；     
**优点**：   
- 能够很好地归一化，计算量适中；    
**缺点**：   
- 直方图反映的是像素灰度值的概率分布，而没有考虑位置关系（比如图像的骨架，物体形状）；很明显，一个上黑下白的图像和上白下黑的图像其直方图分布是一模一样的；    
- 距离度量采用的是巴氏距离或者归一化相关系数，这种用分析数学向量的方法去分析图像，本身就是一个很不好的办法；    
- 从信息量角度来看，用一个数值来衡量两幅图像的相似度，是一个信息压缩的过程，那么肯定就会存在不准确性；    
**改进**：   
- FragTrack：滑窗，每个窗口进行直方图匹配；融入了位置信息，但是计算低效；`咋地低效了，不都是遍历了所有像素`{:.warning}    
- 对前景取凸包，再对凸包做 Delauny 三角形分解，最后对每个三角形做直方图匹配；      

## 1.4 峰值信噪比
>PSNR（Peak Signal to Noise Ratio）   
参考全图的图像质量评价指标；        

最常用的图像客观评价指标；    
**原理**：但是它是基于对应像素点间的误差，也就是基于误差敏感的图像质量评价；    
**特点**：并没有考虑人眼的视觉特征：   
  - 对空间频率较低的对比差异敏感度较高，    
  - 对亮度对比差异的敏感度较色度高，    
  - 对区域的感知结果受邻域影响等；   
因此评价结果与人的主观常常不一致；    
**公式**：   
$$
\begin{align}
MSE &= {1 \over {H \times W}} \sum_{i = 1}^{H} \sum_{j = 1}^{W} (X_{i, j} - Y_{i, j})^2 \label{mse}
PSNR &= 10 \log_{10} {(2^n -1)^2 \over {MSE}} \label{PSNR}
\end{align}
$$
注：$n$ 为每像素的比特数，一般取 8，即像素灰阶数为 256；$PSNR$ 的单位是 dB，数值越大表示失真越小；    
`PSNR 为什么要这么定义啊`{:.warning}   

## 1.5 结构相似性
>SSIM（structural similarity）   
参考全图的图像质量评价指标；分别从亮度、对比度、结构三方面度量图像相似性；    

**公式**：    
$$
\begin{align}
l(X, Y) =& {2 \mu_X \mu_Y + C_1} \over {\mu_X^2 + \mu_Y^2 + C_1} \label{light} \\
c(X, Y) =& {2 \sigma_X \sigma_Y +C_2} \over {\sigma_X^2 + \sigma_Y^2 + C_2} \label{contrast}  \\
s(X, Y) =& {\sigma_{XY} + C_3} \over {\sigma_X \sigma_Y + C3} \label{structure} \\
SSIM(X, Y) &= l(X, Y) \cdot c(X, Y) \cdot s(X, Y) \label{SSIM}
\end{align}
$$
注：其中 $\mu_X, \mu_Y$ 分别表示图像 $X$ 和 $Y$ 的均值，$\sigma_X, \sigma_Y$ 分别表示图像 $X$ 和 $Y$ 的方差，$\sigma_{XY}$ 表示图像 $X$ 和 $Y$ 的协方差；$C_1、C_2、C_3$ 为常数，为了避免分母为 0 的情况，通常取 $C_1=(K_1 \times L)^2$, $C_2=(K_2 \times L)^2$, $C_3=C_2/2$, 一般地 $K_1=0.01, K_2=0.03, L=255$；       

SSIM取值范围[0,1]，值越大，表示图像失真越小；    

实际应用中，可以利用滑窗方式；考虑到窗口形状对分块的影响，采用高斯加权计算每一窗口的均值、方差以及协方差，然后计算对应块的结构相似度 SSIM，最后将平均值作为两图像的结构相似性度量，即平均结构相似性 MSSIM；   

## 1.6 感知哈希
>perceptual hash algorithm    
对每张图像生成一个「指纹」(fingerprint)字符串，然后比较不同图像的指纹；结果越接近，就说明图像越相似；    

感知哈希算法是一类算法的总称，包括aHash、pHash、dHash。顾名思义，感知哈希不是以严格的方式计算Hash值，而是以更加相对的方式计算哈希值，因为“相似”与否，就是一种相对的判定。

**aHash**：平均值哈希；速度比较快，但是常常不太精确；      
**pHash**：感知哈希；精确度比较高，但是速度较差；      
灰度化->压缩至同一尺寸（32*32）->DCT变换->计算相似hash（指纹）->计算汉明距；[python 示例](#phash_opencv_python)       
**dHash**：差值哈希；精确度较高，且速度也非常快；      
缩小尺寸——>灰度级简化——>计算均值——>计算哈希——>计算汉明距离；[详细说明](#hash_progress)、[python 示例](#dhash_opencv_python)   
往往采用强大的pHash算法和SIFT算法，它们能够识别图片的变形。只要变形程度不超过25%，它们就能匹配原图。这些算法虽然更复杂，但是原理与上面的简便算法是一样的，就是先将图片转化成Hash字符串，然后再进行比较；       



# 2 基于纹理的

# 3 特征点
>可以适应多角度的情况；`旋转，还是视角转换`{:.warning}    

### 3.3.1 Harris 角点

### 3.3.2 Sift 特征点
[David G. Lowe](https://www.cs.ubc.ca/~lowe/)    
**优点**：抗旋转和噪声的效果很好；   


# 4 特征值

## 4.1 矩阵分解
>矩阵特征值计算方法有SVD、NMF、Trace变换，不变矩等；    

### 4.1.1 SVD
>奇异值分解是基于整体的表示；

不但具有正交变换、旋转、位移、镜像映射等代数和几何上的不变性,而且具有良好的稳定性和抗噪性，广泛应用于模式识别与图像分析中；   
**目的**：得到唯一、稳定的特征描述；降低特征空间的维数；提高抵抗干扰和噪声的能力；    
**缺点**：但是由于奇异值分解得到的奇异矢量中有负数存在所以不能很好的解释其物理意义；    

- 稳定性   
- 比例不变性   
- 旋转不变性   
- 压缩性          

### 4.1.3 NMF
>非负矩阵分解；    

**原理**：将非负矩阵分解为可以体现图像主要信息的基矩阵与系数矩阵，并且可以对基矩阵赋予很好的解释，比如对人脸的分割，得到的基向量正是人的「眼睛」，「鼻子」等主要概念特征，源图像表示为这些特征的加权组合；所以 NMF 算法也在人脸识别等场合中发挥着巨大的作用；

## 4.2 深度特征
使用神经网络提取图像特征；一般 CNN 中取最后一层卷积层特征；        

# 5 总结

|  | PSNR | SSIM | 直方图 | 感知哈希 |
| --- | --- | --- | --- | --- |
| 优势 |  |  |  |  |
| 劣势 | 未考虑人眼特性 |  |  |  |

*若两幅图像是局部物体相似，需忽略背景部分时，就需要用模板匹配找相似区域，或者提取复杂的特征来进行相似度计算——特征点、深度特征等；*    


-------------------  
[End](#head)
{:.warning}  


# 附录
## A 参考资料


## B 基本概念
<span id='hash_progress'>**1. 差值哈希的计算过程**</span>    
**缩小尺寸**：将图像缩小到 8*8 的尺寸；主要是为了去除图像的细节，只保留结构/明暗等基本信息，摒弃不同尺寸/比例带来的图像差异；    
**灰度级简化**：将缩小的图像转换为 64 个灰度级；    
**计算均值**：计算图像的灰度均值；    
**计算哈希值**：64 个像素点大于或等于平均值的记为 1，小于平均值记为 0，结果就是哈希值；    
**比对**：计算两个哈希值的汉明距离，距离不超过5，为相似；大于10，就是两张不同的图像；   

「汉明距离」Hamming distance，在信息论中，两个等长字符串之间的汉明距离是两个字符串对应位置的不同字符的个数；      

## C 英文名称

| 中文 | 英文 | 中文 | 英文 |
| --- | --- | --- | --- |
| 感知哈希 | perceptual hash | 灰度级 |  |

## D 代码示例

<span id='phash_opencv_python'>**1. 感知哈希 python 示例**</span>    
```python
def p_hash(src):
    img = cv2.imread(src)
    hash_len = 32

    # 灰度
    gray_img = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)

    # 压缩
    resize_gray_img = cv2.resize(gray_img,(hash_len,hash_len),interpolation=cv2.INTER_AREA)

    # 图像内的整型转为浮点数便于dct
    h, w = resize_gray_img.shape[:2]  # 获取图像宽高
    vis0 = numpy.zeros((h, w), numpy.float32)  # 初始化
    vis0[:h, :w] = resize_gray_img  # 填充数据

    # 离散余弦变换
    vis1 = cv2.dct(cv2.dct(vis0)) # 转换后仍然是32*32
    img_list = vis1.flatten() # img_list.shape (1024,)

    # 计算均值
    avg = sum(img_list) * 1. / len(img_list)
    avg_list = []
    for i in img_list:
        if i < avg:
            tmp = '0'
        else:
            tmp = '1'
        avg_list.append(tmp)

    # 计算哈希值，用16进制表示
    p_hash_str = ''
    for x in range(0, hash_len * hash_len, 4):
        p_hash_str += '%x' % int(''.join(avg_list[x:x + 4]), 2)
    return p_hash_str
  ```


<span id='dhash_opencv_python'>**2. 差值哈希 python 示例**</span>    
```python
width = 32
high = 32  # 压缩后的大小
dirName = ""  # 相册路径
allDiff = []
postFix = picPostfix()  #  图片后缀的集合

dirList = listdir(dirName)
cnt = 0
for i in dirList:
    cnt += 1
    print cnt  # 可以不打印 表示处理的文件计数
    if str(i).split('.')[-1] in postFix:  # 判断后缀是不是照片格式
        im = Image.open(r'%s\%s' % (dirName, unicode(str(i), "utf-8")))
        diff = getDiff(width, high, im)
        allDiff.append((str(i), diff))
# 暴力判断是否是相同图片
for i in range(len(allDiff)):
    for j in range(i + 1, len(allDiff)):
        if i != j:
            ans = getHamming(allDiff[i][1], allDiff[j][1])
            if ans <= 5:  # 判别的汉明距离，自己根据实际情况设置
                print allDiff[i][0], "and", allDiff[j][0], "maybe same photo..."
```
