---
layout: article
title:  "「DLFramework」 Mace 入门"
date:   2019-01-30 15:00:40 +0800
key: mace-foundation-20190130
aside:
  toc: true
category: [AI, dl_frameworks, mace]
---
<span id='head'></span>  
> mace 是 2018年4月小米开源的移动端深度学习框架；  
github: <https://github.com/XiaoMi/mace>  
document: <https://mace.readthedocs.io/en/latest/>  
model zoo: <https://github.com/XiaoMi/mace-models>  


<!--more-->   
## 一、 安装  
### 1. Linux 环境  
1） 安装 bazel   
[官方安装指南](https://docs.bazel.build/versions/master/install.html)，[报错解决办法](hk)  

```shell
sudo apt-get install openjdk-8-jdk  #安装 Jdk8
# 增加 Bazel 的发布源
echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list
curl https://bazel.build/bazel-release.pub.gpg | sudo apt-key add -
sudo apt-get update && s get install bazel # 安装 Bazel
sudo apt-get upgrade bazel # 更新Bazel
bazel version    # 查看版本号并导入
export BAZEL_VERSION=0.13.1  

# 创建 bazel 环境
sudo mkdir bazel
cd bazel
sudo wget https://github.com/bazelbuild/bazel/releases/download/$BAZEL_VERSION/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh
sudo chmod +x bazel-*.sh
sudo ./bazel-$BAZEL_VERSION-installer-linux-x86_64.sh
```

2） 使用 docker  
docker 太大了……  
``shell
# Pull full edition docker image
docker pull registry.cn-hangzhou.aliyuncs.com/xiaomimace/mace-dev
# Build full edition docker image
docker build -t registry.cn-hangzhou.aliyuncs.com/xiaomimace/mace-dev ./docker/mace-dev

# 创建一个 mace-dev 的容器
docker run -it --privileged -d --name mace-dev \
           -v /dev/bus/usb:/dev/bus/usb --net=host \
           -v /local/path:/container/path \
           -v /usr/bin/docker:/usr/bin/docker \
           -v /var/run/docker.sock:/var/run/docker.sock \
           registry.cn-hangzhou.aliyuncs.com/xiaomimace/mace-dev
docker exec -it mace-dev /bin/bash    #  执行该容器
```



-------------------  
[End](#head)
{:.warning}  




## 附录
### A 补充说明
<span id="bazel_error">**1. 安装 Bazel 报错解决办法**</span>  
如果 `apt-get update && s get install bazel`  时报错，多是因为没有公钥，无法验证下列签名： NO_PUBKEY 7EA0A9C3F273FCD8
`W: 仓库 “http://mirrors.aliyun.com/docker-ce/linux/ubuntu xenial InRelease” 没有数字签名；
N: 无法认证来自该源的数据，所以使用它会带`  
解决办法：  
`sudo apt-key adv --recv-keys --keyserver keyserver.Ubuntu.com F273FCD8`    
*（最后的字符串是 PUBKEY 的后八位）*    

### B 参考资料
1. 十岁的小男孩. MACE(1)-----环境搭建[EB/OL]. <https://www.cnblogs.com/missidiot/p/9480033.html>. -/2019-01-30.  
1. Amusi. 小米开源自研移动端深度学习框架MACE[EB/OL]. <https://zhuanlan.zhihu.com/p/38712703>. 2018-06-30/2019-09-18.     
