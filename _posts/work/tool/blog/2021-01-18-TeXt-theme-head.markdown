---
layout: article
title:  "TeXt theme 下实现文章分类"
date:   2021-01-18 17:34:40 +0800
key:    text-theme-head
aside:
  toc: true
category: [tool, blog]
---
<span id='head'></span>
>关于使用 `TeXt theme` 时，想要实现文章分类显示的办法；主要思路是使用 head + 导航页面 + 文章分类的功能；   

<!--more-->
简介：    
- 先给文章文类；    
- 编写一个页面，过滤出特定类别；    
- 添加 head，并嵌入到上一个页面中，以实现多类别聚合；    

# 1 带标签的文章    
页面示例：`2021-01-18-hello.md`           
```shell
---
layout: article                       # 不变
title:  "TeXt theme 下实现文章分类"     # 文章标题
date:   2021-01-18 17:34:40 +0800     # 编写时间，不要超过当前系统时间，否则编译不通过
key:    text-theme-head               # 文章的唯一 ID，不要重复了
aside:
  toc: true
category: [tool, blog]                # 重点来了，这是类别标签（什么名字都可以，别和其他标签重了）
---
```
最终编译完，页面路径是 `/tool/blog/2021/01/18/hello.html`，很明显，标签已经进入到了 url 中，这也是后续实现文章分类的关键——关键字过滤；    

# 2 分类页面
<center class="half">
  <img src="/assets/images/tools/blog/head/demo.png" height="300">
</center>

这是一个完成分类的页面，当前页面都是和 blog 构建相关的文章；首先可以确定的是，最终分类所得的列表是一个页面，也就是此处的 `/assets/category/work/tool/blog.html`，也就是说，当你想实现一个文章分类功能时，去编写一个 `/assets/category/**/*.html` 即可；      
注意：html 存在于多少层的子目录中，没有关系；    

示例：[/assets/category/work/tool/blog.html](https://github.com/smartadpole/smartadpole.github.io/blob/master/assets/category/work/tool/blog.html)    

详情，查阅[源码](https://github.com/smartadpole/smartadpole.github.io/blob/master/assets/category/work/tool/blog.html)    

```shell
# 头部 和文章一样；
---
layout: articles
titles:
    en:       Blog
    zh:       博客
    zh-Hans:  博客
    zh-Hant:  博客
sidebar:
    nav: TOOL       # 此处暂不说明   
---
...
        if cat[0] == "blog"               # 重点在这里，就是第一步写上去的标签
...
```

截止目前，已经实现了文章分类的功能；但是去哪里找这个分好类的页面呢；     
往下看......


# 3 展示结果
当我们有较多分好类的页面时，那么我们想实现像文档目录一样的功能，怎么做——用 `_data/navigation.yml`；   
该文件中默认是标题栏：    
```shell
header:
  - titles:
      en:       software                                      # 名称
      zh:       软件
    url:        /assets/category/work/software/software.html  # 超链接
```

我们就利用这个功能，实现目录结构；   
编辑该文件，添加属于自己的目录

```
TOOL:                                                    # 目录 ID，唯一
  - title:      工具                                      # 一级目录名字
    children:
      - title:  博客                                      # 二级目录名字
        url:    /assets/category/work/tool/blog.html     # 二级目录链接（此处填写我们上一步写好的分类页面）
      - title:  Office
        url:    /assets/category/work/tool/office.html
```
而此处的目录 ID，就是要写入文章头部的、用来加载自制目录的关键字：    
```
layout: articles
titles:
    en:       Blog
    zh:       博客
sidebar:
    nav: TOOL
```

注：以及目录不支持添加超链接，但是支持名字为空    



以上示例代码中，使用时请把注释 `#...` 去掉；也可以查阅源码；    

-------------------  
[End](#head)
{:.warning}  



## 附录
### A  推荐资料
1. **Jekyll 的基本用法**  
- jekyll. 常用变量. <https://jekyllcn.com/docs/variables/>.  
-  咖啡机（K.F.J）. 用jekyll制作高大上的网站（二）——实际应用. <https://www.cnblogs.com/strick/p/5484779.html>[EB/OL].    
- biezhi. Jekyll 中的配置和模板语法. <https://gist.github.com/biezhi/f88be58ef4ae0f3741bb36ab8daa53c5>[EB/OL].  
- Jekyll语法简单笔记. <http://ibloodline.com/articles/2014/12/15/jekyll-syntax.html>.  
