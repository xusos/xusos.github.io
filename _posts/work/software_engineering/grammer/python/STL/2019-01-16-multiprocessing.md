---
layout: article
title:  "「Python」 multiprocessing：像线程一样管理进程"
date:   2019-01-16 10:07:40 +0800
key: py-multiprocessing-20190116
aside:
  toc: true
category: [software, python, pystl]
---
<span id='head'></span>  

## 什么是 Multiprocessing
## 添加进程 Process
## 存储进程输出 Queue
## 效率对比 threading & multiprocessing
## 进程池 Pool
[map 示例](#map_code)，[apply_async 示例](#apply_async_code)，[map 测试](#map_test)  
## 共享内存 shared memory
## 进程锁 Lock


-------------------  
[End](#head)
{:.warning}  



# 附录
## A 示例

<span id="map_code">**1. map 示例**</span>  

原始代码：  

```python
def worker(id):
    return id**2

def Demo(length):
    for i in range(length):
        worker(i)
```

进程池代码：  

```python
def poolDemo(length):
    p = Pool(processes=4) # processes 默认是 cpu 核的个数，也是并行能力的上线；在上线范围内，核数越多，速度越快
    res = p.map(worker, list(range(length))) # 取代 for 循环，res 是返回值
    p.close()
    p.join()
    return res

def main():
  res = poolDemo(10)
  print(res)
```
`close join 这两句到底是什么意思，可有可无？`{:.warning}

*注：测试时建议用 IO 来测试；数学运算要达到较高数量级后才能体现多进程的优势；*  

<span id="apply_async_code">**1. apply_async 示例**</span>  

原始代码：  

```python
def worker(id):
    return id**2

def Demo(length):
    for i in range(length):
        worker(i)
```

进程池代码：  

```python
def poolDemo(length):
    p = Pool(processes=4) # processes 默认是 cpu 核的个数，也是并行能力的上线；在上线范围内，核数越多，速度越快
    multi_res =  [p.apply_async(worker, (i,)) for i in range(length)] # 取代 for 循环，res 是返回值
    p.close()
    p.join()
    return [res.get() for res in multi_res]

def main():
  res = poolDemo(10)
  print(res)
```

## B 实验

<span id="map_test">**1. map IO 测试**</span>  

使用 map 多进程进行文件读写测试：  
`大小为 40M  的 txt 文件， 20000 行数据；`  
**实验结论**：  
- 读操作，并行越多越好；   
- 写操作，并行路数在 80 左右最好；  
- 写操作时，无论是否使用并行，当进行覆盖写文件时，耗时变长；尤其是这个写覆盖操作会让并行操作失效；  

**实验结果**：  

| 循环读取次数（次） |	串行执行耗时（秒）	|	多进程（秒） | 平均单次耗时（秒） |	提升（倍） |
|        ---      |        ---    |     ---   |   ---   |  --- |
| 1              |  0.158          |    0.216    |      |  |
| 5              |  0.798          |    0.413    |     0.082  | 	1.9      |
| 10             |  1.589          |    0.613    |     0.061  |	2.56     |
| 15             |  2.39           |    1.02     |     0.068  |	2.34     |
| 20             |  3.12           |    1.217    |     0.06 |	2.56     |
| 40             |  6.472          |    2.22s    |     0.055  |	2.9      |
| 80             |  12             |    3.935    |     0.049  |	3.5      |
| 160            |  25.38          |    7.33s    |     0.045  |	3.46     |

| 循环读&写次数（次） |	串行执行耗时（秒）	|	多进程（秒） | 平均单次耗时（秒） |	提升（倍） | **写覆盖**耗时（秒） |
|        ---      |        ---    |     ---   |   ---   |  --- | --- |
| 1       | 0.185       | 0.212	|			|       |       0.195  |
| 5       | 0.921       | 0.525	| 0.10   	| 1.7	 |      0.96   |
| 10      | 1.85        | 0.81		| 0.081     | 2.3    |      2      |
| 15      | 2.7        	| 1.1		| 0.073     | 2.45   |      3      |
| 20      | 3.72      	| 1.417	| 0.07  	| 2.62   |      4.6    |
| 40      | 7.376       | 2.53		| 0.063     | 2.9    |      10     |
| 80      | 14.9       	| 4.74		| 0.059     | 3.1    |      19     |
| 160     | 31.0        | 19	| 0.118     | 1.6    |      44     |



## C 参考资料
1. Doug Hellmann 著, 苏金国, et al 译. Python3 标准库[M]. 北京:机械工业出版社, 2018.
