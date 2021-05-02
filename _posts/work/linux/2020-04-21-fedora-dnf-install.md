---
layout: article
title: 「Linux」fedora提升dnf安装速度的方法
date: 2020-04-21 22:56:25
categories: 技术
tags:
- fedora
- Linux
author: 未厅堂
key: Linux-fedora-dnfinstall-20200421
aside:
  toc: true
category: [linux, fedora]
---


<span id='head'></span>

Fedora是一个功能强大的Linux发行版，但它有一个严重的缺点：DNF包管理器，与Ubuntu和Debian的Apt，Arch的Pacman，甚至是OpenSUSE的Zypper相比比较慢。本文介绍提高Fedora Linux应用程序安装速度的方法：升级Fedora、安装最新更新、设置DNF以使用尽可能快的镜像、更改DNF以一次下载多个包。

<!--more-->


# 第1步、升级Fedora
Fedora Linux在每个新版本中都会变得更好，每几个月，开发人员就会尽最大努力改进底层技术。因此，如果你在Fedora的DNF应用安装程序中安装软件包时遇到性能问题，那么你应该做的第一件事就是将你的版本升级到最新版本，要升级Fedora，请打开Gnome Software，单击新版本标题，然后完成将Fedora Linux PC转换为最新版本的过程。

参考：用Fedora 29 Workstation的用户使用图形桌面升级到Fedora 30或者在命令行中从Fedora 29升级到Fedora 30的方法。

# 第2步、安装最新更新
运行最新版本的Fedora Linux至关重要，因为每个主要版本都会进行改进，但是，确保当前运行的版本也安装了最新的软件包也很重要，要执行此操作，请打开“Gnome软件”，单击“更新（Updates）”并完成安装升级的过程，或者，如果你更喜欢使用终端窗口，请按键盘上的Ctrl+Alt+T或Ctrl+Shift+T，之后，输入下面的dnf update命令来更新系统：
```bash
sudo dnf update -y
```
# 第3步、设置DNF以使用尽可能快的镜像
Fedora包管理器（DNF）在安装包时没有选择最快的镜像，相反，它从任何地方抓取软件包，似乎是随机的，事实上，DNF没有将快速镜像优先于慢镜像，这是为什么安装软件有时非常慢的原因之一。

如果你希望使DNF包管理器运行得更快，可以调整配置以使用“rapidmirror”功能，这是一个简单的调整，但它会迫使Fedora使用最快的镜像，在安装过程中减少下载的宝贵时间。

要添加“fastermirror”功能，请在键盘上按Ctrl+Alt+T或Ctrl+Shift+T在Fedora Linux PC上启动终端窗口，从那里，打开Nano中的“dnf.conf”文件。

注意：由于Fedora Linux默认没有Nano，因此需要安装，参考在Linux系统中安装Wget、Htop、Nano、Lynx、Fzf、Pydf的方法：
```bash
sudo nano -w /etc/dnf/dnf.conf
```
在Nano文本编辑器的“dnf.conf”文件中，使用键盘上的向下箭头键移动到文件的最底部，然后，按Ctrl+Shift+V将下面的代码粘贴到Nano中：
```bash
fastestmirror=true
```
提高Fedora Linux应用程序安装速度的方法

将代码粘贴到Nano后，保存编辑，在Nano中，按Ctrl+O即可完成，保存后，继续执行第4步操作。

# 第4步、更改DNF以一次下载多个包
前面对DNF的修改还不足以加速它，所以要更改包管理器以能够一次可以从Internet下载多个文件数量，这个步骤会提高其下载速度。

要增加DNF包管理器一次可以下载的文件数，你需要将“max_paralel_downloads”添加到配置文件中，为此，请返回Nano文本编辑器，或者，如果你已将其关闭，请使用以下命令重新打开该文件：
```bash
sudo nano -w /etc/dnf/dnf.conf
```
在Nano内部，使用向下箭头移动到文件的底部，就像在第3步中一样，然后，将“max_paralel_downloads”代码粘贴到“dnf.conf”中：
```bash
max_parallel_downloads=10
```
提高Fedora Linux应用程序安装速度的方法

一次感觉10次下载太多了，那么就将其更改为5，这是最大数量的一半：
```bash
max_parallel_downloads=5
```
将“max_parallel_downloads”添加到DNF后，按Ctrl+O保存编辑，然后，按Ctrl+X关闭编辑器。

# 5、常用命令
检查并升级可用软件包：
```bash
$ dnf update
```
删除缓存:
```bash
$dnf clean all
```
列出可用的软件源：
```bash
$ dnf repolist
```
搜索软件:
```bash
$ dnf search $package
```
安装软件：
```bash
$ dnf install $package
```
升级软件包：
```bash
$ dnf update $package
```
删除软件包：
```bash
$ dnf remove $package
```
查看更多命令:
```bash
$ dnf help
```
PS：man dnf 就会用啦
[返回顶部](#head)
{:.warning}