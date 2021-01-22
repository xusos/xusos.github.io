---
layout: article
title:  "「Python」 数据存储和解析"
date:   2019-01-28 10:07:40 +0800
key: data-persistence-20190128
aside:
  toc: true
category: [software, python, pystl]
---
<span id='head'></span>  

> 数据的存储和使用包括两方面：数据在内存中的表示及格式间的转换，和数据存储区的处理；    
Python 3.5.6 官方文档：<https://docs.python.org/3.5/library/persistence.html>  

## 一、 数据存储和解析简介
**1. 序列化**  
serializing，将数据转换为一种可传输或可存储的格式；  
这些功能集成在 [pickle](/ai/python/pythonstl/2019/01/28/pickle.html) 和 [marshal](/ai/python/pythonstl/2019/01/28/marshal.html) 中；其中，pickle 更为常用，因为他可以和存储序列化数据的库（如 shelve）集成；而对于 web 的应用，json 更为常用，因为他可以和 web 服务存储工具很好的集成在一块；    
**2. 存储数据**  
- **不需要索引**的情况下，直接存储即可；  
- 需要使用**键值索引**的，常用 [DBM](/ai/python/pythonstl/2019/01/28/dbm.html) 来处理；
  - 最简单的 DBM 变形就是 [shelve](/ai/python/pythonstl/2019/01/28/shelve.html) ；
  单独使用 DBM 的缺点：其键和值必须是字符串，且在数据库中访问值时不会自动重新创建对象；    
  shelve 的缺点：无法指定使用那种 DBM 格式；    
  - web 应用中会使用 json 和 DBM 组合；  
- 处理**比键值更复杂**的数据库 [sqlite3](/ai/python/pythonstl/2019/01/28/sqlite3.html)  
所有的访问都在同一个进程中，所以不存在网络通信延迟； sqlite3 很紧凑，所以很适合桌面应用或 web 应用中；  

**3. 解析数据**    
- xml 数据读写；  
- csv 数据读写；  


-------------------  
[End](#head)
{:.warning}  



# 附录
## A API


## B 示例
<span id="hellow_world">**1. hellow world**</span>  


```python

```

## C 参考资料
1. Doug Hellmann 著, 苏金国, et al 译. Python3 标准库[M]. 北京:机械工业出版社, 2018.
