---
layout: article
title: 远程删除github仓库文件方法
date: 2020-04-21 00:30:23
categories: 技术
tags: 
- github
author: 未厅堂
key: delet-github-files-20201229
aside:
  toc: true
category: [software, github]
---

<span id='head'></span>

# * content
# {:toc}

# 在不删除仓库的情况下清空仓库文件

由于自己是个小白，仓库文件经常搞乱，推送到仓库无法更新，只能清空重新上传，记录下清空仓库的方法
<!--more-->

1. 先在本地仓库对要进行文件删除的远程仓库clone；

```bash
$ git clone git@github.com:xxx/xxxx.git
```

2. cd 进入clone的仓库

3. 对需要删除的文件、文件夹进行如下操作:

```bash
删除文件：
$ git rm test.txt

删除文件夹：
$ git rm -r test 

删除全部文件
$ git rm -r *
```
4. 提交修改

```bash
$  git commit -m "Delete something."
```

5.将修改提交到远程仓库的xxx分支:

```bash
$  git push origin xxx
```

- 一般而言，我们最常见的便是master分支，所以我们可以执行命令：

```bash
$  git push origin master
```
[返回顶部](#head)
{:.warning}