---
layout: article
title:  "「Python」 Matplotlib"
date:   2019-01-25 17:03:40 +0800
key: matplotlib-20190125
aside:
  toc: true
category: [software, python, library]
---
> 官网 <https://matplotlib.org/>  
功能：一个二维图像绘制库；

## 一、 安装
`pip install matplotlib`  

## 二、 基本操作
fig = plt.gcf() #获取当前figure  
plt.close() # 关闭 window，如果没有指定，则指当前 window  
plt.clf() # 清除当前 figure 的所有axes，但是不关闭这个 window，所以能继续复用于其他的 plot  
plt.cla() # 清除axes，即当前 figure 中的活动的axes，但其他axes保持不变  

## 三、 Issue
1. 内存泄漏  
1） **问题**：pyplote 的 plot 操作内存泄漏；   
close(fig) 并没有起作用；  
2） **解决**：gc.collect()  
在 close 后调用 `gc.collect()`，能够清除部分内存；若没有完全清除，则在外层函数再做一次 `gc.collect()` 即可完全清除；

-------------------  
 End
{:.warning}  


## 附录
### 参考文献  
