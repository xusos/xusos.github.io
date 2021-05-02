---
layout: article
title: 「Linux」centos修改系统时间的几种方法
date: 2020-04-21 22:56:25
categories:
tags:
- centos
- Linux
author: 未厅堂
key: Linux-centos-changetime-20200421
aside:
  toc: true
category: [linux, centos]
---


<span id='head'></span>

# 一、查看当前时区
```bash
date -R
```
date:不加参数可以直接看到当前日期时间

cal:不加参数可以直接看到本月月历
```bash
[root@v2-bsd ~]# date -R
Fri, 22 May 2020 23:38:00 +0800
[root@v2-bsd ~]# cal
      May 2020
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 #22 23
24 25 26 27 28 29 30
31
[root@v2-bsd ~]#
```
<!--more-->


#二. 修改设置时区
| 方法 1：
```bash
　　timedatectl set-timezone Asia/Shanghai
```
| 方法 2：
```bash
　　cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
```
| 方法 3：
```bash
tzselect
```
[返回顶部](#head)
{:.warning}