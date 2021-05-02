---
layout: article
title:  "人声提取"
date:   2018-12-29 8:16:40 +0800
key: speaker-diarization-20181229
aside:
  toc: true
category: [AI, Audio, VoiceprintAnalysis]
---

>又叫人声分离/割（speaker diarization）；  
目的：基于声纹特征的方式将不同说话人的声音分离出来；   

## 一、 基本思路
1. 语音分割：找到音频中发言人变化的点  
最简单的做法是
- 对语音进行**切片**；  
切片操作，早期/主流的是滑窗（1-2s 的窗口）；
- 提取每个语音片段的**声纹特征**；  
判断声纹片段是否只包含一个发言者，早期主流的是 BIC；  

2. 按规则**聚类**，得到说话人声片段，同时可得到发言人数量  
提特征，以供聚类（聚类，GMM，SVM；k-means，spectral clustering；RNN）；将聚类结果拼接在一起，即得到每个人的语音片段；    
2、3 中使用的特征是 MFCC，再加上简单的能量、过零率及和语音相关的共振峰；

3. **重分割**：优化聚类结果来提升说话人分类的精度    

早期指的是 2008 年；  


## 二、 Q&A [^1]
:o: 如果多人同时说话，频率叠加后，会被认为是新的发言者的声音；  

:o: 与标准的监督学习分类任务不同的是，说话人分类模型需要对新出现的说话人有着足够鲁棒的识别和分类性能，而在训练的过程中却无法囊括现实中各式各样的说话人。这在很大程度上限制了语音识别系统特别是在线系统的实时能力；  

:o: 典型的聚类方法如k均值和谱聚类等非监督算法对于在线说话人识别时，应对不断输入的音频流很难有效聚类；  

:o: 聚类的表现对于整个 Speaker diarization 有着重要的作用，这种无监督的方法占主流的情况下我们无法通过语音样本的监督学习来改进这些算法；  


## 附录
## A 资料
1. Speaker Diarization — The Squad Way <https://hackernoon.com/speaker-diarization-the-squad-way-2205e0accbda>.  
2. Accurate Online Speaker Diarization with Supervised Learning <https://ai.googleblog.com/2018/11/accurate-online-speaker-diarization.html>.  


### B 开源的人声提取软件
1. [ALIZE Speaker Diarization](https://en.wikipedia.org/w/index.php?title=ALIZE_Speaker_Diarization&action=edit&redlink=1) (last repository update: July 2016; last release: February 2013, version: 3.0): ALIZE Diarization System, developed at the University Of Avignon, a release 2.0 is available [2](http://alize.univ-avignon.fr/svn/LIA_RAL/branches/2.0/LIA_SpkSeg/).  
2. [SpkDiarization](http://www-lium.univ-lemans.fr/diarization/doku.php/welcome%7CLIUM) (last release: September 2013, version: 8.4.1): LIUM_SpkDiarization tool [3](http://www-lium.univ-lemans.fr/fr/content/liumspkdiarization).  
3. [Audioseg](https://en.wikipedia.org/w/index.php?title=Audioseg&action=edit&redlink=1) (last repository update: May 2014; last release: January 2010, version: 1.2): AudioSeg is a toolkit dedicated to audio segmentation and classification of audio streams. [4](http://gforge.inria.fr/projects/audioseg).   
4. [SHoUT](https://en.wikipedia.org/w/index.php?title=SHoUT&action=edit&redlink=1) (last update: December 2010; version: 0.3): SHoUT is a software package developed at the University of Twente to aid speech recognition research. SHoUT is a Dutch acronym for Speech Recognition Research at the University of Twente. [5](http://shout-toolkit.sourceforge.net/).  
5. [pyAudioAnalysis](https://en.wikipedia.org/w/index.php?title=PyAudioAnalysis&action=edit&redlink=1) (last repository update: August 2018): Python Audio Analysis Library: Feature Extraction, Classification, Segmentation and Applications [6](https://github.com/tyiannak/pyAudioAnalysis).  
6. LIUM Speaker Diarization (http://www-lium.univ-lemans.fr/diarization/doku.php/welcome)
pyAudioAnalysis.   
7. https://github.com/hcook/gmm (based on http://digitalassets.lib.berkeley.edu/techreports/ucb/text/EECS-2011-128.pdf).   
8. SIDEKIT.  
9. https://projets-lium.univ-lemans.fr/s4d/.  
10. The Future of Lead Qualification <https://www.squadvoice.co/>.  
11. Powering The Future Of Work <https://www.squadplatform.com/>.   

### 参考文献
[^1]:  将门创投. 听不清谁在讲话？谷歌新模型助力分辨声音的主人[EB/OL]. <https://mp.weixin.qq.com/s?__biz=MzAxMzc2NDAxOQ==&mid=2650369555&idx=1&sn=c4a8352774785a3d40a18c030eae935d&scene=0#wechat_redirect>. 2018-11-15/2019-01-02.  
