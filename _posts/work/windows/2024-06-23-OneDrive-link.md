---
layout: article
title: 「OneDrive」OneDrive同步其他目录的方法
date: 2024-06-23 23:00:25
categories: Windows
tags: 
- OneDrive
- Windows
author: 未厅堂
key: OneDrive-syn-other-directory-20240623
aside:
  toc: true
category: [onedrive, windows]
---
<span id='head'></span>

OneDrive默认只能同步以下几个目录，无法添加其他同步目录
![](https://gitee.com/xusoso/image/raw/master/image/onedeive-syn-dire.png)


<!--more-->

## 同步其他目录的方法如下:
如果想同步其他目录具体方法如下：

例如你的OneDrive目录是:```C:\Users\MILO\OneDrive```
你想同步的目录是:```D:\demo```
Win+R输入cmd打开命令行，输入：
```mklink /d "C:\Users\MILO\OneDrive\demo(这里输入你想在OneDrive创建的目录)" "D:\demo"```
这样在``` C:\Users\MILO\OneDrive ```目录下就会有一个```demo```的目录，这个目录是创建的```D:\demo```链接
![](https://gitee.com/xusoso/image/raw/master/image/onedrive-add-dire.png)

使用``` bashmklink /?```查看mklink使用帮助：
``` bash
MKLINK [[/D] | [/H] | [/J]] Link Target
        /D        创建目录符号链接。默认为文件符号链接。
        /H        创建硬链接而非符号链接。
        /J        创建目录联接。
        Link      指定新的符号链接名称。
        Target    指定新链接引用的路径(相对或绝对)。
```


## 如何删除创建的链接目录

如果想取消```D:\demo```的同步，只需要在 ```C:\Users\MILO\OneDrive\``` 删除这个```demo```目录。
或者输入以下命令？：
```rmdir   C:\Users\MILO\OneDrive\demo```

[返回顶部](#head)
{:.warning}