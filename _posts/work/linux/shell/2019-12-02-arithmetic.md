---
layout: article
title:  "「Shell」 四则元算"
date:   2019-12-02 18:16:40 +0800
key: shell-arithmetic-20191202
aside:
  toc: true
category: [school, linux, Shell]
sidebar:
  nav: Linux
---
<span id="head"></span>

<!--more-->

# 1 四则运算

# 2 常见错误
> value too great for base (error token is "09")    

原因：用字符串进行四则运算，但是字符串中有 `0` 开头的数，导致该数字被解析成 8 进制；数字超过 8，所以报不合理；    
解决：在变量前用 `10#` 修饰，强制转成 10 进制即可；    


-------------------  
[End](#head)
{:.warning}  


# 附录
## A 参考资料
1. [linux shell 字符串操作（长度，查找，替换）详解](https://www.cnblogs.com/chengmo/archive/2010/10/02/1841355.html)    
