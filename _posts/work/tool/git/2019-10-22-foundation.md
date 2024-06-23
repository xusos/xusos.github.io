---
layout: article
title:  "「Git」 入门"
date:   2019-10-22 14:18:40 +0800
key: git-foundation-20191022
aside:
  toc: true
category: [tool, git]
---
<span id='head'></span>  
>[官网](https://git-scm.com/)    

<!--more-->

# 0 为什么用 Git
- 通过分支协同工作   
拥有合并、变基和回退等完整的开发链整合工具；   
- 可以离线开发和多点开发   
每个人都有权限去维护自己的版本，多点开发时无需设置中央服务器，很方便；   
- 高性能   
版本切换迅速   
- 开源社区强大   
工具生态系统、托管平台、出版物、服务等非常丰富；    


# 1 准备环境

# 2 第一个 Git 项目

# 3 常用命令
## 3.1 比较分支差异
```shell
git diff branch1 branch2 --stat         # 显示差异文件
git diff branch1 branch2 文件名(带路径)   # 显示指定文件的详细差异
git diff branch1 branch2                # 显示出所有文件的详细差异
```   

## 3.2 查看分支
```shell
git log --graph --decorate --oneline --simplify-by-decoration --all
```
`--decorate` 让 git log 显示每个 commit 的引用(如:分支、tag等)；     
`--oneline` 一行显示；     
`--simplify-by-decoration` 只显示被branch或tag引用的commit；     
`--all` 表示显示所有的 branch，这里也可以选择，比如我指向显示分支 ABC 的关系，则将 --all 替换为 branchA branchB branchC；    
*记不住的就打`--`，然后 `Tab`，一个一个试就好了；*    

## 3.3 重置

| 功能 | 命令 |
| --- | --- |
| 恢复某个commit的指定文件到暂存区和工作区 | `git checkout [commit] [file]` |
| （从暂存区）清空没有提交的工作区文件 | `git checkout head .`<br>. 可以换成文件或目录 |
| 重置暂存区的指定文件，与上一次commit保持一致，但工作区不变 | `git reset [file]` |   
| 重置暂存区与工作区，与上一次commit保持一致   | `git reset --hard` |
| 重置当前分支的指针为指定commit，同时重置暂存区，但工作区不变 | `git reset [commit id]` |  
| 重置当前分支的HEAD为指定commit，同时重置暂存区和工作区，与指定commit一致     |`git reset --hard [commit id]` |
| 重置当前HEAD为指定commit，但保持暂存区和工作区不变 |`git reset --keep [commit id]` |
| 新建一个commit，用来撤销指定commit；<br>后者的所有变化都将被前者抵消，并且应用到当前分支 |`git revert [commit id]` |  
| 暂时将未提交的变化移除/移入   | `git stash [pop]`  |


# 4 新建分支

| 功能 | 命令 |
| --- | --- |
| 从 commit id 新建 |  `git checkout [commit id] -b branch_name` |   

# 5 协作

-------------------  
[End](#head)
{:.warning}  

# 附录
## A 参考书籍
1. René Preißel. Bjørn Stachmann. 著 凌杰. 姜楠 译. Git 学习指南[M]. 北京:人民邮电出版社, 2016.    

## B 推荐资料
1. 猴子都能懂的Git入门. <https://backlog.com/git-tutorial/cn/intro/intro1_1.html>.   
1. 官方文档[中文版]. <https://gitee.com/progit/>.    
1. 在线学习文档. <https://try.github.io/>.    

## C 参考资料
1. [彻底搞懂 Git-Rebase](http://jartto.wang/2018/12/11/git-rebase/)    
