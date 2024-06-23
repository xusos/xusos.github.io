---
layout: article
title:  "用 github 和 jekyll 搭建个人博客"
date:   2018-10-09 14:44:40 +0800
key: gitjek20181009
aside:
  toc: true
category: [tool, blog]
---
<span id='head'></span>

<!--more-->


# 1 安装
```
apt install ruby ruby-dev
gem install bundler jekyll
# cd 工程目录
bundle exec jekyll serve
bundle install
```


# 2 报错
1. Jekyll serve 启动失败  

<!--more-->

```
WARN: Unresolved specs during Gem::Specification.reset:
      jekyll-watch (~> 2.0)
WARN: Clearing out unresolved specs.
Please report a bug if this causes problems.
Configuration file: /smartadpole.github.io/_config.yml
            Source: /smartadpole.github.io
       Destination: /smartadpole.github.io/_site
 Incremental build: disabled. Enable with --incremental
      Generating...
                    done in 16.287 seconds.
FATAL: Listen error: unable to monitor directories for changes.
Visit https://github.com/guard/listen/wiki/Increasing-the-amount-of-inotify-watchers for info on how to fix this.
```
**解决**：  `echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p`   
`WARN: Unresolved specs during Gem::Specification.reset:`   
**解决**：  `bundle exec jekyll serve`     
`Incremental build: disabled. Enable with --incremental`     
**解决**：  `bundle exec jekyll serve --incremental`      

1. 构建速度慢   
**解决**：  `nohup bundle exec jekyll serve --drafts --incremental &`      
*需要把 nohup.out 文件加入到 _config.yml 的 exclude 列表才能避免死循环 exclude: ["nohup.out"]*        


writing…… :ghost:



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
