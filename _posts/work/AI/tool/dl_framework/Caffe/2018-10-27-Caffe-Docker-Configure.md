---
layout: article
title:  "「DLFramework」 Caffe Docker 配置"
date:   2018-10-27 18:30:40 +0800
key: caffe-docker-abc-20181027
aside:
  toc: true
tags: 开发环境
category: [AI, dl_frameworks, caffe]
---
<span id='head'></span>  

<!--more-->   
## 一、Docker 安装  
[docker 安装教程](/worktool/2018/10/27/Docker-入门.html)  

## 二、使用 Docker 安装 Caffe  

- 1.搜索 caffe 的 docker 镜像  
  ```shell
  docker search caffe  
  ```

- 2.获取 caffe docker 镜像  
  ```shell
  docker pull bvlc/caffe:gpu  # 选择官方版本的 GPU 版本；  
  ```  

  这里如果不指定 `:gpu` 版本，会报错：  

  Error response from daemon: manifest for bvlc/caffe:latest not found  
  所以要指定版本号，版本号可以从caffe官网查看   
  {:.error}

- 3.运行镜像   
  ```shell
  nvidia-docker run -it --name $name$ -v $src$:$dst$ -p $psrt_src$:$port_dst$ bvlc/caffe:gpu /bin/bash  # gpu 版  
  docker run -it bvlc/caffe:cpu # cpu 版   
  ```

  pull下来之后只要 run 一次就行了，之后每次启动参照 6. 7. 即可；  
  此处，启动的 container 有默认名字，若要手动指定，则用命令：  
  nvidia-docker run -it `--name container_name` bvlc/caffe:gpu /bin/bash  
           
- 4.查看对应的 docker 镜像和名字  
  ```shell
  docker ps -a
  ```
  这里的 image 是 bvlc/caffe:gpu，name 是 container_name；  


- 5.把我自己的 files 拷贝到容器下的 workspace 文件夹下  
  ```shell
  docker cp $your_files $container_name:/workspace
  ```

- 6.启动 docker  
  如果 4. 中的 STATUS 是 Exited 状态，就需执行本操作，若是 up 状态就不用执行这一步；  
  ```shell
  docker start $container_name
  ```


- 7.启动 docker  
  ```shell
  docker exec -it $container_name bash
  ```
  执行完之后会进到 `root@71bahaha9:/workspace#` 目录，然后 cd 到你想去的文件夹，照常运行你的车给程序就可以了  

- 8.安装软件
  直接在 7. 的状态下安装即可；     
  ```shell
  pip install opencv-python # 以 opencv 为例
  ```

:ghost:

-------------------  
[End](#head)
{:.warning}  
