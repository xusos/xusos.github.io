---
layout: article
title:  "「C++」 Lambda 表达式"
date:   2019-05-17 17:06:40 +0800
key: lambda-expression-20190517
aside:
  toc: true
category: [software, c++, modern]
---

<!--more-->

# 1 避免使用默认取值模式
值拷贝也好，引用也好，这些都只是针对非静态的局部变量，对于静态的，或者是全局变量，那么lambda的捕获将不会起任何作用，和值拷贝不一样的是，lambda不会将静态的或者是全局变量包含到闭包类中，因为这些变量在外部改变后，会影响lambda的行为，而值拷贝不一样，它拷贝的是某一时刻变量的值，此后这个值就被包含到lambda中并且不会因为外部变量的改变而改变


# 2 使用初始化捕获将对象移入闭包

# 3 使用 decltype 修饰 auto&& 类型的形参

# 4 优先使用 lambda 表达式
优先使用 lambda 表达式，而不是 std::bind；

-------------------  
 [End]()
{:.warning}  


# 附录
## A 参考文献
1. zhangyifei216. Effective Modern C++笔记汇总[EB/OL]. <https://blog.csdn.net/zhangyifei216/article/details/72868345>. 2017-06-05/2019-05-17.   
1. aboydfd. Effective-mordern-c++[EB/OL]. <https://www.aboydfd.com/search/>. 2016-01-01/2019-05-17.   
1. Scott Meyers.  Effective Modern C++[M]. 南京:东南大学出版社, 2018.    
1. [C++11的语法糖](https://imzlp.me/posts/2441/)      
