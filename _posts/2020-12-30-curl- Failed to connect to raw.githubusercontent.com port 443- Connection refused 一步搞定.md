---
title: 一步搞定curl: (7) Failed to connect to raw.githubusercontent.com port 443: Connection refused错误
date: 2020-12-30 23:00:25
categories: 技术
tags: 
	- Homebrew
	- Mac
	
---

curl: (7) Failed to connect to raw.githubusercontent.com port 443: Connection refused 一步搞定！！！
再网上搜了一堆方法不管用，结果一步就能搞定！

#一句命令搞定，国内的镜像地址
```bash
/bin/zsh -c "$(curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh)"
```