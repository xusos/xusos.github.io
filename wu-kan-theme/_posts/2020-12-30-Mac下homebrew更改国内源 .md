---
title: Mac下使用国内源安装Homebrew
date: 2020-12-29 23:00:25
categories: 技术
tags: 
- Homebrew
- Mac
---

<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<ins class="adsbygoogle"
     style="display:block; text-align:center;"
     data-ad-layout="in-article"
     data-ad-format="fluid"
     data-ad-client="ca-pub-1334509736068927"
     data-ad-slot="4348838154"></ins>
<script>
     (adsbygoogle = window.adsbygoogle || []).push({});
</script>

# 因由
        最近在Mac上学习编程,需要使用Homebrew配置安装一些软件,国内使用官方命令安装Homebrew几十K每秒的速度实在是婶婶能忍,叔叔也不能忍了!网上找了好多方法,安装了好久结果都无法解决问题,偶然间在gitee上发现了这个脚本故分享给需要的朋友!

## 非常简单就下面一条命令:
```bash
/bin/zsh -c "$(curl -fsSL https://gitee.com/xusoso/HomebrewCN/raw/master/Homebrew.sh)"
```