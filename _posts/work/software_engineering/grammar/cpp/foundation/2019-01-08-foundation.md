---
layout: article
title:  "「C++」 C++ 概览"
date:   2019-01-08 13:06:40 +0800
key: cpp-foundation-20190108
aside:
  toc: true
tags: 资源
category: [software, c++, cpp_foundation]
---
<span id='head'></span>

<!--more-->





## 一、 介绍

## 二、 建议
*摘自「讨论一下《C++ 编程思想》这本书」[^1]讨论帖子中的一段，个人很喜欢；*  

2. 看《Thinking In C++》，不要看《C++变成死相》；  
3. 看《The C++ Programming Language》和《Inside The C++ Object Model》,不要因为他们很难而我们自己是初学者所以就不看；  
5. 不要放过任何一个看上去很简单的小编程问题——他们往往并不那么简单，或者可以引伸出很多知识点；  
7. 学class并不难，template、STL、generic programming也不过如此——难的是长期坚持实践和不遗余力的博览群书；    
20. 请阅读《The Standard C++ Bible》(中文版：标准C++宝典)，掌握C++标准；    
23. 请看《Effective C++》和《More Effective C++》以及《Exceptional C++》；    
30. 读完了《Inside The C++ Object Model》以后再来认定自己是不是已经学会了C++；  
32. 请留意下列书籍：《C++面向对象高效编程（C++ Effective Object-Oriented Software Construction）》《面向对象软件构造(Object-Oriented Software Construction)》《设计模式（Design Patterns）》《The Art of Computer Programming》；   
36. 请重视C++中的异常处理技术，并将其切实的运用到自己的程序中；   
44. 决不要因为程序“很小”就不遵循某些你不熟练的规则——好习惯是培养出来的，而不是一次记住的；  
45. 每学到一个C++难点的时候，尝试着对别人讲解这个知识点并让他理解——你能讲清楚才说明你真的理解了；  

[初学 c++ 建议](#advice)    



## 附录
### A 基础
<span id="advice">**1. 初学 C++ 建议**</span>  
1. 把 C++ 当成一门新的语言学习；  
4. 不要被 VC、BCB、BC、MC、TC 等词汇所迷惑——他们都是集成开发环境，而我们要学的是一门语言；  
6. 会用 Visual C++，并不说明你会C++；  
9. 看 Visual C++ 的书，是学不了C++语言的；  
27. 不要因为 C 和 C++ 中有一些语法和关键字看上去相同，就认为它们的意义和作用完全一样；
39. C++ 语言和 C++ 的集成开发环境要同时学习和掌握；  
42. 当你写 C++ 程序写到一半却发现自己用的方法很拙劣时，请不要马上停手；请尽快将余下的部分粗略的完成以保证这个设计的完整性，然后分析自己的错误并重新设计和编写（参见43）；  
43. 别心急，设计 C++ 的 class 确实不容易；自己程序中的 class 和自己的 class 设计水平是在不断的编程实践中完善和发展的；  
47. 请不断的对自己写的程序提出更高的要求,哪怕你的程序版本号会变成 Version 100.XX；  
48. 保存好你写过的所有的程序——那是你最好的积累之一；  
50. 请热爱 C++!  

### B 推荐书籍

<center class="half">
  <img src="/assets/images/programming/cpp/books/thinking_in_cpp.jpeg" height="200"/>&emsp;<img src="/assets/images/programming/cpp/books/using_stl.jpeg" height="200"/>&emsp;<img src="/assets/images/programming/cpp/books/effective_modern_cpp.jpg" height="200"/>&emsp;<img src="/assets/images/programming/cpp/books/cpp_optimization_cn.jpg" height="200"/>&emsp;<img src="/assets/images/programming/cpp/books/cpp_optimization_en.jpg" height="200"/>&emsp;<img src="/assets/images/programming/cpp/books/boost.jpg" height="200"/>&emsp;<img src="/assets/images/programming/cpp/books/annotations.jpg" height="200"/>&emsp;<img src="/assets/images/programming/cpp/books/qt.jpg" height="200"/>&emsp;<img src="/assets/images/programming/cpp/books/think_like_cs.jpg" height="200"/>&emsp;<img src="/assets/images/programming/cpp/books/open_ds.jpg" height="200"/>&emsp;<img src="/assets/images/programming/cpp/books/rook.jpg" height="200"/>&emsp;<img src="/assets/images/programming/cpp/books/gcc.jpg" height="200"/>&emsp;
</center>

1. **《Thinking in C++》**  
《C++ 编程思想》  
`Bruce Eckel, Chuck Allison 著. 刘宗田, et al. 译.  C++ 编程思想[M]. 北京:机械工业出版社, 2016.`  
翻译生硬，逻辑不清晰，至少模板章节很烂；  

1. **《Using the C++ Standard Template Libraries》**  
《C++ 标准模板库编程实战》  
`Ivor Horton 著, 郭小虎. 程聪. 译.  C++ 标准模板库编程实战[M]. 北京:清华大学出版社, 2017.`  

1. **《Effective Modern C++》**  
《Effective Modern C++》  
`Scott Meyers.  Effective Modern C++[M]. 南京:东南大学出版社, 2018.`  

1. **《C++ Footprint and Performance Optimization》**  
《C++ 高效编程: 内存与性能优化》  
`R.Alexande 著, 王峰. 史金虎. 译.  C++ 高效编程: 内存与性能优化[M]. 北京:中国电力出版社, 2003.`  


1. **《The Boost C++ Libraries》**  
《Boost C++ 类库》，[官网](https://www.boost.org/)，[库](https://theboostcpplibraries.com/) ，[Blog](https://www.ctolib.com/docs/sfile/the-boost-cpp-libraries/index.html)      
`Boris Schäling.  The Boost C++ Libraries[M]. XML Press, 2011.`    
提供多个库，包括多线程、容器、字符串和文本处理、迭代器、线性代数、伪随机数产生、元程序设计模板、并发程序设计、数据结构、图像处理、正则表达式和单元测试；可以轻松地管理内存、处理字符串；      


1. **《C++ Annotations》**  
《C++ 注释》，[doc](http://www.icce.rug.nl/documents/cplusplus/) ，[latest](https://fbb-git.gitlab.io/cppannotations/)，[Blog](https://www.ctolib.com/docs/sfile/the-boost-cpp-libraries/index.html)      
`Frank B. Brokken.  C++ Annotations[EB/OL]. -, 2013.`    
全面的入门教程；    

1. **《An Introduction to Design Patterns in C++ with Qt》**  
《C++ Qt 设计模式》, [PDF](http://ptgmedia.pearsoncmg.com/images/9780131879058/downloads/0131879057_Ezust_book.pdf)-1, [PDF](ftp://ftp.micronet-rostov.ru/linux-support/books/programming/C++/[Prentice%20Hall]%20-%20Introduction.to.Design.Patterns.in.CPP.with.Qt.2nd.Edition.pdf)-2           
`Alan Ezust, Paul Ezust 著, 闫锋欣 等译. C++ Qt 设计模式[M]. 北京:电子工业出版社, 2012.`    
从 C++ 基础到设计模式；对函数、继承和多态的讲解尤为优秀；        

1. **《How to Think Like a Computer Scientist: C++》**  
《像计算机科学家一样思考：C++》, [PDF](http://www.inf.ufpr.br/cursos/ci067/Docs/thinkCScpp.pdf)-1, [PDF](http://www.greenteapress.com/thinkcpp/thinkCScpp.pdf)-1.1.0, [Github](https://github.com/AllenDowney/ThinkCPP)               
`Allen B. Downey.  像计算机科学家一样思考：C++[M]. CreateSpace Independent Publishing Platform, 2012.`    
理论到实践的过度（基础）；   

1. **《[Open Data Structures](http://opendatastructures.org/) (in C++)》**  
《开放数据结构（C++ 版）》, [HTML](https://opendatastructures.org/ods-cpp/), [PDF](https://lecture.ecc.u-tokyo.ac.jp/~ktanaka/mis2-2017/ods-cpp-mis2.pdf)-2017, [PDF](https://opendatastructures.org/versions/edition-0.1e/ods-cpp.pdf)          
`Pat Morin.  开放数据结构（C++ 版）[M]. AU Press, 2013.`    
理论到实践的过度（基础）；        


1. **《The Rook’s Guide to C++》**  
《Rook 的 C++ 指南》, [PDF](https://rooksguide.files.wordpress.com/2013/11/rooks-guide-to-c-proof.pdf)-2013, []      
`Jeremy Hansen. The Rook’s Guide to C++[M]. lulu.com, 2013.`    
集中处理预处理器、高等代数、文件输入输出、指针、动态数据、类和抽象、分离编译和标准模板库等问题；      
本书大部分都是由 25 位 Norwich 大学的学生于一个黑客马拉松周末写成；    

1. **《An Introduction to GCC》**  
《GCC 简介》, [HTML](http://lampwww.epfl.ch/~fsalvi/docs/gcc/www.network-theory.co.uk/docs/gccintro/index.html), [PDF](https://tfetimes.com/wp-content/uploads/2015/09/An_Introduction_to_GCC-Brian_Gough.pdf)-En, [PDF](http://www.leegoogol.com/documents/An_Introduction_to_GCC_%E4%B8%AD%E6%96%87.pdf)-中文         
`Brian Gough.  GCC 简介[M]. Network Theory Ltd, 2004.`    
介绍了 GNU：gcc、g++，解释了如何单独使用编译器；    


### C 推荐资料
1. [Optimizing software in C++](https://www.agner.org/optimize/optimizing_cpp.pdf)    
1. [Optimization in C & C++](http://formation.in2p3.fr/Info12/20120207-binet-opt-cxx.pdf)     
1. [C++ Programming Language](https://www.geeksforgeeks.org/c-plus-plus/)     
1. [PROGRAMMING WITH C++](http://212.112.125.39/olymp/news/programmingbook.pdf)    

### D 参考文献
[^1]: 我心不死. 讨论一下《C++ 编程思想》这本书[EB/OL]. <https://bbs.csdn.net/topics/20147884>. -/2019-01-21.  
