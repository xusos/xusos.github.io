---
layout: article
title:  "「Android」jquerymobile和Phonegap 搭建跨平台开发环境"
date:   2021-11-15 01:34:41 +0800
key: python-lajihuishou-2021-11-15 01:34:41 
aside:
  toc: true 
category: [software, python, stnotes] 
tags:
  python 
author: 未厅堂 
--- 
 
<span id='head'></span>

jquerymobile和Phonegap 搭建跨平台开发环境

**一、写在前面的话**
         前几天主任安排做一个ICU呼叫系统，ICU内部可以通过推送消息到患者家属手机上，进行相应的医嘱交代；之前做过一个围手术期的Android应用，后来种种原因没有能够产品化，并且仅仅有安卓版本，无IOS版本，因此这次吸取上次教训，希望能够通过集成平台开发一个安卓和iOS通用的手机应用，因为本次开发仅仅由我本人进行，所以人力资源匮乏，开发量也较大，从开发环境搭建到总体设计、编码和测试都是由我自己进行，所以才想起写几篇博客记录一下此次开发的过程。
         本博客先将Android端的开发环境搭建，利用jQuerymobile和phonegap进行组合，生成Android项目然后用Androidstudio进行开发。
**二、软件组合**
         JDK  ----oracle公司官网下载，具体环境变量如何配置请度娘
         Androidstudio---Google自己开发的IDE，很强大，可能需要翻墙
         NODEjs---度娘可以找到官网，下载之后安装
         Phonegap—后续会介绍如何去安装
         Cordova---后续会介绍如何去安装
**三、软件安装**
         1、JDK、Androidstudio和Androidsdk如何去安装配置大家请度娘，此处不进行介绍
         2、安装nodejs，按照软件安装指示，进行默认安装
         3、打开cmd命令行窗口，输入npminstall –g phonegap,大概等待一段时间自动安装成功，主要看网络好坏，同时本机上不能有已经安装好的phonegap软件，不然会出错
         4、打开cmd命令行窗口，输入npm install–g cordova，和第3步类似，会等一段时间，同样不能有已经安装好的同一款软件在本机，否则会报错
         5、用phonegap –version和cordova -version测试安装成功与否
**四、构建Android工程**
         1、命令行进入准备存放工程文件夹，本机是cd D:\wkspace\phonegap，然后输入phonegap create  CCU,其中CCU是我的phonegap工程名称，如下图所示

![1](https://github.com/xusos/note-images/raw/main/images/20160616093602056)

创建完的phonegap工程结构如下图所示，此处仅仅是创建了一个phonegap工程，我们还需要在下一步去构建一个Android工程，

![2](https://github.com/xusos/note-images/raw/main/images/20160616093627975)

phonegap仅仅是一个壳。
         2、进入到CCU文件夹，输入phonegapbuild Android之后按回车，build之后成功界面如下所示
![3](https://github.com/xusos/note-images/raw/main/images/20160616093655288)

         3、打开Androidstudio，选择platforms下文件夹里，选择android文件夹，选择之后andriodstudio会自动的gradlebuild，不过会花费很长时间，并且需要翻墙，成功之后就可以运行了，一个完整的过程就结束了

![4](https://github.com/xusos/note-images/raw/main/images/20160616093709226)

-------------------
[返回顶部](#head)
{:.warning}