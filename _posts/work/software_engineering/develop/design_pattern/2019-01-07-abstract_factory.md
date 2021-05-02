---
layout: article
title:  "「设计模式」 抽象工厂"
date:   2019-01-07 8:06:40 +0800
key: abstract-factory-20190107
aside:
  toc: true
category: [software, software, design_pattern]
---




抽象工厂



//单核   

class SingleCore    

{   

public:   

    virtual void Show() = 0;

};   

class SingleCoreA: public SingleCore     

{   

public:   

    void Show() { cout<<"Single Core A"<<endl; }   

};   

class SingleCoreB :public SingleCore   

{   

public:   

    void Show() { cout<<"Single Core B"<<endl; }   

};   

//多核   

class MultiCore     

{   

public:   

    virtual void Show() = 0;

};   

class MultiCoreA : public MultiCore     

{   

public:   

    void Show() { cout<<"Multi Core A"<<endl; }   



};   

class MultiCoreB : public MultiCore     

{   

public:   

    void Show() { cout<<"Multi Core B"<<endl; }   

};   

//工厂   

class CoreFactory     

{   

public:   

    virtual SingleCore* CreateSingleCore() = 0;

    virtual MultiCore* CreateMultiCore() = 0;

};   

//工厂A，专门用来生产A型号的处理器   

class FactoryA :public CoreFactory   

{   

public:   

    SingleCore* CreateSingleCore() { return new SingleCoreA(); }   

    MultiCore* CreateMultiCore() { return new MultiCoreA(); }   

};   

//工厂B，专门用来生产B型号的处理器   

class FactoryB : public CoreFactory   

{   

public:   

    SingleCore* CreateSingleCore() { return new SingleCoreB(); }   

    MultiCore* CreateMultiCore() { return new MultiCoreB(); }   

};  

简单工厂模式和模板方法的区别？
