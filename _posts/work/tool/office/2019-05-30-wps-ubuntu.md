---
layout: article
title:  "「Office」 ubuntu 下使用 wps"
date:   2019-05-30 09:08:40 +0800
key: ubunt-wps-20190530
aside:
  toc: true
category: [tool, office]
---
<!--more-->   

# 1 问题
## 1.1 无法输入中文
修改配置文件    
wps 文字：sudo vim /usr/bin/wps
wps 表格：sudo vim /usr/bin/et    
wps 演示：sudo vim /usr/bin/wpp    

分别添加以下两句话：    
> 添加一下文字到打开的文本中（添加到“#!/bin/bash”下面）：    
export XMODIFIERS="@im=fcitx"   
export QT_IM_MODULE="fcitx"    
