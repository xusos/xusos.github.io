---
layout: article
title:  "「设计模式」 概览"
date:   2019-01-07 8:00:40 +0800
key: design-pattern-foundation-20190107
aside:
  toc: true
tags: 资源
category: [software, software, design_pattern]
---

## 一、 学习目标
1. **理解松耦合设计思想**  
2. **掌握面向对象设计原则**    
3. **掌握重构技巧**  
4. **掌握核心设计模式**  

## 二、 参考书
<center class="half">
  <img src="/assets/images/software_engineering/design_pattern/design_pattern_gof.jpeg" height="220"/>&emsp;<img src="/assets/images/software_engineering/design_pattern/design_pattern_head_first.png" height="220"/>&emsp;<img src="/assets/images/software_engineering/design_pattern/design_pattern_dahua.jpg" height="220"/>&emsp;<img src="/assets/images/software_engineering/design_pattern/design_pattern_agile.jpg" height="220"/>
</center>

电子书：<https://pan.baidu.com/s/17XU6l78HSoRwQ40lHGKx9Q> 提取码: 8354（如有侵权，立即删除）  
1. **《Head First设计模式》**  

2. **《设计模式:可复用面向对象软件的基础》**  
又叫《GOF设计模式》，四人组书  

3. **《大话设计模式》**   

4. **《敏捷软件开发：原则模式和实践》**  

5. **《精通 python 设计模式》**   
`Sakis Kasampalls 著. 夏永锋 译. Python 设计模式[M]. 北京:人民邮电出版社, 2016.`  

6. **《Python 设计模式》**   
`Wessel Badenhorst 著. 蒲成 译. Python 设计模式[M]. 北京:清华大学出版社, 2018.`  

## 四、 设计模式概览
**创建型**：将对象的部分创建工作延迟到子类或者其他对象，从而应对需求变化为对象创建时具体类型实现带来的冲击；  
**结构型**：通过继承或者组合获取更灵活的结构，从而应对需求变化为对象的结构带来的冲击；  
**行为型**：通过继承或组合来划分类与对象间的职责，从而应对需求变化为多个交互对象带来的冲击；  

| 类型 | 模式 |  
| --- | --- |  
| 创建型 | SINGLETON [单例]() ABSTRACT FACTORY [抽象工厂]() FACTORY METHOD [工厂方法]() PROTOTYPE [原型]() BUILDER [构建]() |  
| 结构型 | CONPOSITE [组合]() ADAPTER [适配器]() FACADE [外观]() DECORATOR [装饰者]() PROXY [代理]() BRIDGE [桥接]() FLYWEIGHT [享元]() |  
| 行为型 | STRATEGY [策略]() STATE [状态]() OBSERVER [观察者]() TEMPLETE METHOD [模板方法]() CONNAND [命令]() VISITOR [访问者]()  CHAIN OF RESPONSIBILITY [责任链]()  INTERPRETER [解释器]()  MEMENTO [备忘录]()  ITERATOR [迭代器]()  MEDIATOR [中介者]()  |    
| 备注 | 已淘汰的方法：  命令，C++中的object；访问者，使用条件苛刻；责任链，被一些数据结构所替代；解释器，用的不多了；备忘录，被序列化的东西替代了；迭代器，被泛型编程替代（模板编程）；中介者； |  

学习顺序推荐（按重要性）:    
1. 观察者，模板方法；  
2. 策略，状态；单例，抽象工厂，工厂方法；组合，适配器，外观；  
3. 命令，访问者；  
4. 构建；  
5. 原型；装饰者，代理，桥接，享元；  
6. 已淘汰的方法；  


*注：所有的设计模式都是不完美的，他们也因此有很多派生的设计模式，课堂上，我们只讲解标准的版本，派生版或者设计模式本身的缺陷，我们不做过多讨论，重点掌握该设计模式解决的问题；*  
