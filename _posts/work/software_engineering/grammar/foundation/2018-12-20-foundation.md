---
layout: article
title:  "「编程」 工程代码基础"
date:   2018-12-20 19:06:40 +0800
key: programing-review-20181217
aside:
  toc: true
category: [software, g_foundation]
---
参考：AI 研习社——自动驾驶视角下的工程代码基础

### 设计模式的作用
是不是让你的代码更精简；  

:o: json 合法性检测  

:o: 如何设计一个迷宫问题（开放性问题）  
省略了几乎所有东西，考验的是你的架构/设计能力；  
- 使用什么工具   
- 设计什么内容  
有限时间，简要说就好  
**自底向上**  
1. 基础 API  
键盘输入；鼠标输入；像素点显示颜色  
2. 组合  
Button（事件）；Canvas（画布显示像素）；Widget（一个界面）；Form；…  
3. Signal、enent  
接收触发事件  
**自定向下**  
CharacterBase  
Map  
BattleSystem  
GameMode  
Attached System  

:o: 值得一读或一做的项目  
学生和工作者最大的区别就是，工作后的人会去思考代码；  
每写一段代码，都去思考，这么些是不是最好的；
Flask 的源码；  能看懂，就是中级  
Python 的解释器；  自己写解释器，就是高级  
- google chrome （C++）；  C++ 设计卡可了，就去看他们的代码，获取思路  
主要的 Chromium 项目位于 <https://www.chromium.org/>  
源代码:<https://chromium.googlesource.com/>  可通过 <https://cs.chromium.org/> 进行搜索  
可以在 <https://www.chromium.org/developers> 找到有关贡献的说明  
oj 刷完再来面试，否则就是浪费面试  
笔试主要是算法和数学；  


> momenta c++ 写引擎，python 做接口；  
实习生： 75 小时，免费工作，一日三餐，弹性工作  
自己开发了一套仿真系统：图像引擎，动力学等；部分用 unreal 搭建的；  
主体系统用 C++ 开发，接口用 python 提供，效率 C++ 好些；  

深度学习都爆炸了；
用 C++ 的话，不要调包，深入模型，手写框架；
