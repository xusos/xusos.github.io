--- 
layout: article 
title:  "「VsCode」vscode-fileheader插件安装配置" 
date: 2021-06-20 14:25:28 +0800 
key: tool-vscode-2021-06-20 14:25:28 
aside:
	toc: true 
category: [software, tool, vscode] 
tags:
	vscode
author: 未厅堂 
--- 
 
<span id='head'></span>

# 1、安装vscode-fileheader插件
点击左下角齿轮搜索：vscode-fileheader

# 2、配置
在设置中搜索fileheader
配置以下三个选项：

"fileheader.Author": "Cong.Bu",
"fileheader.LastModifiedBy": "Cong.Bu"
Fileheader: Tpl

#3、使用
window系统使用**Ctrl+Alt+i**，mac系统使用**control+option+i**即可在文件顶部生成

自己的Fileheader: Tpl配置参数：

```
--- \r\nlayout: article \r\n「xxx」title:  "title" \r\ndate: {createTime} +0800 \r\nkey: python-lajihuishou-{updateTime} \r\naside:\r\n\ttoc: true \r\ncategory: [software, python, stnotes] \r\ntags:\r\n\tpython \r\nauthor: {author} \r\n--- \r\n \r\n<span id='head'></span>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n-------------------\r\n[返回顶部](#head)\r\n{:.warning}
```

-------------------
[返回顶部](#head)
{:.warning}
