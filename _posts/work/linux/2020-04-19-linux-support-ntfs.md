---
layout: article
title: 「Linux」解决Linux无法读写NTFS分区
date: 2020-04-19 00:07:55
categories: 技术
tags:
- ntfs
- Linux
- centos
author: 未厅堂
key: Linux-ntfs-20200419
aside:
  toc: true
category: [linux]
---

<span id='head'></span>

# 安装ntfs-3g
下载NTFS-3G：
https://www.tuxera.com/community/open-source-ntfs-3g/
    下载好的安装包，解压，进入文件夹，打开terminal
```bash
    ./configure
    make
    make install #OR 'sudo make install'
```
<!--more-->
# 新建文件
```bash
touch /sbin/mount.ntfs
```

编辑，输入以下内容
```bash
vi /sbin/mount.ntfs
文档内容：
  #!/bin/sh  
  exec /sbin/mount.ntfs-3g "$@"
```
保存并退出
# 修改权限
```bash
chmod a+x /sbin/mount.ntfs
```
# Done !
愉快的使用吧~即插即用特别爽！

[返回顶部](#head)
{:.warning}