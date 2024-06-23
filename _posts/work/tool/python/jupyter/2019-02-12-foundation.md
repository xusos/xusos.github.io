---
layout: article
title:  "「工具」 启动 Jupyter"
date:   2019-02-12 10:00:40 +0800
key: jupyter-abc-20190212
aside:
  toc: true
category: [tool, python_tool]
---
<!--more-->

## 一、 启动

**1. 安装**
`pip install jupyter`  

**2. 启动**
`jupyter notebook $directory`  

## 二、 进阶操作
**1. 指定 python 内核版本**  
安装了多个 python 版本，要指定其中一个；  

```shell
# 1. 进入你所需的 python 环境
# 2. 安装 ipython
pip install ipykernel  

# 3. 将环境写入 notebook 的 kernel 中  
# 最终会在 ~/.local/share/jupyter/kernels 下新建一个文件夹，name1 是文件夹名称， name2 是 web 页面显示出来的 kernal 名称
python -m ipykernel install --user --name $name1 --display-name "$name2"

# 4. 进入 web 页面，在菜单栏中一次选择 kernel--Change kernel
```

**2. 指定端口**  
默认 web 地址是 `http://localhost:8888`，再启动，则端口号持续增 1；    
指定端口 `jupyter notebook --port=$port $directory`  

-------------------  
 End
{:.warning}  



## 附录
