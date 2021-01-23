---
layout: article
title:  "「设计模式」 单例模式"
date:   2019-01-07 8:06:40 +0800
key: singleton-20190107
aside:
  toc: true
category: [software, software, design_pattern]
---

单例模式 和 MONOSTATE

单例模式——标准版





class CSingleton

{

private:

    CSingleton()   //构造函数是私有的

    { }

    static CSingleton *m_pInstance;

public:

    static CSingleton * GetInstance()

    {

        if(m_pInstance == NULL)  //判断是否第一次调用

            m_pInstance = new CSingleton();

        return m_pInstance;

    }

};

单例模式——线程安全版





CSingleton* GetInstance()

{

    lock();

    if (instance == NULL)

    {

       instance = new CSingleton();

    }

    unlock();

 

    return instance;

}

单例模式——线程安全高效版





CSingleton* GetInstance()

{

    if (instance == NULL)

    {

        lock();

        if (instance == NULL)

        {

            instance = new CSingleton();

        }

        unlock();

    }

 

    return instance;

}

 



单例模式——编译器安全版





//C++ 11版本之后的跨平台实现 (volatile)

std::atomic<Singleton*> Singleton::m_instance;

std::mutex Singleton::m_mutex;

 

Singleton* Singleton::getInstance() {

    Singleton* tmp = m_instance.load(std::memory_order_relaxed);

    std::atomic_thread_fence(std::memory_order_acquire);//获取内存fence

    if (tmp == nullptr) {

        std::lock_guard<std::mutex> lock(m_mutex);

        tmp = m_instance.load(std::memory_order_relaxed);

        if (tmp == nullptr) {

            tmp = new Singleton;

            std::atomic_thread_fence(std::memory_order_release);//释放内存fence

            m_instance.store(tmp, std::memory_order_relaxed);

        }

    }

    return tmp;

}

 





以上都是懒汉模式，还有饿汉模式
