---
layout: article
title:  "「ML」 DBSCAN：噪声场景下的密度聚类"
date:   2019-02-28 9:30:40 +0800
key: density-based-clustering-20190228
aside:
  toc: true
sidebar:
  nav: Unsupervised
category: [AI, ML, unsupervised]
---

>层次聚类算法和划分式聚类算往往只能发现凸形的聚类簇；为了弥补这一缺陷，发现各种任意形状的聚类簇，提出了基于密度的聚类算法；而 Density-based Spatial Clustering of Applications with Noise（**DBSCAN**）就是其中一种简单的实现；它是 1996 年由 M. Ester, H. Kriegel, J. Sander 及 X. Xu 提出的[聚类算法]()    
论文:<https://www.aaai.org/Papers/KDD/1996/KDD96-037.pdf>  


## 一、了解
密度聚类算法认为，这些稠密样本点被低密度区域（噪声）分割，而算法的目的就是要过滤低密度区域，发现稠密样本点；     
其核心思想就是先发现密度较高的点，然后把相近的高密度点逐步都连成一片；  

### 1. 基本概念

密度聚类的两个参数：  

| 参数 | 描述 |  
| --- | --- |  
| $\epsilon$ | 邻域半径 |  
| $MinPts$ | 密度阈值：在 $\epsilon$ 邻域内需出现的最少点数 |

| 概念 | 描述 |  
| --- | --- |  
| **核心点** | 该点在距离 $\epsilon$ 范围内至少有 $MinPts$ 个样本点  |  
| **直接密度可达** | 核心点的 $\epsilon$ 邻域内样本点的数量不少于 $MinPts$ 时，该邻域内的其他点都是由核心点直接可达的 |  
| **可达性**(Reachability) | 样本点 $p_1 ,p_2 ….p_n$ 中, 假如 $p_{i+1}$ 从 $p_i$ 直接密度可达，那么我们就称 $p_1$ 到 $p_n$ 可达 |  
| **连结性**(Connectedness) | 两个点相互可达，则两点连结  |  
| **局外点/噪声** | 任何点都不可达的点 |  
| **边界点** | 不是核心点 ,但落在某个核心点的 $\epsilon 邻域内的点 |    

可达性是直接密度可达的传递闭包，并且这种关系是非对称的；连结性是对称关系；DBSCAN 目的是找到密度相连对象的最大集合；  

### 2. 定义  
算法流程：  

输出：目标类簇集合  
方法： repeat  
&emsp; &emsp; 1） 判断输入点是否为核心点  
&emsp; &emsp; util 所有输入点都判断完毕  
&emsp; &emsp; 2） $\epsilon$ 距离内的所有直接密度可达点  
&emsp; &emsp; repeat  
&emsp; &emsp; 针对所有核心点的 $\epsilon$ 邻域内所有直接密度可达点找到最大密度相连对象集合  
&emsp; &emsp; 密度可达点的合并  
&emsp; &emsp; Util 所有核心点的 $\epsilon$ 邻域都遍历完毕  


### 3. 优缺点
优势：  
  - 不需要预先声明聚类数量
  - 能分辨噪音（局外点）；   
  - 能够发现各种形状的聚类簇，甚至能找出一个聚类，它包围但不连接另一个聚类，另外，由于 MinPts 参数，single-link effect （不同聚类以一点或极幼的线相连而被当成一个聚类）能有效地被避免  ；      
  - 只需两个参数，且对数据库内的点的次序几乎不敏感（两个聚类之间边缘的点有机会受次序的影响被分到不同的聚类，另外聚类的次序会受点的次序的影响）  
  - 可以被设计成能配合可加速访问的数据库结构，例如 R*树  
  - 如果对资料有足够的了解，可以选择适当的参数以获得最佳的分类  

缺点：  
  - 很难发现不同密度的簇；  
  - DBSCAN 不是完全决定性的：在两个聚类交界边缘的点会视乎它在数据库的次序决定加入哪个聚类，幸运地，这种情况并不常见，而且对整体的聚类结果影响不大——DBSCAN 对核心点和噪音都是决定性的；  
  - DBSCAN 聚类分析的质素受函数 regionQuery(P,ε) 里所使用的度量影响，最常用的度量是欧几里得距离，尤其在高维度资料中，由于受所谓“维数灾难”影响，很难找出一个合适的 ε ，但事实上所有使用欧几里得距离的算法都受维数灾难影响  
  - **无法应对目睹不均衡**：密度不均匀时，效果差，因为不能选择一个适用于所有聚类的 minPts-ε 参数组合  
  - **调参复杂**：如果没有对资料和比例的足够理解，将很难选择适合的 ε 参数  
  - **收敛慢**：样本集较大时，聚类收敛时间较长，此时可以对搜索最近邻时建立的 KD 树或者球树进行规模限制来改进；  

### 4. 复杂度
采用空间索引, 复杂度为 $O(nlog n)$, 否则为 $O(n^2)$；   

## 二、 优化
**1. DBSCAN**\*    
把交界点视为噪音，达到完全决定性的结果；   

**2. 自调整：OPTICS**（Ordering points to identify the clustering structure）  
>Ankerst, M., Breunig, M. M., Kriegel, H. P., & Sander, J. (1999, June). OPTICS: ordering points to identify the clustering structure. In ACM Sigmod record (Vol. 28, No. 2, pp. 49-60). ACM.  


将邻域点按照密度大小进行排序，再用可视化的方法来发现不同密度的簇，OPTICS 必须由其他的算法在可视化的图上查找“山谷”来发现簇，因此其性能直接受这些算法的约束；  

**3. SNN**   
采用一种基于KNN（最近邻）来算相似度的方法来改进DBSCAN；核心是把原始的密度计算替换成基于每对点之间共享的邻域的范围，而忽略其真实的密度分布；    
对于每个点，我们在空间内找出离其最近的k个点（称为k近邻点）；两个点之间相似度就是数这两个点共享了多少个k近邻点；如果这两个点没有共享k近邻点或者这两个点都不是对方的k近邻点，那么这两个点相似度就是0；然后我们把DBSCAN里面的距离公式替换成SNN相似度，重新算每个点的邻域和密度，就可以发现不同密度的簇了；  

缺点：必须定义最近邻个数k, 而且其性能对k的大小很敏感；  

**4. DP**（Clustering by fast search and find of density peaks）  
2014 年提出一种基于密度峰值的算法；也是采用可视化的方法来帮助查找不同密度的簇；  
其思想为每个簇都有个最大密度点为簇中心，每个簇中心都吸引并连接其周围密度较低的点，且不同的簇中心点都相对较远；  
首先计算每个点的密度大小（也是数多少点在邻域 $\epsilon$ 内），然后再计算每个点到其最近的且比它密度高的点的距离；这样对每个点我们都有两个属性值，一个是其本身密度值，一个是其到比它密度高的最近点的距离值；对这两个属性我们可以生成一个2维图表（决策图），那么在右上角的几个点就可以代表不同的簇的中心了，即密度高且离其他簇中心较远；然后我们可以把其他的点逐步连接到离其最近的且比它密度高的点，直到最后连到某个簇中心点为止；这样所有共享一个簇中心的点都属于一个簇，而离其他点较远且密度很低的点就是异常点了；由于这个方法是基于相对距离和相对密度来连接点的，所以其可以发现不同密度的簇；DP的缺陷就在于每个簇必须有个最大密度点作为簇中心点，如果一个簇的密度分布均与或者一个簇有多个密度高的点，其就会把某些簇分开成几个子簇；另外DP需要用户指定有多少个簇，在实际操作的时候需要不断尝试调整；下图展示了一个DP生成的决策图；    

**5. 密度比估计**（Density-ratio estimation）  
用来克服 DBSCAN 无法发现不同密度簇的缺陷；  
密度比的核心思想就是对每个点，计算其密度与其邻域密度的比率，然后用密度比替换 DBSCAN 的密度来发现核心点，而其他过程和 DBSCAN 一致；这样一来，每个局部高密度点就会被选出来作为核心点，从而发现不同密度的簇；  
基于这个思想，我们还可以把原始数据按其密度分布进行标准化（ReScale），即把密度高的区域进行扩张，密度低的区域继续收缩；这样以来，不同密度的簇就可以变成密度相近的簇了，我们再在标准化后的数据上直接跑 DBSCAN 就搞定了；这种方法需要用户设置邻域范围来计算密度比；   

**6. 多比例：HDBSCAN**  
>Campello, R. J., Moulavi, D., & Sander, J. (2013, April). Density-based clustering based on hierarchical density estimates. In Pacific-Asia Conference on Knowledge Discovery and Data Mining (pp. 160-172). Springer, Berlin, Heidelberg.


## 三、 实践

在应用中，可以用不同的索引方法或用基于网格的方法来加速密度估计，提高聚类的速度；  

[sklearn 示例](#sklearn_code)

## 四、 应用场景
- 城市供水网络是一种重要的隐形地下资产，已破裂管道的聚类结果可以显示潜在的问题；使用基于密度的聚类工具，工程师可以找到这些聚类的位置并对供水网络中的高危区域抢先采取行动；   
- 根据 NBA 球员所有成功的和失败的投篮位置数据，基于密度的聚类可以显示每名球员成功与失败投篮位置的不同模式；然后可利用此信息告知比赛战术；  
- 针对害虫传播疾病的研究，并且有一个代表您研究区域内家庭的点数据集，其中有些家庭已经被感染，有些家庭尚未被感染；通过使用基于密度的聚类工具，您可以确定受害家庭的最大聚类，以帮助确定一个区域以开始害虫的处理和消灭；  
- 对自然灾害或恐怖袭击之后的地理定位推文进行聚类，根据所确定的聚类大小和位置报告救援和疏散需求；  


-------------------  
 End
{:.warning}  



## 附录
### A 示例
<span id="sklearn_code">**1. sklearn DBSCAN 示例**</span>

简单例子：  

```python
import numpy as np  # 数据结构
import sklearn.cluster as skc  # 密度聚类
from sklearn import metrics   # 评估模型
import matplotlib.pyplot as plt  # 可视化绘图


X = np.random.random((30,2))

db = skc.DBSCAN(eps=1.5, min_samples=3).fit(X) #DBSCAN聚类方法 还有参数，matric = ""距离计算方法
labels = db.labels_  #和X同一个维度，labels对应索引序号的值 为她所在簇的序号。若簇编号为-1，表示为噪声

print('每个样本的簇标号:')
print(labels)

raito = len(labels[labels[:] == -1]) / len(labels)  #计算噪声点个数占总数的比例
print('噪声比:', format(raito, '.2%'))

n_clusters_ = len(set(labels)) - (1 if -1 in labels else 0)  # 获取分簇的数目

print('分簇的数目: %d' % n_clusters_)
print("轮廓系数: %0.3f" % metrics.silhouette_score(X, labels)) #轮廓系数评价聚类的好坏

for i in range(n_clusters_):
    print('簇 ', i, '的所有样本:')
    one_cluster = X[labels == i]
    print(one_cluster)
    plt.plot(one_cluster[:,0],one_cluster[:,1],'o')

plt.show()
```

复杂例子：  

```python
import numpy as np
from sklearn.cluster import DBSCAN
from sklearn import metrics
from sklearn.datasets.samples_generator import make_blobs
from sklearn.preprocessing import StandardScaler


# #############################################################################
# 产生样本数据
centers = [[1, 1], [-1, -1], [1, -1]]  # 生成聚类中心点
X, labels_true = make_blobs(n_samples=750, centers=centers, cluster_std=0.4,random_state=0) # 生成样本数据集

X = StandardScaler().fit_transform(X) # StandardScaler作用：去均值和方差归一化。且是针对每一个特征维度来做的，而不是针对样本。

# #############################################################################
# 调用密度聚类  DBSCAN
db = DBSCAN(eps=0.3, min_samples=10).fit(X)
# print(db.labels_)  # db.labels_为所有样本的聚类索引，没有聚类索引为-1
# print(db.core_sample_indices_) # 所有核心样本的索引
core_samples_mask = np.zeros_like(db.labels_, dtype=bool)  # 设置一个样本个数长度的全false向量
core_samples_mask[db.core_sample_indices_] = True #将核心样本部分设置为true
labels = db.labels_

# 获取聚类个数。（聚类结果中-1表示没有聚类为离散点）
n_clusters_ = len(set(labels)) - (1 if -1 in labels else 0)

# 模型评估
print('估计的聚类个数为: %d' % n_clusters_)
print("同质性: %0.3f" % metrics.homogeneity_score(labels_true, labels))  # 每个群集只包含单个类的成员。
print("完整性: %0.3f" % metrics.completeness_score(labels_true, labels))  # 给定类的所有成员都分配给同一个群集。
print("V-measure: %0.3f" % metrics.v_measure_score(labels_true, labels))  # 同质性和完整性的调和平均
print("调整兰德指数: %0.3f" % metrics.adjusted_rand_score(labels_true, labels))
print("调整互信息: %0.3f" % metrics.adjusted_mutual_info_score(labels_true, labels))
print("轮廓系数: %0.3f" % metrics.silhouette_score(X, labels))

# #############################################################################
# Plot result
import matplotlib.pyplot as plt

# 使用黑色标注离散点
unique_labels = set(labels)
colors = [plt.cm.Spectral(each) for each in np.linspace(0, 1, len(unique_labels))]
for k, col in zip(unique_labels, colors):
    if k == -1:  # 聚类结果为-1的样本为离散点
        # 使用黑色绘制离散点
        col = [0, 0, 0, 1]

    class_member_mask = (labels == k)  # 将所有属于该聚类的样本位置置为true

    xy = X[class_member_mask & core_samples_mask]  # 将所有属于该类的核心样本取出，使用大图标绘制
    plt.plot(xy[:, 0], xy[:, 1], 'o', markerfacecolor=tuple(col),markeredgecolor='k', markersize=14)

    xy = X[class_member_mask & ~core_samples_mask]  # 将所有属于该类的非核心样本取出，使用小图标绘制
    plt.plot(xy[:, 0], xy[:, 1], 'o', markerfacecolor=tuple(col),markeredgecolor='k', markersize=6)

plt.title('Estimated number of clusters: %d' % n_clusters_)
plt.show()
```

### B 参考文献  
[1]. 诸葛越. 百面机器学习[M]. 北京:人民邮电出版社. 2018.  
[2]. ArcGIS Pro. “基于密度的聚类”工作原理[EB/OL]. <https://pro.arcgis.com/zh-cn/pro-app/tool-reference/spatial-statistics/how-density-based-clustering-works.htm>. -/2019-03-03.  
