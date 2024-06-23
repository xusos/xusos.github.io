---
layout: article
title:  "「AUDIO」 语音识别需求汇总"
date:   2018-12-29 8:06:40 +0800
key: audio-requirement-20181229
aside:
  toc: true
tags: 需求
category: [AI, audio, voiceprint_analysis]
---
<span id='head'></span>  
>


<!--more-->
## 1. 1：1 的身份认证以及 1：n 的身份识别
不限文本、不限语种的情况下，包括各种方言；其中 n 可能为几万；  

## 2. 判断音频中有几个人在说话  
1） 只需要判断人数，不需要知道他们分别在什么时间说话（number of speakers)   
一个简单的分类器即可，类似多人的 vocal activity detection (VAD)；  
2） 判断人数并且知道他们说话的时间点（speaker diarization）  
大多基于说话人的i-vector或某些能体现说话人信息的特征；  
3） 判断人数并且分离每个人的说话声（multi-talker separation）  
在单通道情况一般3人及以下的音频里，分离效果已经不错了，并且新的系统已经能够通过判断有几个人来调整输出（比如只有2个人说话，那么3个输出里有1个输出会是静音；  

场景因素：
1） 近场或者远场；
2） 单通道或者多通道；

先验因素：
1） 只要求判断事先知道的某些说话人（speaker dependent）；  
2） 对任意说话人都要能判断（speaker independent）；  
3） 说话人之间的重叠（overlap）长度；  

## 3. 说话人辨认
Speaker Identification：用以判断某段语音是若干人中的哪一个所说的，是“多选一”问题；  

## 4. 说话人确认
Speaker Verification：用以确认某段语音是否是指定的某个人所说的，是“一对一判别”问题；  

## 5. 医学对话理解
understanding medical conversations  

## 6. 视频字幕
 video captioning  
