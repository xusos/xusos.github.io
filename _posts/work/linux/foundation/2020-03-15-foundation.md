---
layout: article
title:  "「Linux」 基础"
date:   2020-03-15 22:06:40 +0800
key: linux-foundation
aside:
  toc: true
category: [school, linux]
sidebar:
  nav: Linux
---
<span id="head"></span>

<!--more-->

<center class="half">
<img src="/assets/images/linux/survey.png">&emsp;<br>图1：基础知识汇总
</center>  

# 1 基本命令

**1 文件管理**    

| | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- |
| cat | chattr | chgrp | chmod | chown | cksum | cmp | diff |
| diffstat | file | find | git | gitview | indent | cut | ln |
| less | locate | lsattr | mattrib | mc | mdel  | mdir | mktemp |
| more | mmove | mread | mren | mtools | mtoolstest | mv | od |
| paste | patch | rcp | rm | slocate | split | tee | tmpwatch |
| touch | umask | which | cp | whereis | mcopy | mshowfat | rhmask |
| scp | awk | read | updatedb |

**2 文档编辑**   

| | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- |
| col | colrm | comm | csplit | ed | egrep | ex | fgrep |
| fmt | fold | grep | ispell | jed | joe | join | look |
| mtype | pico | rgrep | sed | [sort](#sort) | spell | tr | expr |
| uniq | wc | let |

**3 文件传输**    

| | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- |
| lprm | lpr | lpq | lpd | bye | ftp | uuto | uupick |
| uucp | uucico | tftp | ncftp | ftpshut | ftpwho | ftpcount |

**4 磁盘管理**  

| | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- |
| cd | df | dirs | du | edquota | eject | mcd | mdeltree |
| mdu | mkdir | mlabel | mmd | mrd | mzip | pwd | quota |
| mount | mmount | rmdir | rmt | stat | tree | umount | ls |
| quotacheck | quotaoff | lndir | repquota | quotaon |

**5 磁盘维护**  

| | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- |
| badblocks | cfdisk | dd | e2fsck | ext2ed | fsck | fsck.minix | fsconf |
| fdformat | hdparm | mformat | mkbootdisk | mkdosfs | mke2fs | mkfs.ext2 | mkfs.msdos |
| mkinitrd | mkisofs | mkswap | mpartition | swapon | symlinks | sync | mbadblocks |
| mkfs.minix | fsck.ext2 | fdisk | losetup | mkfs | sfdisk | swapoff |     

**6 网络通讯**  

| | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- |
| apachectl | arpwatch | dip | getty | mingetty | uux | telnet | uulog |
| uustat | ppp-off | netconfig | nc | httpd | ifconfig | minicom | mesg |
| dnsconf | wall | netstat | ping | pppstats | samba | setserial | talk |
| traceroute | tty | newaliases | uuname | netconf | write | statserial | efax |
| pppsetup | tcpdump | ytalk | cu | smbd | testparm | smbclient | shapecfg |

**7 系统管理**  

| | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- |
| adduser | chfn | useradd | date | exit | finger | fwhios | sleep |
| suspend | groupdel | groupmod | halt | kill | last | lastb | login |
| logname | logout | ps | nice | procinfo | top | pstree | reboot |
| rlogin | rsh | sliplogin | screen | shutdown | rwho | sudo | gitps |
| swatch | tload | logrotate | uname | chsh | userconf | userdel | usermod |
| vlock | who | whoami | whois | newgrp | renice | su | skill |
| w | id | groupadd | free |

**8 系统设置**  

| | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- |
| reset | clear | alias | dircolors | aumix | bind | chroot | clock |
| crontab | declare | depmod | dmesg | enable | eval | export | pwunconv |
| grpconv | rpm | insmod | kbdconfig | lilo | liloconfig | lsmod | minfo |
| set | modprobe | ntsysv | mouseconfig | passwd | pwconv | rdate | resize |
| rmmod | grpunconv | modinfo | time | setup | sndconfig | setenv | setconsole |
| timeconfig | ulimit | unset | chkconfig | apmd | hwclock | mkkickstart | fbset |
| unalias | SVGATextMode | gpasswd |


**9 备份压缩**  

| | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- |
| ar | bunzip2 | bzip2 | bzip2recover | gunzip | unarj | compress | cpio |
| dump | uuencode | gzexe | gzip | lha | restore | tar | uudecode |
| unzip | zip | zipinfo |

**10 设备管理**  

| | | | | | |
| --- | --- | --- | --- | --- | --- |
| setleds | loadkeys | rdev | dumpkeys | MAKEDEV | poweroff |

-------------------  
[End](#head)
{:.warning}  


# 附录
## A 参考资料
1. [Linux 命令大全](https://www.runoob.com/linux/linux-command-manual.html)     

## B 命令
<span id='find'> **find** </span>


<span id='sort'> **sort** </span>
针对文本文件的内容，以行为单位来排序
>sort [-bcdfimMnr][-o<输出文件>][-t<分隔字符>][+<起始栏位>-<结束栏位>][--help][--verison][文件]

```
-b 忽略每行前面开始出的空格字符
-c 检查是否已排序，乱序时输出第一个乱序行
-C 同上，乱序时输出 1
-d 排序时，处理英文字母、数字及空格字符外，忽略其他的字符
-f 忽略大小写
-i 排序时，除了040至176之间的ASCII字符外，忽略其他的字符
-k 指定按第几列排序（有间隔符）
-m 将几个排序好的文件进行合并
-M 将前面3个字母依照月份的缩写进行排序
-n 按数值排序
-u 去重
-o <输出文件> 和重定向一样，只不过可以输出到原文件
-r 反序（默认是升序）
-t<分隔字符> 指定排序时所用的栏位分隔字符
+<起始栏位>-<结束栏位> 以指定的栏位来排序，范围由起始栏位到结束栏位的前一栏位
--help 显示帮助
--version 显示版本信息
```
