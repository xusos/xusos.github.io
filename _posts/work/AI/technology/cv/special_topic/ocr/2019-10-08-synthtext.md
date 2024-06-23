---
layout: article
title:  "「CV」 SynthText 数据集"
date:   2019-10-08 10:00:40 +0800
key: synthtext-20191008
aside:
  toc: true
category: [AI, CV, ocr]
---
<span id='head'></span>
>**Synthetic Data for Text Localisation in Natural Images** (CVPR 2016-04-22)   
paper: <https://arxiv.org/abs/1604.06646>      
github: <https://github.com/ankush-me/SynthText>      
home: <http://www.robots.ox.ac.uk/~vgg/data/scenetext>    
download2: <https://hyper.ai/datasets/4917>      
author: Ankush Gupta <email: removethisifyouarehuman-ankush@robots.ox.ac.uk>      

<!--more-->

# 1 介绍
大小 41 GB，858,750 张合成图(.jpg)，200 个文件夹，7,266,866 个单词，28,971,487 个字符；标注信息在 gt.mat 中；      

# 2 数据生成

# 3 数据解析
## 3.1 数据格式
gt.mat 中共 1x858750 条数据，每一条数据包括：     

| 字段名称 | 说明 |
| --- | --- |
| imnames | 图片文件名字  |
| wordBB  |  单词级别的标注框，包含 2x4×n 的张量，n 是单词个数；单个 bbox 格式为 `top_left(x,y)`, `top_right(x,y)`, `bottom_right(x,y)`, `bottom_left(x,y)` |
| charBB | 字符级别标注框，格式同 wordBB |
| txt    | 文本信息 |

单词内部不包含空格；字符也不包括空格；     

## 3.2 转 VOC
[python 示例](#转-vocpython)


-------------------  
[End](#head)
{:.warning}  

# 附录  
## A 参考资料
1. [TextBoxes++使用SynthText数据集](https://freshmou.github.io/2018/04/SynthText/)    
从 string 解析成 xml；   

## B 代码示例
### 转 VOC(Python)
```python
#!python3
# encoding: utf-8

import scipy.io as sio
import numpy as np
import xml.dom.minidom
import random
import os
from tqdm import tqdm
import matplotlib.pyplot as plt

OUTPUT_DIR = "data/SynthText_char"
ANNOTATIONS_DIR = os.path.join(OUTPUT_DIR, "Annotations")
IMAGESETS_DIR = os.path.join(OUTPUT_DIR, "ImageSets", "Main")

def draw(file, box):
    img = plt.imread(file)
    plt.close(1)
    plt.figure(1)
    plt.imshow(img)
    H,W = img.shape[:2]

    plt.plot([box[0], box[2], box[4], box[6], box[0]], [box[1], box[3], box[5], box[7], box[1]], 'r', alpha=0.5)
    plt.gca().set_xlim([0, W - 1])
    plt.gca().set_ylim([H - 1, 0])
    plt.show(block=False)

def MatRead(matfile):
    data = sio.loadmat(matfile)
    print("load mat file.")

    if not os.path.exists(ANNOTATIONS_DIR):
        os.makedirs(ANNOTATIONS_DIR)
    if not os.path.exists(IMAGESETS_DIR):
        os.makedirs(IMAGESETS_DIR)

    char_dict = dict()
    train_file = open(os.path.join(IMAGESETS_DIR, 'train.txt'), 'w')
    test_file = open(os.path.join(IMAGESETS_DIR, 'test.txt'), 'w')

    for i in tqdm(range(len(data['txt'][0]))):
        contents = []
        for val in data['txt'][0][i]:
            v = [x.split("\n") for x in val.strip().split(" ")]
            contents.extend(sum(v, []))
            v = sum(v, [])
        # print("No.{} data".format(i), file=sys.stderr)
        rec = np.array(data['charBB'][0][i], dtype=np.int32)
        contents = ''.join(contents)

        # why
        if len(rec.shape) == 3:
            rec = rec.transpose(2, 1, 0)
        else:
            rec = rec.transpose(1, 0)[np.newaxis, :]

        doc = xml.dom.minidom.Document()
        root = doc.createElement('annotation')
        doc.appendChild(root)
        # print("start to process {} object".format(len(rec)))

        l1 = len(rec)
        l2 = len(contents)
        for j in range(len(rec)):
            if 0 == len(contents):
                continue

            if str(contents[j]) in char_dict.keys():
                char_dict[str(contents[j])] += 1
            else:
                char_dict[str(contents[j])] = 1

            nodeobject = doc.createElement('object')
            nodecontent = doc.createElement('content')
            nodecontent.appendChild(doc.createTextNode(str(contents[j])))

            nodename = doc.createElement('name')
            nodename.appendChild(doc.createTextNode('text'))

            bndbox = {}
            bndbox['x1'] = rec[j][0][0]
            bndbox['y1'] = rec[j][0][1]
            bndbox['x2'] = rec[j][1][0]
            bndbox['y2'] = rec[j][1][1]
            bndbox['x3'] = rec[j][2][0]
            bndbox['y3'] = rec[j][2][1]
            bndbox['x4'] = rec[j][3][0]
            bndbox['y4'] = rec[j][3][1]
            bndbox['xmin'] = min(bndbox['x1'], bndbox['x2'], bndbox['x3'], bndbox['x4'])
            bndbox['xmax'] = max(bndbox['x1'], bndbox['x2'], bndbox['x3'], bndbox['x4'])
            bndbox['ymin'] = min(bndbox['y1'], bndbox['y2'], bndbox['y3'], bndbox['y4'])
            bndbox['ymax'] = max(bndbox['y1'], bndbox['y2'], bndbox['y3'], bndbox['y4'])

            # draw(os.path.join("/media/hao/DS/OCR/SynthText", data['imnames'][0][i][0]), [bndbox['x1'], bndbox['y1'], bndbox['x2'], bndbox['y2'], bndbox['x3'], bndbox['y3'], bndbox['x4'], bndbox['y4']])

            nodebndbox = doc.createElement('bndbox')
            for k in bndbox.keys():
                nodecoord = doc.createElement(k)
                nodecoord.appendChild(doc.createTextNode(str(bndbox[k])))
                nodebndbox.appendChild(nodecoord)

            nodeobject.appendChild(nodecontent)
            nodeobject.appendChild(nodename)
            nodeobject.appendChild(nodebndbox)
            root.appendChild(nodeobject)

        filename = data['imnames'][0][i][0].replace('.jpg', '.xml')
        filename = os.path.join(ANNOTATIONS_DIR, filename)
        dir = os.path.dirname(filename)
        if not os.path.exists(dir):
            os.mkdir(dir)

        fp = open(filename, 'w')
        doc.writexml(fp, indent='\t', addindent='\t', newl='\n', encoding="utf-8")
        fp.close()
        rad = random.uniform(10, 20)
        pwd = os.getcwd()
        img_path = data['imnames'][0][i][0]
        xml_path = filename[len(ANNOTATIONS_DIR)+1:]
        file_line = img_path + " " + xml_path + '\n'
        if rad > 18:
            train_file.write(file_line)
        else:
            test_file.write(file_line)

    train_file.close()
    test_file.close()
    print("character num:\n", char_dict)


def main():
    MatRead("../gt.mat")


if __name__ == '__main__':
    main()
```
