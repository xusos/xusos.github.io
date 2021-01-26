---
layout: article
title: OpenWrt(LEDE)编译
date: 2020-04-15 15:03:59
categories: 技术
tags:
- openwrt
- lede
- 软路由
author: 未厅堂
key: compile-openwrt-on-linux-20200421
aside:
  toc: true
category: [software, openwrt]
---

<span id='head'></span>

<!-- * content
{:toc}
-->
编译环境需要Linux系统，本教程使用Ubuntu，其他Linux系统也是可以的(必须可以翻墙) 
注意:
1.  不要用 root 用户 git 和编译！！!
2.  国内用户编译前最好准备好梯子 
3.  默认登陆IP 192.168.1.1, 密码 password 
 
<!--more-->


####  编译命令如下: 

1. 首先装好 Ubuntu 64bit，推荐  Ubuntu  14 LTS x64 
2. 命令行输入 ```bash sudo apt-get update ```，然后输入

```bash
sudo apt-get -y install build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint device-tree-compiler 
 ```

1. 
```bash git clone https://github.com/coolsnowwolf/lede ``` 命令下载好源代码，然后 ```bash cd lede ``` 进入目录 
 

2. 
```bash ./scripts/feeds update -a  
   ./scripts/feeds install -a 
   make menuconfig  
 ```

3. 最后选好你要的路由，输入 ```bash make -j1 V=s``` （-j1 后面是线程数。第一次编译推荐用单线程，国内请尽量全局科学上网）即可开始编译你要的固件了。 
 

 
#### 操作方法：
上下键：移动选标  左右键：移动编辑界面下边的功能选标（如：esc退出、Help帮助、Save保存、load加载） 回车键：进入  ESC键双击：返回上一级  空格键：选择（*是编译时加入此功能和对应文件，M是编译时只是显示没有对文件） 
```bash
Target System (Broadcom BCM63xx)  --->               #选择你要需要生成那种CPU的固件 

Target Profile (Alcatel RG100A)  --->                        #固件界面显示的型号（如：阿尔卡特rg100a）

LuCI  --->                                      #界面工能添加
Collections                                                             #web界面样式 ,你随便选一个就行，多选也可但是会加大固件的体积。 

Modules   --->Translations   --->Chinses (zh-cn)          #web界面加入中文，只选这一个，多选也可但是会加大固件体积 

Applications                                                           #web界面里有的功能 
luci-app-qos                                                #qos限速 

 
#### 最后生成刷机用的BIN固件（三选一） 

   make V=99          #生成固件并显示成生的每一个步奏及正确性。速度最慢，建议首次生成时使用（3小时左右）。 


   make V=s           #生成固件忽略不影响固件主功能的错误 

 
   make -j4 V=s       #调用CPU全部性能来生成固件，相对速度最快，但首次生成时不建议使用。 
```
等完成后，会在openwrt源码主目录下有一个BIN目录，在BIN目录下边多级目录下找你的BIN刷机文件 
---
openwrt 中英对应
```bash
LuCI ---> Applications ---> luci-app-accesscontrol  #访问时间控制 
LuCI ---> Applications ---> luci-app-adblock   #ADB广告过滤 
LuCI ---> Applications ---> luci-app-adbyby-plus  #广告屏蔽大师Plus + 
LuCI ---> Applications ---> luci-app-adbyby   #广告过滤大师（已弃） 
LuCI ---> Applications ---> luci-app-adkill   #广告过滤（已弃） 
LuCI ---> Applications ---> luci-app-advanced-reboot  #Linksys高级重启 
LuCI ---> Applications ---> luci-app-ahcp  #支持AHCPd 
LuCI ---> Applications ---> luci-app-aliddns   #阿里DDNS客户端（已弃，集成至ddns） 
LuCI ---> Applications ---> luci-app-amule  #aMule下载工具 
LuCI ---> Applications ---> luci-app-aria2 # Aria2下载工具 
LuCI ---> Applications ---> luci-app-arpbind  #IP/MAC绑定 
LuCI ---> Applications ---> luci-app-asterisk  #支持Asterisk电话服务器 
LuCI ---> Applications ---> luci-app-attendedsysupgrade  #固件更新升级相关 
LuCI ---> Applications ---> luci-app-autoreboot  #支持计划重启 
LuCI ---> Applications ---> luci-app-baidupcs-web  #百度网盘管理   * 
LuCI ---> Applications ---> luci-app-bcp38  #BCP38网络入口过滤（不确定） 
LuCI ---> Applications ---> luci-app-bird4   #Bird 4（未知） 
LuCI ---> Applications ---> luci-app-bird6   #Bird 6（未知） 
LuCI ---> Applications ---> luci-app-bmx6  #BMX6路由协议 
LuCI ---> Applications ---> luci-app-bmx7  #BMX7路由协议 
LuCI ---> Applications ---> luci-app-caldav  #联系人（已弃） 
LuCI ---> Applications ---> luci-app-cjdns  #加密IPV6网络相关 
LuCI ---> Applications ---> luci-app-clamav  #ClamAV杀毒软件 
LuCI ---> Applications ---> luci-app-commands   #Shell命令模块 
LuCI ---> Applications ---> luci-app-cshark   #CloudShark捕获工具 
LuCI ---> Applications ---> luci-app-ddns   #动态域名 DNS（集成阿里DDNS客户端） 
LuCI ---> Applications ---> luci-app-diag-core   #core诊断工具 
LuCI ---> Applications ---> luci-app-dnscrypt-proxy  #DNSCrypt解决DNS污染 
LuCI ---> Applications ---> luci-app-dnsforwarder  #DNSForwarder防DNS污染 
LuCI ---> Applications ---> luci-app-dnspod  #DNSPod 
LuCI ---> Applications ---> luci-app-docker  #Docker容器   * 
LuCI ---> Applications ---> luci-app-dump1090  #民航无线频率（不确定） 
LuCI ---> Applications ---> luci-app-dynapoint  #DynaPoint（未知） 
LuCI ---> Applications ---> luci-app-e2guardian   #Web内容过滤器 
LuCI ---> Applications ---> luci-app-familycloud   #家庭云盘 
LuCI ---> Applications ---> luci-app-filetransfer  #文件传输（可web安装ipk包） 
LuCI ---> Applications ---> luci-app-firewall   #添加防火墙 
LuCI ---> Applications ---> luci-app-flowoffload  #Turbo ACC网络加速（集成FLOW,BBR,NAT,DNS..   *   
LuCI ---> Applications ---> luci-app-freifunk-diagnostics   #freifunk组件 诊断（未知） 
LuCI ---> Applications ---> luci-app-freifunk-policyrouting  #freifunk组件 策略路由（未知） 
LuCI ---> Applications ---> luci-app-freifunk-widgets  #freifunk组件 索引（未知） 
LuCI ---> Applications ---> luci-app-frpc   #内网穿透 Frp 
LuCI ---> Applications ---> luci-app-fwknopd  #Firewall Knock Operator服务器 
LuCI ---> Applications ---> luci-app-guest-wifi   #WiFi访客网络 
LuCI ---> Applications ---> luci-app-gfwlist   #GFW域名列表（已弃） 
LuCI ---> Applications ---> luci-app-haproxy-tcp   #HAProxy负载均衡-TCP 
LuCI ---> Applications ---> luci-app-hd-idle  #硬盘休眠 
LuCI ---> Applications ---> luci-app-hnet  #Homenet Status家庭网络控制协议 
LuCI ---> Applications ---> luci-app-ipsec-virtual**d  #virtual**服务器 IPSec 
LuCI ---> Applications ---> luci-app-kodexplorer  #KOD可道云私人网盘 
LuCI ---> Applications ---> luci-app-kooldns  #virtual**服务器 ddns替代方案（已弃） 
LuCI ---> Applications ---> luci-app-koolproxy  #KP去广告（已弃） 
LuCI ---> Applications ---> luci-app-lxc   #LXC容器管理 
LuCI ---> Applications ---> luci-app-meshwizard #网络设置向导 
LuCI ---> Applications ---> luci-app-minidlna   #完全兼容DLNA / UPnP-AV客户端的服务器软件 
LuCI ---> Applications ---> luci-app-mjpg-streamer   #兼容Linux-UVC的摄像头程序 
LuCI ---> Applications ---> luci-app-mmc-over-gpio   #添加SD卡操作界面（已弃） 
LuCI ---> Applications ---> luci-app-multiwan   #多拨虚拟网卡（已弃，移至syncdial） 
LuCI ---> Applications ---> luci-app-mwan   #MWAN负载均衡（已弃） 
LuCI ---> Applications ---> luci-app-mwan3   #MWAN3负载均衡 
LuCI ---> Applications ---> luci-app-mwan3helper   #MWAN3分流助手 
LuCI ---> Applications ---> luci-app-n2n_v2   #N2N内网穿透 N2N v2 virtual**服务 
LuCI ---> Applications ---> luci-app-netdata  #Netdata实时监控（图表）   * 
LuCI ---> Applications ---> luci-app-nft-qos  #QOS流控 Nftables版（已弃） 
LuCI ---> Applications ---> luci-app-ngrokc  #Ngrok 内网穿透（已弃） 
LuCI ---> Applications ---> luci-app-nlbwmon   #网络带宽监视器 
LuCI ---> Applications ---> luci-app-noddos  #NodDOS Clients 阻止DDoS攻击 
LuCI ---> Applications ---> luci-app-nps  #内网穿透nps   * 
LuCI ---> Applications ---> luci-app-ntpc   #NTP时间同步服务器 
LuCI ---> Applications ---> luci-app-ocserv  #OpenConnect virtual**服务 
LuCI ---> Applications ---> luci-app-olsr  #OLSR配置和状态模块 
LuCI ---> Applications ---> luci-app-olsr-services  #OLSR服务器 
LuCI ---> Applications ---> luci-app-olsr-viz   #OLSR可视化 
LuCI ---> Applications ---> luci-app-openvirtual**  #Openvirtual**客户端 
LuCI ---> Applications ---> luci-app-openvirtual**-server  #易于使用的Openvirtual**服务器 Web-UI 
LuCI ---> Applications ---> luci-app-oscam   #OSCAM服务器（已弃） 
LuCI ---> Applications ---> luci-app-p910nd   #打印服务器模块 
LuCI ---> Applications ---> luci-app-pagekitec   #Pagekite内网穿透客户端 
LuCI ---> Applications ---> luci-app-polipo  #Polipo代理(是一个小型且快速的网页缓存代理) 
LuCI ---> Applications ---> luci-app-pppoe-relay  #PPPoE NAT穿透 点对点协议（PPP） 
LuCI ---> Applications ---> luci-app-p p t p-server  #virtual**服务器 p p t p 
LuCI ---> Applications ---> luci-app-privoxy  #Privoxy网络代理(带过滤无缓存) 
LuCI ---> Applications ---> luci-app-qbittorrent  #BT下载工具（qBittorrent） 
LuCI ---> Applications ---> luci-app-qos   #流量服务质量(QoS)流控 
LuCI ---> Applications ---> luci-app-radicale   #CalDAV/CardDAV同步工具 
LuCI ---> Applications ---> luci-app-ramfree  #释放内存 
LuCI ---> Applications ---> luci-app-rp-pppoe-server  #Roaring Penguin PPPoE Server 服务器 
LuCI ---> Applications ---> luci-app-samba   #网络共享（Samba） 
LuCI ---> Applications ---> luci-app-samba4   #网络共享（Samba4） 
LuCI ---> Applications ---> luci-app-sfe  #Turbo ACC网络加速（已弃，移至flowoffload） 
LuCI ---> Applications ---> luci-app-s-s   #SS兲朝上网（已弃） 
LuCI ---> Applications ---> luci-app-s-s-libes  #SS-libev服务端 
LuCI ---> Applications ---> luci-app-shairplay  #支持AirPlay功能 
LuCI ---> Applications ---> luci-app-siitwizard  #SIIT配置向导  SIIT-Wizzard 
LuCI ---> Applications ---> luci-app-simple-adblock  #简单的广告拦截 
LuCI ---> Applications ---> luci-app-softethervirtual**  #SoftEther virtual**服务器  NAT穿透   * 
LuCI ---> Applications ---> luci-app-splash  #Client-Splash是无线MESH网络的一个热点认证系统 
LuCI ---> Applications ---> luci-app-sqm  #流量智能队列管理（QOS） 
LuCI ---> Applications ---> luci-app-squid   #Squid代理服务器 

---

LuCI ---> Applications ---> luci-app-S-S R-plus   #S-S R兲朝上网Plus+ 
LuCI ---> Applications ---> luci-app-S-S R-plus ---> Include s-s New Versiong  #新SS代理 
LuCI ---> Applications ---> luci-app-S-S R-plus ---> Include v2瑞  #V2Ray透明代理 
LuCI ---> Applications ---> luci-app-S-S R-plus ---> Include Kcptun  #Kcptun代理 
LuCI ---> Applications ---> luci-app-S-S R-plus ---> Include s-sR Server  #S-S R服务器 
LuCI ---> Applications ---> luci-app-S-S R-plus ---> Include s-sR Socks and Tunnel  #S-S R代理 

---

LuCI ---> Applications ---> luci-app-S-S R-pro  #S-S R-Pro（已弃） 
LuCI ---> Applications ---> luci-app-S-S Rserver-python  #s-sR Python服务器 
LuCI ---> Applications ---> luci-app-statistics  #流量监控工具 
LuCI ---> Applications ---> luci-app-syncdial  #多拨虚拟网卡（原macvlan） 
LuCI ---> Applications ---> luci-app-tinyproxy  #Tinyproxy是 HTTP(S)代理服务器 
LuCI ---> Applications ---> luci-app-transmission   #BT下载工具 
LuCI ---> Applications ---> luci-app-travelmate  #旅行路由器 
LuCI ---> Applications ---> luci-app-ttyd   #网页终端命令行 
LuCI ---> Applications ---> luci-app-udpxy  #udpxy做组播服务器 
LuCI ---> Applications ---> luci-app-uhttpd  #uHTTPd Web服务器 
LuCI ---> Applications ---> luci-app-unblockmusic  #解锁网易云灰色歌曲 
LuCI ---> Applications ---> luci-app-unbound  #Unbound DNS解析器 
LuCI ---> Applications ---> luci-app-upnp   #通用即插即用UPnP（端口自动转发） 
LuCI ---> Applications ---> luci-app-usb-printer   #USB 打印服务器 
LuCI ---> Applications ---> luci-app-v2瑞-server   #V2Ray 服务器 
LuCI ---> Applications ---> luci-app-v2瑞-pro  #V2Ray透明代理（已弃，集成S-S R） 
LuCI ---> Applications ---> luci-app-verysync  #微力同步   * 
LuCI ---> Applications ---> luci-app-vlmcsd  #KMS服务器设置 
LuCI ---> Applications ---> luci-app-vnstat   #vnStat网络监控（图表） 
LuCI ---> Applications ---> luci-app-virtual**bypass  #virtual** BypassWebUI  绕过virtual**设置 
LuCI ---> Applications ---> luci-app-vsftpd  #FTP服务器 
LuCI ---> Applications ---> luci-app-watchcat  #断网检测功能与定时重启 
LuCI ---> Applications ---> luci-app-webadmin  #Web管理页面设置 
LuCI ---> Applications ---> luci-app-webshell  #网页命令行终端（已弃） 
LuCI ---> Applications ---> luci-app-wifischedule  #WiFi 计划 
LuCI ---> Applications ---> luci-app-wireguard  #virtual**服务器 WireGuard状态 
LuCI ---> Applications ---> luci-app-wireless-regdb  #WiFi无线 
LuCI ---> Applications ---> luci-app-wol   #WOL网络唤醒 
LuCI ---> Applications ---> luci-app-wrtbwmon  #实时流量监测 
LuCI ---> Applications ---> luci-app-xlnetacc  #迅雷快鸟 
LuCI ---> Applications ---> luci-app-zerotier  #ZeroTier内网穿透 

---

支持 iPv6： 
Extra packages  --->  ipv6helper  （选定这个后下面几项自动选择了） 
Network  --->  odhcp6c 
Network  --->  odhcpd-ipv6only 
LuCI  --->  Protocols  --->  luci-proto-ipv6 
LuCI  --->  Protocols  --->  luci-proto-ppp 
Utilities  --->  open-vm-tools  #打开适用于VMware的VM Tools 
```

[返回顶部](#head)
{:.warning}