---
layout: article
title:  "「ML」 机器学习问答"
date:   2019-04-11 08:20:40 +0800
key: ml-question
aside:
  toc: true
tags: Q&A
category: [AI, ML]
sidebar:
  nav: INTERVIEW
---
<span id='head'></span>  


<!--more-->

| 理论 |  |  |  |
| :--- | --- | --- | --- |
|  [常用算法](#foundation)  |  [数据不平衡](#data_not_balance)  | [AUC](#auc)  |   |
| [logistic 为什么要离散化特征](#logistic) | [逻辑回归如何防止过拟合](#logistic_overfit) |  |  |
|  [Xgboost如何处理高维数据](#xgboost)  |    |   |   |
|  [bagging与boosting的区别](#bagging_boosting)  |    |   |   |
|    |    |   |   |
|    |    |   |   |
|    |    |   |   |


<span id="foundation">    </span>    

**机器学习常用算法**
{:.warning}   
+ 支持向量机 `SVM`   
+ 贝叶斯分类器    
+ 决策树    
+ 集成学习     
+ 梯度提升决策树 `GBDT`    
+ 随机森林    
+ 聚类与降维    

<span id="logistic">    </span>    

**逻辑斯蒂回归为什么要对特征进行离散化处理？**    
{:.warning}
- 离散特征的增加和减少都很容易，易于模型的快速迭代；    
- 稀疏向量内积乘法运算速度快，计算结果方便存储，容易扩展；    
- 离散化后的特征对异常数据有很强的鲁棒性：比如一个特征是年龄>30是1，否则0。如果特征没有离散化，一个异常数据“年龄300岁”会给模型造成很大的干扰；    
- 逻辑回归属于广义线性模型，表达能力受限；单变量离散化为N个后，每个变量有单独的权重，相当于为模型引入了非线性，能够提升模型表达能力，加大拟合；     
- 离散化后可以进行特征交叉，由M+N个变量变为M*N个变量，进一步引入非线性，提升表达能力；    
- 特征离散化后，模型会更稳定，比如如果对用户年龄离散化，20-30作为一个区间，不会因为一个用户年龄长了一岁就变成一个完全不同的人。当然处于区间相邻处的样本会刚好相反，所以怎么划分区间是门学问；      
- 特征离散化以后，起到了简化了逻辑回归模型的作用，降低了模型过拟合的风险；     

<span id="xgboost">    </span>    

**Xgboost是如何处理高维数据的？**    
{:.warning}
略


<span id="bagging_boosting">    </span>    

**bagging与boosting的区别？**    
{:.warning}

bagging：通过降低过拟合，提升泛化能力；模型是并行训练，每一个训练器及特征是独立的，地位是一样的,如 RF bagging；      
boosting：通过降低偏差来提升模型的拟合能力程度，是串行的，训练器之间并不是平等和独立的，Adaboost,GBDT；   


<span id="logistic_overfit">    </span>   

**逻辑回归如何防止过拟合**
{:.warning}
1. 优化模型，引入正则化(数据稀疏使用`L1`正则化)，在优化目标中加入正则项，通过惩罚过大的参数来防止过拟合.
2. 增加样本数据(这个方法适合所有的模型).
3. 通过特征选择，剔除一些不重要的特征，从而降低模型复杂度.


<span id="data_not_balance">    </span>   

**数据不平衡怎么办?**
{:.warning}

<span id="auc">    </span>   

**AUC 及其公式**    
{:.warning}   

-------------------  
[End](#head)
{:.warning}  

# 附录
## A 资源
1. [机器学习100天](https://github.com/Avik-Jain/100-Days-of-ML-Code-Chinese-Version)    
