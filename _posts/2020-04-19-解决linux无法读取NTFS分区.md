---
title: 解决linux无法读取NTFS分区
date: 2020-04-19 23:00:25
categories: 技术
tags:
- cetnos
- NTFS
— NTFS-3g
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

# 安装ntfs-3g
下载NTFS-3G：
https://www.tuxera.com/community/open-source-ntfs-3g/
    下载好的安装包，解压，进入文件夹，打开terminal
```bash
    ./configure
    make
    make install #OR 'sudo make install'
```
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
