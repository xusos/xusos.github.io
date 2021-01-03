---
tittle: 使用github搭建个人免费博客
categories: 技术
tags:
- hexo
- 博客
- 网站
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

**配置SSH key**
为什么要配置这个呢？因为你提交代码肯定要拥有你的github权限才可以，但是直接使用用户名和密码太不安全了，所以我们使用ssh key来解决本地和服务器的连接问题。
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
<img src="https://xact01.baidupcs.com/file/53f0f7dear2b6cb3d00aab4f15ffbfd0?bkt=en-6f7dc9883530f8c981fe33890731f2701fd711d3910b191e57069044ceefa50979ca7610f422a0cebbf21465098965776cc7d0c1407c8a06ae1e9b7c87132465&fid=2420416292-250528-1113641249953474&time=1586781510&sign=FDTAXUGERLQlBHSKfW-DCb740ccc5511e5e8fedcff06b081203-G49q3uHM8C8hMT3aXFHjwVhsOLs%3D&to=125&size=159600&sta_dx=159600&sta_cs=0&sta_ft=png&sta_ct=0&sta_mt=0&fm2=MH%2Cdefault_region%2CAnywhere%2C%2CNone%2Cany&ctime=1586780803&mtime=1586780803&resv0=-1&resv1=0&resv2=rlim&resv3=5&resv4=159600&vuk=2420416292&iv=0&htype=&randtype=&newver=1&newfm=1&secfm=1&flow_ver=3&pkey=en-98d6150dc84407b324a6959e084683c76010b0e6fe8a4075250669f5fa616056b4341cfc4f12f0d2f9c005e440084b1d800f5093d4b44627305a5e1275657320&sl=68616270&expires=8h&rt=sh&r=769758474&vbdid=881122592&fin=1.png&fn=1.png&rtype=1&dp-logid=2408807987061150891&dp-callid=0.1&hps=1&tsl=200&csl=200&fsl=-1&csign=EV8M7n5LJhsV5PXyNfm24mQkmfk%3D&so=0&ut=6&uter=4&serv=0&uc=3749811246&ti=769a8bf69478e69e5e4b35e5d0d7af4432f1bce7ed760176&adg=c_a266db978636f8ae99b9a0828c626ebd&reqlabel=250528_f_4233351895faac2274d9a5c943bef796_-1_7d1423d366863e888a9ccd5453de9d70&by=themis" alt="打开控制面板" style="zoom:50%;" />
<img src="https://xact01.baidupcs.com/file/fc5519018h050615ec633c981aca423e?bkt=en-713b21d6dbc31398f1f05f5ca185cf2c3ec20b88fb8755a8862cf67897483823097ff0ad34e604e1844f20f85633a17c6dca165a5306a3d6d9b8bd7827940b78&fid=2420416292-250528-198188898371195&time=1586781650&sign=FDTAXUGERLQlBHSKfW-DCb740ccc5511e5e8fedcff06b081203-X6%2BbSbNoyam9l5LRb0JFNx4ZwFY%3D&to=125&size=32476&sta_dx=32476&sta_cs=1&sta_ft=png&sta_ct=0&sta_mt=0&fm2=MH%2Cdefault_region%2CAnywhere%2C%2CNone%2Cany&ctime=1586780804&mtime=1586780804&resv0=-1&resv1=0&resv2=rlim&resv3=5&resv4=32476&vuk=2420416292&iv=0&htype=&randtype=&newver=1&newfm=1&secfm=1&flow_ver=3&pkey=en-f88d08eda028d438dd7cd6123e536ccd11439118ddac2f4da4199bf185ab1f25485d6c2941c78860d04a36f2efeff64c8ce7012889c1a538305a5e1275657320&sl=68616270&expires=8h&rt=sh&r=980611287&vbdid=881122592&fin=2.png&fn=2.png&rtype=1&dp-logid=2408845743145361476&dp-callid=0.1&hps=1&tsl=200&csl=200&fsl=-1&csign=EV8M7n5LJhsV5PXyNfm24mQkmfk%3D&so=0&ut=6&uter=4&serv=0&uc=3749811246&ti=0887d9faa0e992645e09ea69b6ec1bb936132c758f48062e305a5e1275657320&adg=c_a266db978636f8ae99b9a0828c626ebd&reqlabel=250528_f_4233351895faac2274d9a5c943bef796_-1_7d1423d366863e888a9ccd5453de9d70&by=themis" alt="打开查看标签"  style="zoom:65%;" />
<img src="https://xact01.baidupcs.com/file/4c65729c1u3d8ad446cc6d9a6471037c?bkt=en-00f3aa810d089f200d19c96eb92c981a18ebf7f6bf9adc305ca654149f70b0aa638c3c420c5db68c6f54edc4dca8bbb19708f56ab6db988c86103117ad1b34bc&fid=2420416292-250528-569369577272309&time=1586781588&sign=FDTAXUGERLQlBHSKfW-DCb740ccc5511e5e8fedcff06b081203-tl6kkH7Zh4WLZ%2B0fYIkkkC32XjQ%3D&to=125&size=36579&sta_dx=36579&sta_cs=0&sta_ft=png&sta_ct=0&sta_mt=0&fm2=MH%2Cdefault_region%2CAnywhere%2C%2CNone%2Cany&ctime=1586780805&mtime=1586780805&resv0=-1&resv1=0&resv2=rlim&resv3=5&resv4=36579&vuk=2420416292&iv=0&htype=&randtype=&newver=1&newfm=1&secfm=1&flow_ver=3&pkey=en-cac0d04b4a7129a4a33154fffbd5dc6c952902310be9cd3901ae6b2ec7b93ba25ab7838de6add9927e25bc05e349ecce153c3c9753a65088305a5e1275657320&sl=68616270&expires=8h&rt=sh&r=295719120&vbdid=881122592&fin=3.png&fn=3.png&rtype=1&dp-logid=2408828956202622886&dp-callid=0.1&hps=1&tsl=200&csl=200&fsl=-1&csign=EV8M7n5LJhsV5PXyNfm24mQkmfk%3D&so=0&ut=6&uter=4&serv=0&uc=3749811246&ti=f405cce1d13e4828f56f2ff47bff5edd887249986e3901cd&adg=c_a266db978636f8ae99b9a0828c626ebd&reqlabel=250528_f_4233351895faac2274d9a5c943bef796_-1_7d1423d366863e888a9ccd5453de9d70&by=themis" alt="找到'显示隐藏的文件、文件夹和驱动器'" style="zoom:65%;" />
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

![](https://thumbnail0.baidupcs.com/thumbnail/6247aadebp236522ba655a70d2719e86?fid=2420416292-250528-1001684627433941&rt=pr&sign=FDTAER-DCb740ccc5511e5e8fedcff06b081203-6ESQrPQBtCVFUZXRM5Wiea1FqHk%3d&expires=8h&chkbd=0&chkv=0&dp-logid=2428150344387746769&dp-callid=0&time=1586851200&size=c1041_u256)

然后左侧选择**Deploy keys**-->**Add deploy key**

![](https://thumbnail0.baidupcs.com/thumbnail/5a916ba6cn28254284bff50db36fa2d5?fid=2420416292-250528-738803386105492&rt=pr&sign=FDTAER-DCb740ccc5511e5e8fedcff06b081203-N0Q2r3UoZRZjGPSrFmkYLBlSFp4%3d&expires=8h&chkbd=0&chkv=0&dp-logid=2428253526103944946&dp-callid=0&time=1586851200&size=c987_u545&quality=90&vuk=2420416292&ft=image)

然后将复制的.ssh/id_rsa.pub公钥内容，添加到GitHub deploy keys中，如下图：

![](https://thumbnail0.baidupcs.com/thumbnail/79ca7b3aatb3fa0d57296536d1d943b9?fid=2420416292-250528-295073668220639&time=1586851200&rt=sh&sign=FDTAER-DCb740ccc5511e5e8fedcff06b081203-G%2BWwk7fCrw%2FIr36kgptCFMN6D0I%3D&expires=8h&chkv=0&chkbd=0&chkpc=&dp-logid=2427874536583213529&dp-callid=0&size=c760_u518)

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
