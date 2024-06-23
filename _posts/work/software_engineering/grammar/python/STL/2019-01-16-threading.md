---
layout: article
title:  "「Python」 threading：进程中管理并发操作"
date:   2019-01-16 10:07:40 +0800
key: py-threading-20190116
aside:
  toc: true
category: [software, python, pystl]
---
<span id='head'></span>  

> threading 基于 _thread 模块构建了更高级别的**线程**接口，；  
源码：<https://hg.python.org/cpython/file/3.5/Lib/threading.py>  

## API

| [active_count](#active_count) | [current_thread](#current_thread) | [get_ident](#get_ident) | [enumerate](#enumerate) |   
| --- | --- | --- | --- |    
| [main_thread](#main_thread) | [settrace(func)](#settrace)  | [setprofile(func)](#setprofile)  | [stack_size([size])](#stack_size)  |  

常量：[TIMEOUT_MAX](#TIMEOUT_MAX)  

## 一、 Hello World
[示例](#hellow_world)  
1. threading.Thread(target=func, args) 创建线程；  
2. t.start() 启动线程；  
3. 等待所有线程运行完毕
  - 设置为守护进程： setDaemon(True)
  - 进程阻塞： join()

测试发现，多线程程序反而更慢；原因是因为“全局解释锁（GIL）”，每条指令执行前都需要获取这把锁；而多线程需要上下文切换及获取和释放锁，故而没能起到多线程的作用，且托慢了程序；  

## Thread 对象

## 确定当前线程

## 守护与非守护线程

## 枚举所有线程

## 派生线程

## 定时器线程

## 线程间传送信号

## 控制资源访问

## 同步线程

## 限制资源的并发访问

## 线程特定的数据


-------------------  
[End](#head)
{:.warning}  



# 附录
## A API
<span id="active_count">**1. active_count()**</span>  
返回当前处于活跃状态的 Thread 对象的个数；返回的数目等于 enumerate() 返回的列表的长度；  

<span id="current_thread">**2. current_thread()**</span>  
返回当前的 Thread 对象，对应于调用者控制的线程；如果调用者控制的线程不是通过 threading 模块创建的，则返回一个只有有限功能的虚假线程对象；  

<span id="get_ident">**3. get_ident()**</span>  
返回当前线程的'线程标识符'；它是一个非零的整数；用于索引线程特定数据的字典；当一个线程退出另外一个线程创建时，线程的ID可以重用；  

<span id="enumerate">**4. enumerate()**</span>  
返回当前活跃的的 Thread 对象的列表；该列表包括守护线程、由 current_thread() 创建的虚假线程对象和主线程；它不包括已终止的线程和尚未开始的线程；  

<span id="main_thread">**5. main_thread()**</span>  
返回主 Thread 对象；在正常情况下，主线程是从 Python 解释器中启动的线程；  

<span id="settrace">**6. settrace(func)**</span>  
为所有从 threading 模块启动的线程设置一个跟踪函数；在每个线程的 run() 方法调用之前，func 将传递给 sys.settrace()；  

<span id="setprofile">**7. setprofile(func)**</span>  
为所有从 threading 模块启动的线程设置一个 profile 函数；这个 profile 函数将在每个线程的 run() 方法被调用之前传递给 sys.setprofile；  

<span id="stack_size">**8. stack_size([size])**</span>  
返回创建新的线程时该线程使用的栈的大小；可选的size参数指定用于随后创建的线程的堆栈大小，并且必须为0（使用平台或已配置的默认值）或至少为32,768（32 KiB）的正整数值；如果未指定 size，则使用0；如果不支持更改线程堆栈大小，则会引发 RuntimeError；如果指定的栈的大小不合法，则引发一个 ValueError 且栈的大小不会改变；32 KiB 是当前支持的最小堆栈大小值，以保证解释器本身有足够的堆栈空间。请注意，一些平台可能对堆栈大小的值有特殊限制，例如要求最小堆栈大小 > 32 KiB 或需要分配系统内存页大小的倍数 - 有关更多信息，请参阅平台文档（4 KiB 页是常见的；使用 4096 的倍数作为堆栈大小是在没有更具体信息的情况下的建议方法）；可用的平台：Windows、 带有POSIX线程的系统；  

<span id="TIMEOUT_MAX">**9. TIMEOUT_MAX**</span>  
这个 timeout 参数表示阻塞函数 (Lock.acquire(), RLock.acquire(), Condition.wait(), 等)所允许等待的最长时限；指定超过此值的超时将引发 OverflowError；  

## B 示例
<span id="hellow_world">**1. threading（hellow world）示例**</span>  

原始代码：  

```python
def worker(id):
    print(id**2)

def Demo(length):
  for i in range(length):
    worker(i)
```

threading 多线程实现：  

```python
def threadDemo(length):
    threads = []
    for i in range(length):
        t = threading.Thread(target=worker, args=(i,))
        threads.append(t)
        t.start()
    return threads

def main():
  threads = threadDemo(1000)

   # 等待所有线程执行完成
  for t in threads:
    t.setDaemon(True)
    t.join()
```

## C 参考资料
1. Doug Hellmann 著, 苏金国, et al 译. Python3 标准库[M]. 北京:机械工业出版社, 2018.
