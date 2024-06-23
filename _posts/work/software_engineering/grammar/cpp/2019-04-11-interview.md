---
layout: article
title:  "「C++」 入门"
date:   2019-04-11 08:39:40 +0800
key: cpp-question
aside:
  toc: true
category: [software, c++]
sidebar:
  nav: INTERVIEW
tags: Q&A
---
<span id='head'></span>  


| 编程基础 |  |  |  |
| --- | --- | --- | --- |
|  |  |  |  |

| C++ |  |  |  |
| --- | --- | --- | --- |
| [C C++ 的区别](#c_cpp) |  |  |  |
| [static](#static) | [对象内存分布](#object_memory) | [struct-class](#struct_class) | [虚函数](#virtual_func) |
| [深浅拷贝](#copy) | [菱形继承](#diamond) | [const](#const) | [字节对齐](#align) |
|  |  |  |  |

| 面向对象 |  |  |  |
| :--- | --- | --- | --- |
| [三大特性和七大原则](#oop37) |  |  |  |

| STL |  |  |  |
| --- | --- | --- | --- |
| [list](#list) | [vector](#vector) | [智能指针](#shared_ptr) | [map-set](#map_set) |


# 1 计算机基础


# 2 编程基础


# 3 C

# 4 C++
<span id="c_cpp"> </span>    

**C C++ 的区别**    
{:.warning}   
C 是面向过程的，C++ 却拥有面向对象的特性；C++ 包含更多的设计，把问题当作对象建模，以此实现过程控制并通过获取对象信息得到输出；而这部分过程控制就是由 C 实现的；当然， C++ 中的对 C 做了扩展，比如支持重载、内联；另一方面，C++ 自然也引入了面向对象的设计，包括类、继承、虚函数、模板；      



<span id="static"> </span>    

**static 关键字**    
{:.warning}  
>延长变量生命周期，函数和变量本地化，类的全局成员；    

**修饰变量**：只初始化一次；生命周期是整个程序的运行时期；全局静态变量只在本文件内可见`局部变量本身不就有作用域吗`{:.warning}`内存分配在哪`{:.warning}；    
**修饰函数**：只在当前文件可见；    
**修饰成员变量**：变量作为类的一部分（而不是对象的）；内存分配在数据区，而不是栈`两者有什么区别`{:.warning}；初始化只能在类外做，且只初始化一次；     
**修饰成员函数**：属于类所有（也就没有 this 指针），因此不能直接调用类的非静态成员，同样不能够被限定为 const，也不能声明为虚函数`为什么`{:.warning}；      

<span id="object_memory"> </span>    

**对象内存分布**    
{:.warning}  
[详见此处](https://www.jianshu.com/p/9fb37bb3094f)     
虚表在前 > 基类非静态成员 > 派生类非静态成员    


<span id="struct_class"> </span>   

**struct 和 class 区别**    
{:.warning}    
C 语言中，struct 是一种数据类型，只能定义数据成员，不能定义函数；    
C++ 中 struct 除了默认的继承和访问权限与 class 不同外，其他相同（class 默认是 private，struct 是 public）；    


<span id="virtual_func">   </span>   

**虚函数实现原理**    
{:.warning}  
[虚函数实现详见](https://blog.csdn.net/jiangnanyouzi/article/details/3720807)
- 使用虚表实现，子类虚表中使用自己的函数重写了父类的虚函数；    

<span id="copy"> </span>    

**深浅拷贝**    
{:.warning}  
- 所谓浅拷贝就是值拷贝，一般的默认拷贝构造函数都是浅拷贝；    
- 涉及到堆内存拷贝的是深拷贝，可通过自定义拷贝构造函数实现；    

<span id="diamond"> </span>      

**菱形继承**      
{:.warning}  
使用虚继承解决      
[详见](https://blog.csdn.net/tounaobun/article/details/8443228)

<span id="const"> </span>   

**const**   
{:.warning}  
>常量（包括对象），传参，返回值，成员函数；    

只读，[const](https://blog.csdn.net/Eric_Jo/article/details/4138548) 离谁近意味着谁就不能被修改了；        
- 可定义常量、修饰形参、函数返回值和函数；该保护作用可预防其他代码无意识地修改，从而**提高健壮性**；    
- **提高可读性**，比如函数的输入参数会用 const 修饰；   

注意：    
- 修饰指针，指向的内容不可更改（const \*）或者指针本身的指向不能修改(\* const)；    
- 修饰引用，引用的对象不可修改；    
- 修饰对象，只能调用该类的 const 成员函数，不能修改该类的任何成员；    
- 修饰成员函数，不能修改该类的任何成员，只能调用该类的 const 成员函数；    


<span id="align"> </span>   

**字节对齐**   
{:.warning}  
不同硬件平台对存储空间的处理不一样，为了避免存取操作的额外消耗，使用字节对齐；     
结构体数据间发生对齐，数据尾部发生对齐；    

# 5 面向对象

<span id="oop37"> </span>    

**面向对象三大特性和七大原则**    
{:.warning}      
三大特性：    
- 封装：改动功能时不影响模块以外的程序——解决了程序的可扩展性；     
- 继承：实现了多态以及代码重用（子类继承了父类的方法和属性），但是破坏了封装`为啥，是父类影响了子类？`{:.warning}；     
- 多态：即同一接口的多种不同的实现方式；    

七大原则：    
**开闭原则**：对扩展开放的，对修改封闭; (在不修改原程序的前提下去扩展功能）    
**单一职责原则**：类的职责要单一；    
**依赖倒置原则**：高层模块不应该依赖底层模块，两者都应该依赖其抽象；抽象不应该依赖其细节（细节应该依赖抽象）；要对抽象层编程，不能对具体类编程；    
**里氏替换原则**：调用基类对象的地方可以被子类对象替换；  
**接口隔离原则**：接口功能要单一；    
**合成复用原则**：多用组合和聚合，少用继承；   
**迪米特法则**：对象间引用越少越好，即不必直接通信的类之间用第三者进行交互；`什么情况下用`{:.warning}     

# 6 STL
<span id="list"> </span>    

**list**    
{:.warning}  
STL list 环状双向链表；插入删除是常数时间；    
基本操作：push_front、push_back、pop_front、pop_back、insert（该位置之后的元素依次后移）；    

<span id="vector"> </span>    

**vector**    
{:.warning}  
vector 是一种顺序表（一段连续线性空间），插入时，如果超出当前容量，则容量会扩充至两倍；    
操作复杂度：随机访问、尾插、尾删 O(1)，插入或者移除元素 O(n)；

**动态扩容**:[配置一块更大的空间、将原内容拷贝过去、释放原空间]，因此指向原数据的迭代器会失效；    
**会引起扩容的函数**：     
resize：改变有效空间的大小、改变默认值（当设定的 size 大于有效空间长度时，会引起扩容，此时默认值只作用于多开辟的那些空间）；     
reserve：改变的是可用空间大小；resize 会影响 capacity（变大），reserve 不影响 size；     
push_back：尾插，可能引起 vector 扩容；    
push_back、pop_back、erase、insert、clear、[begin()，end())；    

**引起迭代器失效的情况**：    
引发动态扩容后、从容器删除元素；    


<span id="shared_ptr"> </span>    

**智能指针**    
{:.warning}  
注意:    
- **多个智能指针**：不要让多个 shared_ptr（unique_ptr）同时获取原生指针；（因为智能指针析构时会导致多次释放该内存）；类似的，尽量不要把 this 指针交给智能指针管理，这样如果生成的对象又被智能指针管理，就会引发两次析构；    
这个问题可以通过智能指针拷贝、赋值实现，这样会引起计数器的更新；     
- 如果不是通过 new 得到的动态资源内存请**定义删除器**；    
比如用 `malloc` 时，可以将自定义删除器 `[](int* p) {free(p);}` 传递给 shared_ptr；    
- **尽量不要使用 `get()`**：根据开闭原则，既然指针交给了智能指针来管理，就不应该再被外界所获取；`get()` 接口最初是为了使得智能指针也能够适配原生指针使用的相关函数而设计，所以尽量不用，更要禁止使用 `get()` 返回的原生指针再去初始化其他智能指针或者释放；     
- **尽量使用 make_shared**，不要把原生指针暴露出来；    
- shared_ptr 线程不安全；    
- 避免循环引用，循环引用会导致引用计数器无法清零，造成无法释放；`什么意思`{:.warning}     

定义方式:    
1. 先动态开辟内存，然后用局部变量接受指针；再把指针用于初始化；   
暴露了原生指针，容易引发程序错误（其他地方对其 delete 或 用去初始化其他智能指针）；    
2. 直接在初始化参数中写 `new` 表达式；   
虽然原生指针匿名了，但发生了两次动态内存申请（匿名指针及 shared_ptr 本身）；   
3. 使用 `make_shared` 函数；（推荐）   
此时只申请一个足够大的内存，用来保存这个资源及其管理者；    

[实现](#shared_pt_cpp)    


<span id="map_set"> </span>     

**map 和 set**    
{:.warning}  
都是关联式容器，底层实现都是红黑树，map 和 set 提供的各种操作，都是间接调用红黑树的操作；   
区别：     
- map 是 key-value 格式的数据集合，set 是 key 集合；     
- 不允许修改 key：即 set 的迭代器是 const 的，而 map 可以修改 value，但不允许修改 key；    
原因是 map 和 set 是根据关键字排序来保证有序性的，如果允许修改 key，那么会引发 [删除该键——调节平衡——插入新键——调节平衡]，不仅效率低，而且会导致迭代器失效；     
- map 支持下标操作，set 不支持下标操作；且 map 下标操作会引发默认值的插入（没有默认值时，该操作会引发异常），因此慎用，const_map 不能用下标操作`真的`{:.warning}；如果只希望查找元素，用 `find`；   




-------------------  
[End](#head)
{:.warning}  



# 附录
## A 代码示例
<span id="shared_pt_cpp"> </span>   

**1. shared_ptr 实现**  
```cpp
#include <map>

class SharedPtr {
public:
    SharedPtr(int* ptr) {
        ptr_ = ptr;
        map_.insert(std::make_pair(ptr_, 1));                    
    }
    SharedPtr(const SharedPtr& rhx) {
        ptr_ = rhx.ptr_;
        map_[ptr_]++;                    
    }
    SharedPtr& operator=(const SharedPtr& rhx) {
        if (ptr_ == rhx.ptr_) {
            return *this;                    
        }
        if (--map_[ptr_] <= 0 && ptr_ != nullptr) {
            delete ptr_;
            ptr_ = nullptr;
            map_.erase(ptr_);                                            
        }
        ptr_ = rhx.ptr_;
        map_[ptr_]++;
        return *this;                            
    }
    int& operator*() {
        return *ptr_;
    }
    int* operator->() {
        return ptr_;            
    }
    ~SharedPtr() {
        if (--map_[ptr_] <= 0 && ptr_ != nullptr) {
            delete ptr_;
            ptr_ = nullptr;
            map_.erase(ptr_);                                            
        }
    }
    static std::map<int*, int> map_;
private:
    int* ptr_;        
};

std::map<int*, int> SharedPtr::map_;

class Test {
public:
    shared_ptr<Test> pre;
    shared_ptr<Test> next;
    ~Test() {
        cout << "~Test()" << this << endl;
    }
    int data;
};

void func() {
    shared_ptr<Test> sp1(new Test);
    shared_ptr<Test> sp2(new Test);
    sp1->next = sp2;
    sp2->pre = sp1;
}
```
