---
layout: article
title:  "语音端点识别"
date:   2019-01-04 10:51:40 +0800
key: voice-activity-detector-20190104
aside:
  toc: true
category: [AI, Audio, VoiceprintAnalysis]
---

>又叫语音活性检测（voice-activity-detector，**VAD**，speech activity detection，speech detection）；  
目的：过滤音频中的静默片段（非语音片段）；   

## 一、 基本思路  
**1. 预处理**  
本操作可选，但实验表明，对数据进行预处理之后的效果要比不进行预处理的效果好；可以对数据进行去除直流和加窗两个预处理；  

**2. VAD**  
不同的 VAD 算法具有不同的延迟时间、灵敏度、精度和计算成本；有些 VAD 算法也提供了进一步的分析，例如讲话是否浊音、清音或持续；  
:hibiscus: **基于[短时能量](#energy)和[过零率](#zero_cross)的双门限端点检测**（最简单的方法）  
为能量和过零率分别取两个门限——低门限和高门限；  
（1） 利用过零率检测清音，用短时能量检测浊音；  
（2） 标记[端点](#point)：有一项指标越过低门限，标记为**起始点**，进入过渡段；进入过渡段后，两个参数同时回落到低门限以下，则认为是**静音状态**；进入过度段后，有一项指标超过高门限，则进入语音段；进入语音段后，在规定计时长度内两项指标同时回落到低门限以下，则认为是**噪音**，否则记为**结束端点**；  

:hibiscus: **分类**  
（1） 降噪，如通过spectral subtraction；`是否归于预处理模块`{:.warning}  
（2） 提取每[帧](#frame)的特征；  
（3） 分类来确定是不是语音信号；    

:hibiscus: **计算语音与噪声的距离**  
在每帧语信号上，计算语音与非语言信号的距离；包括光谱斜率(Spectral_slope)、相关系数(correlation coefficients)、对数似然比(log likelihood ratio)、倒谱系数(cepstral)、加权倒谱系(weighted cepstral)和修改后的距离函数；    

## 二、 Q & A  
:o: 信噪比较低时，部分语音信号会被噪声淹没，简单的 VAD 算法就无法处理了；  

## 三、 意义
VAD 过滤后可以降低存储或传输的数据量；在有些应用场景中，甚至可以简化人机交互，比如在录音的场景中，语音后端点检测可以省略结束录音的操作；在音频会议、回声消除、语音识别、语音编码和免提电话中也都有应用；      

-------------------  
 End
{:.warning}  

## 附录
### A 概念
<span id="frame">**1. 帧**</span>  
音频在时间轴上是连续的；有些语音分析方法需要事先将音频切分成若干小段，这个操作叫做**分帧**；
每一小段称之为一**帧**；一般通过滑窗操作来实现；   
滑窗的窗口大小叫做**帧长**；而相邻窗口重叠部分的时长叫做**帧移**；  

<span id="point">**2. 端点**</span>  
有效语音的起始点即**前端点**，有效语音的结束点即**后端点**；  
一般地可以将一段语音片段分为静音段、过度段、语音段、结束；  

<span id="energy">**3. 能量**</span>  
[伪代码](#energy_code)，   [python 代码](#energy_python)  
又叫短时能量，即每一帧中所有语音信号的平方和；是一个比较简单的语音时域特征；  
「短时能量/功率」有点瞬时功率的概念，但又没有那么“瞬时”；大概是**按帧**在做计算；  
实际使用时常需将其换算成对数尺度，并做归一化，换算成相对强度；  

<span id="zero_cross">**4. 过零率**</span>  
[伪代码](#zero_cross_code) ，   [python 代码](#zero_cross_python)    
又叫短时过零率（short-term zero corss rate，st-ZCR），表示一帧语音信号穿过零电平的次数；是语音时域分析最简单的一种，也是按帧计算；声母的 ZCR 高一些，韵母的要低一些；噪声干扰比较大了；      
对于连续语音信号，**过零**意味着时域波形通过时间轴；对于离散信号，**过零**是指相邻采样值符号改变；  
过零率的**应用**：第一，粗略描述信号的频谱特性；第二，用于判别清音和浊音、有话和无话；  
从过零率的定义可以发现，其容易受低频干扰；解决办法就是，是使用高通或带通滤波器，减小随机噪声的影响；另一个方法就是修改定义，将过零转化为过门限；  

### B 示例
<span id="energy_code">**1. 短时能量伪代码**</span>  

```python
function E = get_st_energy( x,fs,wlen_time,step_time,win_type,energy_unit )
%function zcr = get_st_energy( x,fs,wlen_time,step_time,win_type,energy_unit )
%   获取短时能量（没有除以帧长，所以不是计算的功率）。
%   输入参数
%           x：语音信号 --> 单声道
%           fs：采样速率
%           wlen_time：窗口时间（s）
%           step_time：步进时间（s）
%           win_type：'hamming','hanning',...,默认'hamming'
%           energy_unit：'dB'，以归一化的能量显示 （单位：dB）。否则是线性刻度。
%   返回参数
%           E：短时能量（横坐标是帧序号）
% 如果分帧时，不能整除，则抛弃最后一帧，不予以计算

wlen = round(wlen_time * fs);
nstep = round(step_time * fs);

if nargin < 5
    win = hamming(wlen);
elseif nargin == 5
    if strcmp(win_type, 'hamming')
        win = hamming(wlen);
    elseif strcmp(win_type, 'hanning')
        win = hanning(wlen);
    else
        win = hamming(wlen);
    end
else
    win = hamming(wlen);
end

nFrames = floor((length(x) - wlen)/nstep) + 1; % 总帧数
E = [];

for k = 1:nFrames
    idx = (k-1) * nstep + (1:wlen);
    x_sub = x(idx) .* win;
    E(k) = sum(x_sub.^2);
end

% 是否需要化成dB
if nargin == 6
    if strcmp(energy_unit, 'dB')
        E = 10*log10(E/max(E)+eps);
    end
end
end
```

<span id="zero_cross_code">**2. 短时过零率伪代码**</span>  

```python
function zcr = get_st_zcr( x,fs,wlen_time,step_time,win_type )
%function zcr = get_st_zcr(x,fs,wlen_time,step_time,win_type )
%   获取短时过零率。
%   输入参数
%           x：语音信号 --> 单声道
%           fs：采样速率
%           wlen_time：窗口时间（s）
%           step_time：步进时间（s）
%           win_type：'hamming','hanning',...,默认'hamming'
%   返回参数
%           zcr：短时过零率（横坐标是帧序号）
% 如果分帧时，不能整除，则抛弃最后一帧，不予以计算

if(min(size(x))>1) % 如果不是单声道
    % ...
end

wlen = round(wlen_time * fs);
nstep = round(step_time * fs);

if strcmp(win_type, 'hamming')
    win = hamming(wlen);
elseif strcmp(win_type, 'hanning')
    win = hanning(wlen);
else
    win = hamming(wlen);
end

nFrames = floor((length(x) - wlen)/nstep) + 1; % 总帧数
zcr = [];

for k = 1:nFrames
    idx = (k-1) * nstep + (1:wlen);
    x_sub = x(idx) .* win;
    x_sub1 = x_sub(1:end-1);
    x_sub2 = x_sub(2:end);
    zcr(k) = sum(abs(sign(x_sub1) - sign(x_sub2))) / 2 / length(x_sub1);
end

end
```

<span id="energy_python">**3. 短时能量 python 示例**</span>  

```python
# 计算每一帧的能量 256个采样点为一帧
def calEnergy(data) :
    energy = []
    sum = 0
    for i in range(len(data)) :
        sum = sum + (int(data[i]) * int(data[i]))
        if (i + 1) % 256 == 0 :
            energy.append(sum)
            sum = 0
        elif i == len(data) - 1 :
            energy.append(sum)
    return np.array(energy)
```

<span id="zero_cross_python">**4. 短时过零率 python 示例**</span>  

```python
import math
import numpy as np

def ZeroCR(waveData,frameSize,overLap):
    wlen = len(waveData)
    step = frameSize - overLap
    frameNum = math.ceil(wlen/step)
    zcr = np.zeros((frameNum,1))
    for i in range(frameNum):
        curFrame = waveData[np.arange(i*step,min(i*step+frameSize,wlen))]
        #To avoid DC bias, usually we need to perform mean subtraction on each frame
        curFrame = curFrame - np.mean(curFrame) # zero-justified
        zcr[i] = sum(curFrame[0:-1]*curFrame[1::]<=0)
    return zcr
```

### 参考文献
1.  贝壳君. 关于语音端点检测（Voice Activity Detection，VAD）的一些汇总[EB/OL]. <https://blog.csdn.net/baienguon/article/details/80539296>. 2018-06-01/2019-01-04.   
2. Rudy BARAGLIA. Voice Activity Detection for Voice User Interface[EB/OL]. <https://medium.com/linagoralabs/voice-activity-detection-for-voice-user-interface-2d4bb5600ee3>. 2018-01-20/2019-01-04.  
