---
layout: article
title:  "「Linux」 bash shell 进阶命令"
date:   2019-05-15 13:06:40 +0800
key: bahs-shell-advanced-20190515
aside:
  toc: true
category: [school, linux]
sidebar:
  nav: LinuxFoundation
---
<span id="head"></span>
>会用基本挂载命令；    

<!--more-->

# 1 程序
## 1.1 查看进程

## 1.2 监测进程

## 1.3 结束进程

# 2 磁盘
## 2.1 挂载
>**挂载**：把物理磁盘挂载到文件系统下的一个目录；
mount 可显示[系统挂载情况](#mount_info)；  

挂载本地磁盘：`mount` [`-t`](#mount_help)  [`type`](#file_type) `device` `directory`        
挂载 iso 文件：`mount` `-t` [`ios9660`](#file_type) `-o` [`loop`](#loop) `file.iso` `directory`       
挂载远程磁盘：`mount` `-t` [`nfs`](#mount_help) [`IP:/dir`](#install_nfs) `directory` [报错](#nfs_error)       
卸载：`umount [directory | device]`     
开机自动挂载：在 `/etc/rc.local` 中加入挂载命令；
{:.info}



$\bullet$ **系统挂载情况**     
`mount`：该命令会输出设备名称、挂载点、文件系统类型和访问状态；

<span id="mount_help"></span>     
$\bullet$ **常用参数**    
```
-a        挂载 /etc/fstab 文件中制定的所有文件系统
-f        模拟挂载设备，但并不真的挂在
-F        和 -a 一起使用，并行挂载所有文件系统
-v        详细输出挂载信息
-I        不启用任何 /sbin/mount.filesystem 下的文件系统帮助文件
-l        给 ext2、ext3 或 XFS 文件系统自动添加文件系统标签
-n        不注册到 /etc/mtab 已挂载设备文件中
-s        忽略文件系统不支持的挂载项
-r        挂载为只读
-w        挂载为可读写（默认）
-L label  按指定 label 挂载
-U uuid   按指定 uuid 挂载
-O        和 -a 一起用，限制命令只作用于特定的一组文件系统上
-o        可指定以逗号分割的多组参数：
              ro          只读
              rw          只写
              user        允许普通用话挂载文件系统
              check=none  不进行完整性校验
              loop        挂载一个文件
```    

<span id="file_type"></span>     
$\bullet$ **常用文件系统类型**    
vfat：Windows 长文件系统；    
ntfs：WindwosNT、XP、Vista 和 Windows7 中的高级文件系统；    
iso9660：标准 CD-ROM 文件系统；     
*通常 U 盘和软盘会用 vfat 格式，CD 必须用 iso9660；*    

<span id="install_nfs"></span>     
$\bullet$ **配置远程挂载环境**        
- 安装配置 NFS 服务器：`sudo apt-get install nfs-kernel-server nfs-common`      
- 配置参数：在 `vim /etc/exports` 文件最后一行加入 `remote_directory *(rw,sync,no_root_squash)` *表示允许所有的网段访问，也可以使用具体的IP；     
- 更新配置：`exportfs -r`   
- 查看配置是否生效：`showmount -e` 会输出 `remote_directory`    
- 重启nfs服务：`/etc/init.d/nfs-kernel-server restart`      

<span id="nfs_error"></span>          
$\bullet$ **远程挂载失败解决办法**     
出现 `mount.nfs:access denied by server while mounting` 问题：       
- 修改需挂载的 nfs 目录权限：`chmod 755 /home/dhcc/nfs`    
- 如果端口号大于 1024，则需要将 `insecure` 选项加入到配置文件 `/etc/exports`，即 `remote_directory`  [`*(insecure,rw,sync,no_root_squash)`](#nfs_help)      
- 修改 `/etc/sysconfig/nfs` 文件
```
shell
# Turn off v2 and v3 protocol support
#  RPCNFSDARGS="-N 2 -N 3"
# Turn off v4 protocol support
#RPCNFSDARGS="-N 4"    # 把这句话的#号去掉
```
*NFS分为三个版本，即 NFS-2 NFS-3 NFS-4，该配置文件默认关闭了这三个的 NFS 版本，我们只需要打开NFS-4即可；*    


<span id="nfs_help"></span>      
$\bullet$ **远程挂载 NFS 常用参数如下：**    

```
ro                只读访问
rw                读写访问 sync 所有数据在请求时写入共享
async             nfs 在写入数据前可以响应请求
secure            nfs 通过 1024 以下的安全 TCP/IP 端口发送
insecure          nfs 通过1024以上的端口发送
wdelay            如果多个用户要写入nfs目录，则归组写入(默认)
no_wdelay         如果多个用户要写入nfs目录，则立即写入，当使用async时，无需此设置
hide              在 nfs 共享目录中不共享其子目录
no_hide           共享 nfs 目录的子目录
subtree_check     如果共享 `/usr/bin` 之类的子目录时，强制 nfs 检查父目录的权限(默认)
no_subtree_check  和上面相对，不检查父目录权限
all_squash        共享文件的 UID 和 GID 映射匿名用户 anonymous，适合公用目录
no_all_squash     保留共享文件的 UID 和 GID(默认)
root_squash       root 用户的所有请求映射成如 anonymous 用户一样的权限(默认)
no_root_squas     root 用户具有根目录的完全管理访问权限
anonuid=xxx       指定 nfs 服务器 `/etc/passwd` 文件中匿名用户的 UID
anongid=xxx       指定 nfs 服务器 `/etc/passwd` 文件中匿名用户的 GID
```

## 2.2 df

## 2.3 du

# 3 文件
## 3.1 排序

## 3.2 搜索

## 3.3 压缩

## 3.4 归档

-------------------  
[End](#head)
{:.warning}  


# 附录
## A 参考资料
1. erbing. Linux下通过NFS将远程磁盘mount到本地[EB/OL]. <https://www.linuxidc.com/Linux/2016-04/130504.htm>. 2016-04-21/2020-01-19.    
