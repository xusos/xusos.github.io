---
layout: article
title:  "「论文实践」 mobilenet ssd · caffe"
date:   2019-09-25 18:00:40 +0800
key: mobilenet-ssd-caffe-practice-20190925
aside:
  toc: true
category: [AI, CV, detection, paper_practice]
---
<span id='head'></span>
>参考源码: <https://github.com/chuanqi305/MobileNet-SSD>     
环境: <https://github.com/weiliu89/caffe/tree/ssd>       

<!--more-->  

# 0 环境搭建
需源码编译；     

# 1 数据集制作
>以 VOC 数据集格式为例；      

## 1.1 准备数据集
```shell
VOC2007
├── Annotations       # 标注信息，文件名与 JPEGImages 中文件对应
├── ImageSets         # 参与训练的文件列表
│   └── Main
│       ├── train.txt # 训练文件列表
│       └── val.txt   # 验证文件列表
└── JPEGImages        # 图片
```

注： 自己的数据可用标注工具 labelImg 等制作；    

## 1.2 准备标签
类别标签 ID 文件，labelmap.prototxt，其类别数为目标数量 + 1（背景）；       
```shell
item {
  name: "none_of_the_above"
  label: 0
  display_name: "background"
}
item {
  name: "aeroplane"
  label: 1
  display_name: "aeroplane"
}
...
```

## 1.3 创建 lmdb

修改 /data/VOC0712下的脚本文件 create_list.sh 和 create_data.sh；    
>create_list.sh

```
root_dir为自己的路径，同时去掉原先2007和2012两个子文件夹的处理逻辑；
```

>create_data.sh

```
需要修改data_root_dir、mapfile为自己的路径
```

>运行脚本   

```
./data/VOC0712/create_list.sh
./data/VOC0712/create_data.sh
```

完成后，会在 `/data/VOCdevkit2/VOC0712/lmdb` 下产生 VOC0712_test_lmdb 和 VOC0712_train_lmdb 两个文件夹，就是训练所需的数据库文件；    

# 2 模型训练

直到“模型训练”环节，我们才开始接触 chuanqi305的MobileNet-SSD里的code。按照 chuanqi305的readme，将MobileNet-SSD文件夹放入caffe根目录/examples，并使用fanqiang技术下载预训练模型，做好模型训练的准备工作。

## 2.1 生成 prototxt

weiliu89的caffe框架下SSD是利用python脚本ssd_pascal.py自动生成prototxt文件并开始训练的，而chuanqi305的MobileNet-SSD则是利用gen_model.sh脚本生成prototxt文件,使用train.sh脚本开始训练。

在caffe根目录/examples/MobileNet-SSD下运行

./gen_model.sh  NUM（NUM为你自己的类别数，同labelmap.prototxt，笔者这里NUM=10）

即可在caffe根目录/examples/MobileNet-SSD/example下生成MobileNetSSD_train.prototxt、MobileNetSSD_test.prototxt和MobileNetSSD_deploy.prototxt。

三个prototxt文件生成之后，需要做如下修改：

MobileNetSSD_train.prototxt、MobileNetSSD_test.prototxt中，将data_param层里的source字段改写成项目实际lmdb的路径（按理说加了软链接后的路径不必修改，但保险起见这里可以修改为绝对路径），同时可修改batch_size的大小（可使用默认值）。

检查所有prototxt文件的num_classes是否为你的分类数。num_classes是脚本读取labelmap.prototxt生成的，这里可以查看一下是否被修改正确。

prototxt很长，可以使用caffe根目录/python/drawnet.py画出模型，这里先挖个坑，争取看懂算法模型后再叙。

## 2.2 训练模型

接下来进入正题，在caffe根目录/examples/MobileNet-SSD下运行

./train.sh

开启训练的大幕。./train.sh里面的内容比较简单：


-------------------  
[End](#head)
{:.warning}  


# 附录
## A 参考资料
