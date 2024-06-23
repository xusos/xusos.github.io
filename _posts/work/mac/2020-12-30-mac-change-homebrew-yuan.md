---
layout: article
title: 「Mac」Mac下使用国内源安装Homebrew
date: 2020-12-29 23:00:25
categories: 技术
tags: 
- Homebrew
- Mac
author: 未厅堂
key: mac-change-homebrew-yuan-20201229
aside:
  toc: true
category: [mac, homebrew]
---



<span id='head'></span>
# 因由

> 最近在Mac上学习编程,需要使用Homebrew配置安装一些软件,国内使用官方命令安装Homebrew几十K每秒的速度实在是婶婶能忍,叔叔也不能忍了!网上找了好多方法,安装了好久结果都无法解决问题,偶然间在gitee上发现了这个脚本故分享给需要的朋友!
<!--more-->
## 非常简单就下面一条命令:
```bash
/bin/zsh -c "$(curl -fsSL https://gitee.com/xusoso/HomebrewCN/raw/master/Homebrew.sh)"
```
[返回顶部](#head)
{:.warning}