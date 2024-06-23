---
layout: article
title:  "「Python」 xml.etree.ElementTree"
date:   2019-01-28 10:07:40 +0800
key: xml-etree-elementTree-20190128
aside:
  toc: true
category: [software, python, pystl]
---
<span id='head'></span>  

> Python 3.5.6 官方文档：<https://docs.python.org/3.5/library/xml.etree.elementtree.html>  

| [parse](#getroot) | [iter]() | [findall]() | []() |
| --- | --- | --- | --- |
| [start]() | [end]() | [close]() | [data]() |
| [XML]() | [XMLID]() | [Element]() | [SubElement]() |
| [Comment]() | [tostring]() | [extend]() | [write]() |


获取根节点：[ET.XML(str)](#XML) 或 [ET.parse(file).getroot](#getroot)    
解析节点：**node.tag**、**node.text**、**node.attrib**`attrib 干嘛用的`{:.warning}      
遍历某一层：[for](#layer)       
按节点名字遍历：[node.iter('name')]()、[node.findall('name')]()   
*如需删除当前在遍历的节点，要用  `findall`；*      
删除：**node.remove(sub_node)**、**del node.attrib['name']**`区别是啥`{:.warning}    
写：[ElementTree(root).write](#write)    


-------------------  
[End](#head)
{:.warning}  

# 附录
## A 示例

<span id='XML'>**1. XML 读取根节点**</span>
```python
from xml.etree import ElementTree as ET

str_xml = open('xo.xml', 'r').read()
root = ET.XML(str_xml) # 把字符串解析成 xml 对象
```

<span id='getroot'>**2. parse 读取 xml 文件**</span>
```python
from xml.etree import ElementTree as ET
tree = ET.parse("xo.xml")
root = tree.getroot()
```


<span id='layer'>**3. 遍历某一层**</span>
```python
# 遍历XML文档的第二层
for child in root:
    print(child.tag, child.attrib)
    # 遍历XML文档的第三层
    for i in child:
        print(i.tag,i.text)
```

<span id='iter'>**4. 按名字遍历——iter**</span>
```python
for node in root.iter('year'):
    print(node.tag, node.text)
    new_year = int(node.text) + 1
    node.text = str(new_year)  # 修改节点信息
    node.set('name', 'alex')  # 修改节点下的子节点
    node.set('age', '18')
    del node.attrib['name'] # 删除子节点
```

<span id='findall'>**5. 按名字遍历——findall**</span>
```python
for country in root.findall('country'):
    rank = int(country.find('rank').text) # 读取子节点
    root.remove(country)      # 删除节点
```

<span id='write'>**6. 写 xml 文件**</span>
```python
tree = ET.ElementTree(root)
tree.write("new.xml", encoding='utf-8')

##  可能需要的调整格式
from xml.dom import minidom
def xmlwrite(root,filepath)
    rough_string = ET.tostring(root, 'utf-8')
    reparsed = minidom.parseString(rough_string)
    raw_str = reparsed.toprettyxml(indent='',newl="")
    output = open(filepath,'w+',encoding='utf-8')
    output.write('<?xml version="1.0" encoding="UTF-8"?> \n <!DOCTYPE topic PUBLIC "-//OASIS//DTD DITA Topic//EN" "topic.dtd">')
    output.write(raw_str)
    output.close()
```


## B 参考文献
1. Doug Hellmann 著, 苏金国, et al 译. Python3 标准库[M]. 北京:机械工业出版社, 2018.
