---
layout: article
title: 「Linux」ubuntu微信无法正常安装的解决方法
date: 2020-04-20 23:00:25
categories: 技术
tags: 
- 微信
- ubuntu
- Linux
author: 未厅堂
key: Linux-ubuntu-install-wechat-20200420
aside:
  toc: true
category: [linux, ubuntu]
---


<span id='head'></span>

使用Deepin wine for Ubuntu and Debian安装微信出错
https://github.com/wszqkzqk/deepin-wine-ubuntu

<!--more-->
错误信息：

```bash
$ sudo dpkg -i deepin.com.wechat_2.6.8.65deepin0_i386.deb 
(正在读取数据库 ... 系统当前共安装有 281328 个文件和目录。)
正准备解包 deepin.com.wechat_2.6.8.65deepin0_i386.deb  ...
正在将 deepin.com.wechat:i386 (2.6.8.65deepin0) 解包到 (2.6.2.31deepin0) 上 ...
dpkg: 依赖关系问题使得 deepin.com.wechat:i386 的配置工作不能继续：
deepin.com.wechat:i386 依赖于 deepin-wine (&gt;= 2.18-19)；然而：
系统中 deepin-wine 的版本为 2.18-12。
deepin.com.wechat:i386 依赖于 deepin-wine-helper (&gt;= 1.2deepin8)；然而：
系统中 deepin-wine-helper:i386 的版本为 1.2deepin0。




dpkg: 处理软件包 deepin.com.wechat:i386 (--install)时出错：
依赖关系问题 - 仍未被配置
正在处理用于 desktop-file-utils (0.23-1ubuntu3.18.04.2) 的触发器 ...
正在处理用于 mime-support (3.60ubuntu1) 的触发器 ...
正在处理用于 hicolor-icon-theme (0.17-2) 的触发器 ...
在处理时有错误发生：
deepin.com.wechat:i386
```
## 解决方法如下：
1、新建文件**update-wine.sh**内容复制以下代码！

[^_^]: 
```bash
	#!/bin/bash
	mkdir /tmp/deepintemp
	cd /tmp/deepintemp
	wget http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin-wine/deepin-wine_2.18-19_all.deb
	wget http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin-wine/deepin-wine32_2.18-19_i386.deb
	wget http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin-wine/deepin-wine32-preloader_2.18-19_i386.deb
	wget http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin-wine-helper/deepin-wine-helper_1.2deepin8_i386.deb
	wget http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin-wine-plugin/deepin-wine-plugin_1.0deepin2_amd64.deb
	wget http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin-wine-plugin-virtual/deepin-wine-plugin-virtual_1.0deepin3_all.deb
	wget http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin-wine-uninstaller/deepin-wine-uninstaller_0.1deepin2_i386.deb
	wget http://mirrors.aliyun.com/deepin/pool/non-free/u/udis86/udis86_1.72-2_i386.deb
	wget http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin-wine/deepin-fonts-wine_2.18-19_all.deb
	wget http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin-wine/deepin-libwine_2.18-19_i386.deb
	wget https://mirrors.aliyun.com/deepin/pool/main/libj/libjpeg-turbo/libjpeg62-turbo_1.5.1-2_amd64.deb
	wget https://mirrors.aliyun.com/deepin/pool/main/libj/libjpeg-turbo/libjpeg62-turbo_1.5.1-2_i386.deb
	
	echo '准备添加32位支持'
	sudo dpkg --add-architecture i386
	echo '添加成功，准备刷新apt缓存信息...'
	sudo apt update
	echo '即将开始安装...'
	sudo dpkg -i *.deb
	echo '安装完成，正在自动安装依赖...'
	sudo apt install -fy
	
	rm -vfr /tmp/deepintemp
```

```bash
#!/bin/bash
echo "deb [trusted=yes] http://mirrors.aliyun.com/deepin stable main contrib non-free" | sudo tee /etc/apt/sources.list.d/deepin.list
sudo apt update
sudo apt install -t bionic deepin.com.wechat deepin.com.qq.im -fy
sudo rm -f /etc/apt/sources.list.d/deepin.list
sudo apt update
```
请注意 apt install -t bionic
添加-t 参数，会优先填补ubuntu 系统源，自动安装最新的deepin-wine，如果老旧了卸载方法



2、执行命令：

```bash
    chmod +x update-wine.sh
    ./update-wine.sh
```
```bash
sudo apt purge deepin.com.* -fy
sudo apt autoremove -fy
```
3、然后再重装微信
使用sudo dpkg -i 命令
http://mirrors.aliyun.com/deepin/pool/non-free/d/

[返回顶部](#head)
{:.warning}