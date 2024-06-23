---
layout: article
title: 「Mac」Macos上如何把图片转换成webp格式
date: 2021-01-04 14:22:48
categories: 技术
tags:
- Mac
- webp
author: 未厅堂
key: mac-image-to-webp-20210104
aside:
  toc: true
category: [mac, webp]
---

<span id="head"></span>


# Web的新图像格式
摘自:
> https://developers.google.com/speed/webp

WebP是一种现代图像格式，可为Web上的图像提供出色的无损和有损压缩。使用WebP，网站管理员和Web开发人员可以创建更小，更丰富的图像，从而使Web更快。

与PNG相比，WebP无损图像的尺寸要小26％。在同等的SSIM质量指数下，WebP有损图像比同类JPEG图像 小25-34％。

无损WebP支持透明性（也称为Alpha通道），仅增加22％的额外字节。对于可以接受有损RGB压缩的情况，有损WebP还支持透明性，与PNG相比，文件大小通常小3倍。
<!--more-->



# 安装Homebrew
对于MAC系统来说，首先需要安装WebP转码的支持包。

打开终端模式，输入以下命令，如果已经安装过homebrew，可以跳过进入下一个命令

如果无法安装请参考本文[Mac下使用国内源安装Homebrew](https://www.iecnn.com/_posts/%E6%8A%80%E6%9C%AF/2020-12-30-Mac%E4%B8%8B%E5%AE%89%E8%A3%85jekyll%E7%9A%84%E9%82%A3%E4%BA%9B%E5%9D%91/)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

# 安装webp转码软件
使用brew命令安装
```bash
brew install webp
```
或者使用macports安装，命令如下：
```bash
sudo port install webp
```
然后，使用cwebp将图像转换为WebP格式，例如将xxx.png以80的质量转换为webp格式：
```bash
cwebp -q 80 xxx.png -o xxx.webp
```
使用dwebp将WebP转换成PNG格式，例如：
```bash
dwebp xxx.webp -o xxx.png
```
jpg(如果是png把命令中的jpg改成png就行)批量转换成webp:
```bash
find ./ -name "*.jpg" -exec cwebp {} -o {}.webp \;
```
webp格式批量转换成png(如果像转换成jpg把png改成jpg)：
```bash
find ./ -name "*.webp" -exec dwebp {} -o {}.png \;
```

[返回顶部](#head)
{:.warning}