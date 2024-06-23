---
layout: article
title: 「Mac」苹果(Mac)bootcamp程序会篡改用户分区表，隐藏D盘恢复方法。
date: 2024-05-31 21:02:48
categories: 技术
tags:
- Mac
- bootcamp
author: 未厅堂
key: mac-bootcamp-20240531
aside:
  toc: true
category: [mac, bootcamp]
---
<span id='head'></span>


### 安装bootcamp隐藏硬盘恢复方法

> 之所以每次开机D盘都消失，是因为它被bootcamp默认隐藏了(类似EFI分区那种)，
> 分配盘符只能暂时解决，重启会再次隐藏，所以得彻底解除D盘的隐藏属性。
---
恢复步骤如下：
<!--more-->

1、Win-R打开命令行，运行DISKPART程序

2、list volume，会看到D分区已被隐藏

3、select volume x(x为你的D盘卷号)

4、attributes volume clear hidden，清除隐藏属性

5、搞定，D盘又乖乖的躺那了

---
[返回顶部](#head)
{:.warning}