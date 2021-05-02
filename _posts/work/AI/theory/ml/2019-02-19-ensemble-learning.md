---
layout: article
title:  "「ML」 集成学习"
date:   2019-02-19 11:54:40 +0800
key: ensemble-abc-20190219
aside:
  toc: true
sidebar:
  nav: ML_Ensemble
category: [AI, ML, ensemble_learning]
---

>集成学习是一大类模型融合策略的统称；对于弱分类器往往效果显著；    
其中每一个单独的分类器称为「基分类器」，也叫「基学习器」；    
较为成功的应用就是 XGBoost；     


## 常见问题汇总
>集成学习的种类  

:o: 集成学习分哪几种？有何异同？  
[Boosting] [Bagging] [基分类器]  

>集成学习的步骤和例子  

:o: 集成学习的基本步骤？并举例  
[集成学习] [Adaboost] [梯度提升决策树]  

>基分类器  

:o: 常用的基分类器？  

:o: 可否将随机森林中的基分类器由决策树替换为线性分类器或KNN？为什么？  
[随机森林] [偏差-方差关系]   

>偏差与方差  


:o: 什么是偏差和方差？  

:o: 从减小方差和偏差的角度解释 Boosting 和 Bagging？  

>GDBT 的基本原理  

:o: GDBT 的基本原理？  

:o: 梯度提升和梯度下降的联系和区别？  

:o: GDBT 的优点和局限？  

:o: XGBoost 与 GDBT 的联系和区别？  


-------------------  
 End
{:.warning}  

## 附录

### A 推荐资料

### B 术语

| 术语 | 英文 | 术语 | 英文 |
| --- | --- | --- | --- |
| 集成学习  | ensemble learning | 多分类其系统 | multi-classifyer system |
|基于委员会的学习 | committee-based learning | 个体学习 | individual learning |
| 组件学习 | component learner| 基学习器 | base learner |
| 随机森林 | Random Forest | 加性模型 | additive model |
| 绝对多数投票法 | majority voting | 相对多数投票法 | plurality voting |
|  加权投票法 | weighted voting | Platt 缩放 | Platt scaling |
| 等分回归 | isotonic regression | 校准 | calibration |
| 误差分歧分解 | error-ambiguity decomposition | 多样性度量 | diversity measure |
| 不合度量 | disaggrement measure | 相关系数 | correlation coefficient |
| Q 统计量 | Q-statistic | 随机子空间 | random subspace |
| 翻转法 | Flippingt Output | 输出调制法 | Output Smearing |
|包外估计 | out-of-bag estimate | 同质 | homogeneous |
| 异质 | heterogenous | 间隔理论 | margin theory |
| 混合专家 | mixture of experts | 集成修剪 | ensemble pruning |
| 二次学习 | twice-learning |  
| 偏差 | Bias | 方差 | Variance |



### C 参考资料
[^1]: 诸葛越. 百面机器学习[M]. 北京:人民邮电出版社. 2018.   

[^2]: 周志华. 机器学习[M]. 北京:清华大学出版社, 2016.   
