---
layout: article
title:  "「LinearAlgebra」 行列式"
date:   2019-09-01 18:31:40 +0800
key:  determinant-20190901
aside:
  toc: true
category: [school, linear_algebra, la_determinant]
---
<span id='head'></span>

<!--more-->

# 1 概念
1. **行列式**    
n 阶方阵的（n 阶）行列式   
$$
\begin{align}
D_n &= \sum(-1)^ta_{1q_1}a_{2q_2} \cdots a_{nq_n} \label{deterniant}
\end{align}
$$   
表示所有取自不同行和列的 $n$ 个元素乘积的代数和，展开式共有 $n!$ 项，正负各半；其中 $t$ 为排列 $q_1q_2 \cdots q_n$ 的逆序数；    
`为什么要用行列式`{:.warning}     
就是线性方程组的解的分母；     

1. **全排列**    
1. **排列的逆序数**    
1. **奇排列**    
1. **偶排列**    
1. **余子式**    
$$
\begin{align}
M_{ij}  \label{m}
\end{align}
$$   

1. **代数余子式**    
$$
\begin{align}
A_(ij) &= (-1)^{i+j} M_{ij} \label{a}
\end{align}
$$   

# 2 性质
1. $D_n = D^T_n$    
1. 互换行列式的两行/列，行列式**变号**；    
1. 行列式某行/列的公因子可以**提到外边**；    
1. 矩阵等于另外两个矩阵的和，则其行列式也等于另外两个行列式的**和**；    
1. 矩阵某行/列成比例加到另一行/列上，行列式**不变**；    
1. $$|\mathrm A_n| = D_n \neq 0$$   
$$
\begin{align}
\Leftrightarrow & \begin{cases} \mathrm A 可逆 \\ r(\mathrm A) = n \\ \mathrm A 的行/列向量线性无关 \\ \mathrm A 的特征值不全为 0 \\ \mathrm A \mathrm x = O 只有零解 \Leftrightarrow \forall \mathrm x \neq O, \mathrm A\mathrm x \neq O \\  \end{cases}    \label{d_neq_zero}
\end{align}
$$    
1. $$|\mathrm A_n| = D_n = 0$$   
$$
\begin{align}
\Leftrightarrow & \begin{cases} \mathrm A 不可逆 \\ r(\mathrm A) < n \\ \mathrm A 的行/列向量线性相关 \\ 0 是 \mathrm A 的特征值 \\ \mathrm A \mathrm x = O 有非零解，其基础解系为 \mathrm A 关于 \lambda = 0 的特征向量  \end{cases}    \label{d_eq_zero}
\end{align}
$$    

# 3 展开定理
1. **按行列展开定理**：行列式等于任一行/列的各元素与其对应代数余子式乘积之和：    
$$
\begin{align}
D_n = \sum_{i=1}^{n} a_{ki}A_{ki} = \sum_{i=1}^{n} a_{ik}A_{ik}, k \in [1, n]    \label{da}
\end{align}
$$    
**推论**：行列式某一行/列与另一行/列的对应元素的代数余子式乘积之和为 0：   
$$
\begin{align}
\sum_{k=1}^{n} a_{ki}A_{kj}  &= \sum_{k=1}^{n} a_{ik}A_{jk} = 0,  i \neq j\label{a0}
\end{align}
$$   


-------------------  
[End](#head)
{:.warning}  


# 附录
