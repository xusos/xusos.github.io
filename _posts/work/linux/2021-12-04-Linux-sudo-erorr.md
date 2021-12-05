---
layout: article
title:  「Linux」解决Linux下sudo更改文件权限报错"xxx is not in the sudoers file. This incident will be reported."
date:   2021-12-04 14:44:35 +0800
key: Linux-2021-12-04 14:44:35 
aside:
  toc: true 
category: [software, linux, sudo] 
tags:
  linux
author: 未厅堂 
--- 
 
<span id='head'></span>

> **Linux**中普通用户用**sudo**执行命令时报”xxx is not in the sudoers file.This incident will be reported”错误，
> 解决方法就是在 **/etc/sudoers** 文件里给该用户添加权限。如下：

## 1.切换到root用户下

　　方法为直接在命令行输入：**su**，然后输入密码（即你的登录密码，且密码默认不可见）。

## 2.修改sudoers权限

**/etc/sudoers**文件默认是只读的，对**root**来说也是，因此需先添加**sudoers**文件的写权限,命令是:

即执行操作：

```shell
chmod u+w /etc/sudoers
```

## 3.编辑sudoers文件

即执行：

```shell
vi /etc/sudoers
```

找到这行 

```shell
root ALL=(ALL) ALL
```

在他下面添加

```shell
xxx ALL=(ALL) ALL  (这里的xxx是你的用户名)
```

[ps:](#mount_info)这里说下你可以**sudoers**添加下面四行中任意一条

```bash

youuser ALL=(ALL) ALL
%youuser ALL=(ALL) ALL
youuser ALL=(ALL) NOPASSWD: ALL
%youuser ALL=(ALL) NOPASSWD: ALL

```

**说明：**
>第一行:允许用户youuser执行sudo命令(需要输入密码).
>
>第二行:允许用户组youuser里面的用户执行sudo命令(需要输入密码).
>
>第三行:允许用户youuser执行sudo命令,并且在执行的时候不输入密码.
>
>第四行:允许用户组youuser里面的用户执行sudo命令,并且在执行的时候不输入密码.

## 4.撤销sudoers文件写权限,命令:

```shell
chmod u-w /etc/sudoers
```

-------------------
[返回顶部](#head)
{:.warning}