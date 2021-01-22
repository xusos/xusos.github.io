---
layout: article
title:  "「Video」 ffmpeg 入门"
date:   2019-11-18 17:03:40 +0800
key: ffmpeg-foundation-20191118
aside:
  toc: true
category: [AI, video, video_library]
---
<span id='head'></span>  
> 功能：跨平台的音视频处理库；  
官网 <https://www.ffmpeg.org/>   
github：<https://github.com/FFmpeg/FFmpeg>   
[安装教程](/ai/video/video_library/2019/01/25/install.html)    

<!--more-->

# 1 参数
1. CV_FOURCC   
CV_FOURCC('M', 'J', 'P', 'G')：确定输出视频的编码规则；   
四个字符用来表示压缩帧的codec 例如：  

```python
CV_FOURCC('P','I','M','1') = MPEG-1 codec # 生成文件占用空间最大的编码方式，所占磁盘空间是最小的 5.7 倍
CV_FOURCC('M','J','P','G') = motion-jpeg codec
CV_FOURCC('M', 'P', '4', '2') = MPEG-4.2 codec # 生成文件占用空间最小的编码方式
CV_FOURCC('D', 'I', 'V', '3') = MPEG-4.3 codec
CV_FOURCC('D', 'I', 'V', 'X') = MPEG-4 codec
CV_FOURCC('U', '2', '6', '3') = H263 codec
CV_FOURCC('I', '2', '6', '3') = H263I codec
CV_FOURCC('F', 'L', 'V', '1') = FLV1 codec
```

若编码器代号为 -1，则运行时会弹出一个编码器选择框；   

# 2 常用命令


-------------------  
[End](#head)
{:.warning}  


## 附录

### A 推荐资料
1. 学习资料汇总. <https://github.com/feixiao/ffmpeg>.     
1. [FFMPEG系列课程（二）读取视频帧](https://blog.51cto.com/xiacaojun/1887659)    
1. [c++ 解码音频和视频并处理两个流 – ffmpeg,sdl,opencv](https://codeday.me/bug/20180902/242403.html)    
1. [利用ffmpeg和opencv进行视频的解码播放](https://blog.csdn.net/JasonDing1354/article/details/41212425)    
1. [ffmpeg解码视频文件并播放](https://blog.csdn.net/a499957739/article/details/82625493)    

1. [FFmpeg：视频转码、剪切、合并、播放速调整](https://fzheng.me/2016/01/08/ffmpeg/)    


### 参考文献
