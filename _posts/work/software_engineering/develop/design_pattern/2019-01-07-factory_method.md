---
layout: article
title:  "「设计模式」 工厂方法"
date:   2019-01-07 8:06:40 +0800
key: factory-method-20190107
aside:
  toc: true
category: [software, software, design_pattern]
---

## 一、 UML 图
**1. 简单工厂**  
[C++ 示例](#simple_factory_cpp)    
**2. 工厂方法**  
[C++ 示例](#factory_method_cpp)  

## 二、 Q & A
:o: **1. 简单工厂和工厂方法的区别**  

:o: **2. 简单工厂模式和模板方法的区别**  

-------------------  
 End
{:.warning}  


## 附录

### A 代码示例
<span id="simple_factory_cpp">**1. 简单工厂 C++ 代码示例**</span>  

```python
## 代码
enum CTYPE {COREA, COREB};    
class SingleCore   
{   
public:   
    virtual void Show() = 0;
};   

//单核A   
class SingleCoreA: public SingleCore   
{   
public:   
    void Show() { cout<<"SingleCore A"<<endl; }   
};   

//单核B   
class SingleCoreB: public SingleCore   
{   
public:   
    void Show() { cout<<"SingleCore B"<<endl; }   
};   

//唯一的工厂，可以生产两种型号的处理器核，在内部判断   
class Factory   
{   
public:    
    SingleCore* CreateSingleCore(enum CTYPE ctype)   
    {   
        if(ctype == COREA) //工厂内部判断   
            return new SingleCoreA(); //生产核A   
        else if(ctype == COREB)   
            return new SingleCoreB(); //生产核B   
        else   
            return NULL;   
    }   
};   
```

<span id="factory_method_cpp">**2. 工厂方法 C++ 代码示例**</span>  

```python
class SingleCore   
{   
public:   
    virtual void Show() = 0;
};   

//单核A   
class SingleCoreA: public SingleCore   
{   
public:   
    void Show() { cout<<"SingleCore A"<<endl; }   
};   

//单核B   
class SingleCoreB: public SingleCore   
{   
public:   
    void Show() { cout<<"SingleCore B"<<endl; }   
};   

class Factory   
{   
public:   
    virtual SingleCore* CreateSingleCore() = 0;
};   

//生产A核的工厂   
class FactoryA: public Factory   
{   
public:   
    SingleCoreA* CreateSingleCore() { return new SingleCoreA; }   
};   

//生产B核的工厂   
class FactoryB: public Factory   
{   
public:   
    SingleCoreB* CreateSingleCore() { return new SingleCoreB; }   
};   
```
