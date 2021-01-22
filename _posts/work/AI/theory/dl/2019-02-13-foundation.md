---
layout: article
title:  "「DL」 深度学习资料汇总"
date:   2019-02-13 14:08:40 +0800
key: dl-foundation-20190213
aside:
  toc: true
category: [AI, DL]
tags: 资源
---


# 1 资料
## 1.1 推荐书籍

## 1.2 推荐资料
1. [Convolutional Neural Network (CNN)](https://developer.nvidia.com/discover/convolutional-neural-network) NVIDIA 博客；    

## 1.3 常用网站
  [使用 RSS 订阅以下网站](#rss) 关注 DL 最新动向  
- **arxiv**: <https://arxiv.org/list/cs.CV/recent>, <https://arxiv.org/list/cs/new>  
  recent 包含最新发布的论文；new 包含最新更新的论文（发布和覆盖）；二者都是每周一至周五更新；  
- **reddit ML**: <https://www.reddit.com/r/MachineLearning/comments/807ex4/d_machine_learning_wayr_what_are_you_reading_week/>  
- **PaperWeekly**: <http://www.paperweekly.site>   
有点像中文版 Reddit；
- **papers with code**: <https://paperswithcode.com/>  
论文及其开源代码；  
- **CVPapers**: <http://www.cvpapers.com/index.html>   
不完整的顶会论文链接；  
- **知乎专栏**  
  [炼丹实验室](https://zhuanlan.zhihu.com/paperweekly)，
  [机器之心](https://zhuanlan.zhihu.com/jiqizhixin)，
  [PaperWeekly](https://zhuanlan.zhihu.com/paperweekly)，
  [深度学习：从入门到放弃](https://zhuanlan.zhihu.com/startdl)，
  [智能单元](https://zhuanlan.zhihu.com/easyml)，
  [深度学习大讲堂](https://zhuanlan.zhihu.com/dlclass)


# 2 Paper

# 附录
## A 福利
<span id="rss">**1. RSS 订阅**</span>  
[RSS 使用教程](/tool/worktool/2019/02/15/paper-manage.html)  

| 网站 | 官方订阅源 | DIY 订阅源 |
| ---  | --- | --- |
| [CVPapers](http://www.cvpapers.com/index.html) | <http://www.cvpapers.com/rss/rss_builder.php?feed=all_conf.xml>  | - |
| [papers with code](https://paperswithcode.com/) | -  | <http://feed43.com/paper_with_code.xml> |
| [arxiv cv](https://arxiv.org/list/cs.CV/new) | <http://export.arxiv.org/rss/cs.CV/list/new>  | <http://feed43.com/cs_cv_arxiv.xml> |
| [arxiv AI](https://arxiv.org/list/cs.AI/new) | <http://export.arxiv.org/rss/cs.AI/list/new>  | <http://feed43.com/cs_ai_arxiv.xml> |
| [arxiv ML\|cs](https://arxiv.org/list/cs.LG/new) | <http://export.arxiv.org/rss/cs.LG/list/new>  | <http://feed43.com/cs_ml_arxiv.xml> |
| [arxiv ML\|stat](https://arxiv.org/list/stat.ML/new) | <http://export.arxiv.org/rss/stat.ML/list/new>  | <http://feed43.com/stat_ml_arxiv.xml> |
| [arxiv CL](https://arxiv.org/list/cs.CL/new)（NLP） | <http://export.arxiv.org/rss/cs.CL/list/new>  | <http://feed43.com/cs_cl_arxiv.xml> |
| [arxiv SD](https://arxiv.org/list/cs.SD/new)（Audio） | <http://export.arxiv.org/rss/cs.SD/list/new>  | <http://feed43.com/cs_sd_arxiv.xml> |

- arxiv：可订阅其他你感兴趣的方向，进入 <https://arxiv.org/> 点击你感兴趣的方向（可以是大类，也可以是子类），此时浏览器地址栏就会出现该类的代号 name，则官方订阅地址为 `https://arxiv.org/list/name/new`；    
- arxiv：若要订阅 recent，则用 recent 替换 new，即 `https://arxiv.org/list/name/recent`；  
- arxiv DIY 源与官方源不同之处在于：    
  - 加了一个「arxiv:*」的链接，该链接为 arxiv 中国站；  
    - 中国站的好处在于打开页面速度够快，尤其是打开 pdf 页面时，相比原地址简直是极速；   
    - 官方原地址有一个「Bibex」功能可以实时查看论文的引用文献和被引用文献，而中国站没有；   
    - 中国站相比原地址更新有延迟；也就是，会出现打开中国站找不到页面的情况；正常情况不会超过一天；  
    - 通过中国站页面打开 pdf 时，若显示找不到页面，则点一下刷新按钮就好了；或者两下:ghost:  
  - 因技术限制，作者一栏仅列出一作；  
  <img src="/assets/images/AI/dl/rss_diy.png" />  

| 牛人 |  DIY Arxiv 订阅源 |
| ---  | --- |
| [Geoffrey Hinton](https://arxiv.org/search/cs?query=Hinton%2CGeoffrey&searchtype=author&abstracts=show&order=-submitted_date&size=200)  | <http://feed43.com/8816051641082211.xml> |  
| [Yann LeCun](https://arxiv.org/search/cs?query=LeCun%2CYann&searchtype=author&abstracts=show&order=-submitted_date&size=200)  | <http://feed43.com/5512717073204631.xml> |  
| [Yoshua Bengio](https://arxiv.org/search/cs?query=Bengio%2CYoshua&searchtype=author&abstracts=show&order=-submitted_date&size=200)  | <http://feed43.com/5880838075107567.xml> |  
| [Andrej Karpathy]( https://arxiv.org/search/cs?query=Karpathy%2CAndrej&searchtype=author&abstracts=show&order=-submitted_date&size=200)  | <http://feed43.com/7414637034600352.xml> |  
| [andrew Y ng](https://arxiv.org/search/cs?query=andrew+Y.+ng&searchtype=all&abstracts=show&order=-submitted_date&size=200)  | <http://feed43.com/2800186250250146.xml> |  
| [Richard Socher](https://arxiv.org/search/cs?query=Socher%2CRichard&searchtype=author&abstracts=show&order=-submitted_date&size=200)  | <http://feed43.com/5541831443342470.xml> |  
| [Tomas Mikolov](https://arxiv.org/search/cs?query=Mikolov%2CTomas&searchtype=author&abstracts=show&order=-submitted_date&size=200)  | <http://feed43.com/2830160105833150.xml> |  
| [Oriol Vinyals](https://arxiv.org/search/cs?query=Vinyals%2COriol&searchtype=author&abstracts=show&order=-submitted_date&size=200)  | <http://feed43.com/1686532321280024.xml> |  
| [Percy Liang](https://arxiv.org/search/cs?query=Liang%2CPercy&searchtype=author&abstracts=show&order=-submitted_date&size=200)  | <http://feed43.com/4444260864411630.xml> |  
| [Jason Weston](https://arxiv.org/search/cs?query=Weston%2CJason&searchtype=author&abstracts=show&order=-submitted_date&size=200)  | <http://feed43.com/3183663186712823.xml> |  
| [Hang Li](https://arxiv.org/search/cs?query=Li%2CHang&searchtype=author&abstracts=show&order=-submitted_date&size=200)  | <http://feed43.com/7442140615102018.xml> |  
| [Tie-Yan Liu](https://arxiv.org/search/cs?query=Liu%2CTie-Yan&searchtype=author&abstracts=show&order=-submitted_date&size=200)  | <http://feed43.com/1141311574854217.xml> |  
| [Mu Li](https://arxiv.org/search/cs?query=Li%2CMu&searchtype=author&abstracts=show&order=-submitted_date&size=200)  | <http://feed43.com/7072005718068783.xml> |  

- 知乎专栏相关链接本身就可作为 RSS 源进行订阅；
- 「feed43」官方有个协议我没看太懂，就是说不让用制作好的源盈利；如果有一天被勒令停止分享，那么蝌蚪会及时撤销相关链接；  
- 如果发现上述 DIY 链接有可编辑的，请爱护公共资源不要擅自编辑，并及时在评论区告知蝌蚪:ghost:；  
- 欢迎在评论去推荐你认为优秀的技术网站；  

<span id="rss">**2. Arxiv 相关资源**</span>  
- Arixv Analytics: <http://arxitics.com/browse>  
  可以做笔记；  
- Arxiv Sanity Preserver: <http://www.arxiv-sanity.com/>  
  可以推荐相似文献；    
- Front for the arXiv:(Cornell University) <http://front.math.ucdavis.edu/>  
  - 可以收藏感兴趣的文章到 library
  - 会根据 library 里的文章做相关的推荐

<span id="rss">**3. Arxiv 相关技巧**</span>  
- <http://arxiv.org/list/cs.CV/1512>，可以查看 15 年 12 月的全部内容了;
- <http://arxiv.org/list/cs.CV/15>，可以查看 15 年的所有内容，其余也类似；  



## B 参考资料

[1].  萧瑟. 如何获取最新的深度学习资源[EB/OL]. <https://zhuanlan.zhihu.com/p/24887133>. 2017-01-18/2019-02-13.   
[2].  乾明. 进阶深度学习？这里有9个给程序员的建议[EB/OL]. <http://www.sohu.com/a/259389929_610300>. 2018-10-14/2019-02-13.   
[3].  DataH. 最新计算机视觉动态哪里看[EB/OL]. <https://blog.csdn.net/weixin_41863685/article/details/81837773>. 2018-08-19/2019-02-13.   

## C 研究员
1. [Sebastian Ruder](http://ruder.io/)    
1. [Yiqun Hu](https://sites.google.com/site/yiqunhu/)     
1. [Wu-Jun LI](https://cs.nju.edu.cn/lwj/)    
