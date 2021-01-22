---
layout: article
title:  "「Shell」 脚本基础"
date:   2019-05-15 13:16:40 +0800
key: basic-scripts-20190515
aside:
  toc: true
category: [school, linux, Shell]
sidebar:
  nav: Linux
---
<span id="head"></span>
>用来执行多条命令；    
<!--more-->

# 1 多条命令
date; who
{:.info}    
*最大字符数不能超过 255*   

# 2 shell 文件

#!/bin/bash    
date   
who    
{:.info}    

- 首行必须是上述指令，用来制定执行脚本所用的 shell    
- 不同命令放在不同行    
- `#` 用来注释    

执行命令：    
*因为 shell 命令需要找到脚本，首先会去 $PATH 中查找脚本*     
- 方法一：`bash xxx.sh`     
- 方法二：指定绝对或相对路径 `./xxx.sh`     
- 方法三：将脚本所在路径添加到 `$PATH` 中     

*提示权限不够时，`chmod u+x xxx.sh` 为用户赋予执行权限即可*    

# 3 基本操作
## 3.1 打印信息
打印字符串：`echo “string ”`   
{:.info}     

- 可以不加引号，这时无法显示字符串后边的空格；    
- 用 `-n` 参数指定不换行；   

## 3.2 变量
赋值：`name=10`     
取值：`echo $name`  
{:.info}     

环境变量：     
```shell
set # 输出所有环境变量
echo $USER # 打印 USER 环境变量
用户变量：
```shell
name=‘t’ #最长长度 20 字符；区分大小写；=左右不能出现空格
```

## 3.3 反引号
执行 command 命令：\``command`\`   
{:.info}    

用来执行命令；   
```shell
today=`date +%y%m%d`
echo log.$today # 常用来做日志命令
```

## 3.4 重定向
>需要保存终端显示消息或从文本输入数据的时候，就需要用重定向；    

输出：`command` `>` `outputfile`     
输入：`command` `<` `outputfile`     
{:.info}    


## 3.5 管道
>一个命令作为另一个命令的输入    

`command` `|` `outputfile`     
{:.info}    

```shell
set | more  # set 命令输出结果会一闪而过，more 强制让输出信息按屏显示； more、less 是文本分页命令
```
# 7 数学运算

# 8 退出


-------------------  
[End](#head)
{:.warning}  


# 附录
## A 参考资料
1. 鹤鹤有明. Shell重定向 ＆>file、2>&1、1>&2 、/dev/null的区别[EB/OL]. <https://blog.csdn.net/u011630575/article/details/52151995>. 2016-08-08/2020-01-19.   
