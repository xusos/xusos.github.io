---
layout: article
title:  "「ML」 机器学习中的常见误区"
date:   2019-01-15 16:03:40 +0800
key: ml-prejudice-20190115
aside:
  toc: true
category: [AI, ML]
---

## 一、 常见误区
1. **想当然地使用默认的损失函数**  
一般情况下使用均方误差效果还行；但在现实应用中，需根据业务需求定制；  
拿诈骗检测来说；为了达到业务目标，我们需按照与欺诈相关的美元金额的比例来惩罚假阴性以减少诈骗带来的损失；
效果 OK 与最好是两个概念；通用的损失函数，往往是 OK；
`如何定制啊`{:.warning}

2. **一个算法用到底**  
一个模型用起来似乎很熟悉、顺手，并不代表就好用，且往往很难达到最佳性能；  
要让数据来选择模型——处理完数据之后，把它放到不同的模型里看看结果如何，而不是想当然地主观挑选一个；这样你将能够很好地理解什么模型更适用；  

3. **忽略异常值**  
异常值取舍要视具体情况而定，并不是一味地忽略；  
以污染预测为例，如果观察到空气污染出现大量异常峰值，那么根据这些峰值来分析污染原因就很有效；但如果异常值是由于机械误差、测量误差或者其它任何非普遍化因素导致的，那最好过滤掉；  
从模型的角度来看，一些模型对异常值更灵敏；拿 Adaboost 来说， 异常值会被视为特殊情况并被赋予相当大的权重，而决策树就只是简单地当作错误分类来计算。
有些模型算法对异常值非常灵敏。比如，AdaBoost 会对它们“倍加关注”，赋予一个相当大的权重值。相反，决策树就简单地把它们当做错误分类来处理。

4. **不当处理周期性特征**  
具有周期性特征的数据一定要做转换；   
时间（月份，日，周）和风向都具有周期性特征；例如 23 时和 0 时其实是很相近的，可以用极坐标表示，如此一来，23 时和 0 时在数字上就相邻了；  

5. **不做标准化的 L1/L2 正则化**  
使用 L1 或 L2 正则化是线性回归或逻辑回归惩罚权重系数值过大的常用方法；然而，很多人使用正则化时都没有意识到提前对特征做标准化的重要性；  
标准化可以保证正则化对所有特征作用一致；  

6. **把线性模型或者逻辑回归模型系数的绝对值解释为特征重要性**  
因为很多现成的线性回归方法返回每个系数的p值，很多新手机器学习工程师就以为对于线性模型来说，系数的值越大，对应的特征就发挥更大作用；然而事实远非如此，因为缩放变量就会改变系数绝对值；而如果特征是线性相关的，其系数可以从一个特征转移到另一特征；此外，数据集包含的特征越多，特征之间就越有可能线性相关，用系数解释特征重要性就越不靠谱；  
`未解`{:.warning}
作者：Jacob Joseph
系列名称：Improving analytics output with feature engineering
Part1: How to Improve Machine Learning: Tricks and Tips for Feature Engineering
Part2: Enhance Machine Learning with Standardizing, Binning, Reducing
Part3: Get instant access to actionable big data eBooks – for freeInteractivity, Non-normality, and Missing Values: How to Address Common Data Challenges
Part4: Dimension Reduction and Intuitive Feature Engineering for Machine Learning

## 附录
###  A 参考资料
[1]. Christopher Dossman. Top 6 errors novice machine learning engineers make[EB/OL]. <https://medium.com/ai%C2%B3-theory-practice-business/top-6-errors-novice-machine-learning-engineers-make-e82273d394db>.  2017-10-16/2019-01-15.    
