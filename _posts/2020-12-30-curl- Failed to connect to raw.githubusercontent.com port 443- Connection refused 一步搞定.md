---
title: 一步搞定curl: (7) Failed to connect to raw.githubusercontent.com port 443: Connection refused错误
date: 2020-12-30 23:00:25
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

curl: (7) Failed to connect to raw.githubusercontent.com port 443: Connection refused 一步搞定！！！
再网上搜了一堆方法不管用，结果一步就能搞定！

#一句命令搞定，国内的镜像地址
```bash
/bin/zsh -c "$(curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh)"
```