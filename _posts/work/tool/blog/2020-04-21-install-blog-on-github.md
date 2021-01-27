---
layout: article
title: 超详细hexo博客部署到github教程
date: 2020-04-21 00:28:59
tags:
- hexo
author: 未厅堂
key: install-blog-on-github-20201229
aside:
  toc: true
category: [tool, blog]
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

<span id='head'></span>

# 1 、前言
使用github pages服务搭建博客的好处有：

1. 全是静态文件，访问速度快；
2. 免费方便，不用花一分钱就可以搭建一个自由的个人博客，不需要服务器不需要后台；
3. 可以随意绑定自己的域名，不仔细看的话根本看不出来你的网站是基于github的；
4. 数据绝对安全，基于github的版本管理，想恢复到哪个历史版本都行；
5. 博客内容可以轻松打包、转移、发布到其它平台；
6. 等等；

<!--more-->


### 1.1、工欲善其事，必先利其器

在开始之前首先以下内容你已具备：


1. 一个github账号,没有的花可以去github.com注册一个，很简单的
2. 您的系统安装了nodejs,npm,git并且了解最基本的使用方法

本文将使用以下环境：

+ 系统：ubuntu: Linux 5.3.0-45-generic linux x64
+ hexo-cli: 3.1.0
+ node: 12.16.1
+ npm: 6.13.4
+ git: 2.20.1

# 2、github配置：

新建仓库:
新建一个名为**你的用户名.github.io**的仓库，比如说，如果你的github用户名是**test**，那么你就新建**test.github.io**的仓库

需要注意：

   - 仓库名字必须是：username.github.io，其中username是你的用户名
     如果不是这个格式不能使用**username.github.io**这个域名访问你的博客，如果你有自己域名可以忽略


### 2.1、本地配置：

&nbsp;&nbsp;&nbsp;&nbsp;**配置SSH key**为什么要配置这个呢？因为你提交代码肯定要拥有你的github权限才可以，但是直接使用用户名和密码太不安全了，所以我们使用ssh key来解决本地和服务器的连接问题。
```bash
$ cd ~/. ssh #检查本机已存在的ssh密钥
```
如果提示：No such file or directory 说明你是第一次使用git。

ssh-keygen -t rsa -C "邮件地址"
然后连续3次回车，在用户目录会生成.ssh隐藏目录，打开用户目录，

**显示隐藏文件的方法：**

 -  ubuntu：**Ctrl+H**
 -  windwos: 控制面板->文件夹选项->查看->高级设置->选择**显示隐藏的文件、文件夹和驱动器**->确定

<div  class="center">  
<img src="https://uc2flg.ch.files.1drv.com/y4m9dWN80BsgWjE5qghAPziIvn9-JZihaB2Ala1TP9v7uC5dl_xNQeFMuqU3D0kAcXC15N4SqeyhrdnzbteHhgwYYDj2lbcgL5EKGb8SGV-6XASo2nYtadog4rnj0PxRlkK2omO0dFzpgWY2tnN-35UD8c_wt6RuGKLQkTDEdWqv24LgmWpKKoorllI3X4UiJdAE8iuF26AbHGRGeWsIjbKOg?width=886&height=582&cropmode=none" alt="打开控制面板" style="zoom:50%;" />
<img src="https://ts2flg.ch.files.1drv.com/y4melIiow06telFusqYPNSvZkTZOkOp4iy8qs_ke7kHeKieC1x5DArrZqh1hJxZwsqrr8bjrW2RmXae3zuYWu1oGKerWw_iOtxOXBty053p91ZKE43mRZL54l8kIZIOufWgOFB7tRsYjlYt68juZD1nWGnKzP1_Iy9kd4pro4CEhurB2ADGcHVg4OO78hn7_khnr2VUllBrwjHHNcLKvDkoGQ?width=382&height=432&cropmode=none" alt="打开查看标签"  style="zoom:65%;" />
<img src="https://sy2flg.ch.files.1drv.com/y4mXvtusdNOlDGAc3T6W8uCo6yP20H9nSrVG0pHOpaFvhp7VgK45nboz3SfWZfCybH4YNSpqjW2-JY_SouTy2boh3FBP8kf5md2-gmRj9gJyHBU1SfakWZIDJoA8rlXlZ64cuK77Av4HCY4tKwLynW1PCaSMCIAzoZMEOZDMPnWJPDHXfyFNMe9ZL0vCGjJMPnT0e_dVEh-bMD1dOOkuZUpCw?width=382&height=437&cropmode=none" alt="找到'显示隐藏的文件、文件夹和驱动器'" style="zoom:65%;" />
</div>

- Mac: 打开终端输入以下命令：

```bash
   显示隐藏文件命令：
  defaults write com.apple.finder AppleShowAllFiles -boolean true ; killall Finder
   关闭显示隐藏文件命令：
   defaults write com.apple.finder AppleShowAllFiles -boolean false ; killall Finder
  ```

如果不想麻烦可以直接使用如下命令复制id_rsa.pub公钥内容

```bash
ubuntu:~$ cat .ssh/id_rsa.pub
ssh-rsa AAAAB3NzaC1yc2AAABgQC4ynFg9LU2wV6SH0e4IrhgO2pA6I+dZgN6t/6nnZvXETEAPVDaI/lo1PQJiosqhJtOoaTTOme53+dS0AtHZGa4wG0GY9CHkoij0W4UivsASW+O/EpTfIhjDe06dnBtKS2xyId9gtuNloa9za4dP7nf95E= email@qq.com

```

**github添加sshkey**：

浏览器打开[GITHUB](https://www.github.com "GitHub官网"),打开刚刚创建的仓库，找到Settings

![](https://6kfpaq.ch.files.1drv.com/y4mHE1Z0PdP-y_f8_NOYj8m_uQqouKJh7T7Xn4rhpxmxd2qKaMzbdyu5VUVwZCHDfSkjr_Dv3zUmrHNFooE-m7uqXsLeviVje958PkMGV4eAj79m_lA76r7MzOft02g0YWRxaGSjYN_Z61PY-2nUwAgAmiGH4R6E42UW6xGtsHplTVCyFlWvCbDBfHDaTiBmEE2rH_wn84NMZt1w74humYqLA?width=1041&height=247&cropmode=none)

然后左侧选择**Deploy keys**-->**Add deploy key**

![](https://wc2flg.ch.files.1drv.com/y4mPWtO-tO_gMEQK29HNCAi8fa6Wher4xjFiotxwOzlPmOKtjvz5aHwWxO44bXactx_3-nSEnW9037HknFAl6RXHgyzgAcJfa50iu4ymRwEpb4qfNNMAJJkrZL7W7YiXAEvPd3Hr9U6OPbd2hcztesSytM2s9m41kS2obVOxvNAntau2DfqGL-hT7JDvvBL2xa_BjNAa-DcD6chN5Z2F-4jRQ?width=987&height=545&cropmode=none)

然后将复制的.ssh/id_rsa.pub公钥内容，添加到GitHub deploy keys中，如下图：

![](https://5kfpaq.ch.files.1drv.com/y4mNv_S2v9NXI4wdFFLW4p9OC81TM2RXz8ztzJKjd7FJnDExbQDf_AG0v5pUJfWNN_zhUPhmKip9tt7R7tb-Nh1fDLw4FRVOlYuvHUqtXuAfC8fC8TV_9wi9SAXT1suV6Q-rEYbE8UFU86yljuD59a30ii0qQXATus4_HNOBUKoal1MIie9VOrsGX84DeZIUfUsSd3vCZUJaGm7st_ZEo1zRQ?width=1011&height=496&cropmode=none)

### 2.2测试ssh配置

使用命令：

```bash
ssh -T git@github.com
```

出现下面内容就说名配置成功了

```bash
-ubuntu:~$ ssh -T git@github.com
Hi xxx/xx.github.io! You've successfully authenticated, but GitHub does not provide shell access.
```

### 2.3、配置环境

1、安装git、nodejs 、npm

```bash
sudo apt install git nodejs npm
```

# 3、安装hexo

```bash
npm install hexo-cli -g          #安装hexo
hexo init blog  				#初始化hexo程序
cd blog						#切换到blog目录
npm install					#下载hexo程序到blog目录
hexo server				#本地预览
```

hexo目录结构

```bash
hexo-install-directory
├── CNAME
├── _config.yml 				//Hexo的配置文件，可以配置主题、语言等
├── avatar.jpg
├── db.json
├── debug.log
├── node_modules          //hexo 插件库
├── package.json
├── public						//执行hexo g命令后，生成的内容会在这里，包括所有的文章、页面、分类、tag等.
│   ├── 2020
│   ├── 404.html
│   ├── Staticfile
│   ├── archives
│   ├── atom.xml
│   ├── categories
│   ├── css
│   ├── images
│   ├── index.html
│   ├── js
│   ├── page
│   ├── sitemap.xml
│   └── vendors
├── scaffolds					//保存着默认模板，自定义模板就是修改该目录下的文件
│   ├── draft.md 				//默认的草稿模板
│   ├── page.md 				//默认的页面模板
│   └── post.md 				//默认的文章模板
├── source 						//Hexo存放编辑页面的地方，可以使用vim或其他编辑器编辑这里的内容
│   ├── 404.html   				//自定义404页面，
│   ├── Staticfile 				
│   ├── _drafts					//存放所有的草稿文件的目录
│   ├── _posts					//存放所有的文章文件的目录，用的最多，比如执行hexo n "post_name"之后，post_name这篇文章就存放在这个目录下
│   ├── categories
│   └── images					//这是我自己定义的，用于存博客中的图片，当然也可以使用图床
└── themes						//Hexo的所有主题
    ├── landscape				
    └──  next					//这是我目前用的主题
```
## 3.1、hexo配置
打开hexo配置文件  **_config.yml**  (根目录)

找到**deploy**按照以下格式配置
```bash
# Deployment
## Docs: https://hexo.io/docs/deployment.html
deploy:
  type: git
  repo: git@github.com:username/username.github.io.git
  branch: master
```
其他按需设置，这里就不详细介绍了

## 3.2、撰写博客

进入/source/_posts目录（或者使用命令：**hexo new xxx**来生成文章名为xxx的文章）
新建**xx.md**文件（xx即是你要写的文章标题）
使用markdown编辑其或者任意文本编辑器，使用markdown语法编写你的博客巴！
## 3.2生成并部署到github
然后使用以下命令生成并部署到github
```bash
hexo g  #生成静态页面

hexo d  #部署到github
```
# 4、结束
至此博客已经部署完成，通过xxx.github.io来欣赏你的新博客。
常用hexo命令:
```bash
hexo new "postName" #新建文章
hexo new page "pageName" #新建页面
hexo generate #生成静态页面至public目录
hexo server #开启预览访问端口（默认端口4000，'ctrl + c'关闭server）
hexo deploy #部署到GitHub
hexo help  # 查看帮助
hexo version  #查看Hexo的版本

缩写：
hexo n == hexo new
hexo g == hexo generate
hexo s == hexo server
hexo d == hexo deploy

组合命令：
hexo s -g #生成并本地预览
hexo d -g #生成并上传
```

[返回顶部](#head)
{:.warning}