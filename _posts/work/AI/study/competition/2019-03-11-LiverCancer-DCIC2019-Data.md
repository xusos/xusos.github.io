---
layout: article
title:  "「竞赛」 大数据医疗——肝癌影像AI诊断：CT 数据预处理"
date:   2019-03-11 14:14:40 +0800
key: LiverCancer-DCIC-Data-20190311
aside:
  toc: true
category: [AI, AI, Competition]
sidebar:
  nav: LiverCancer
---


>肝癌识别；    
竞赛主页：<https://www.datafountain.cn/competitions/335/details>   

## 一、 文件读取
python 下使用 dicom 来读取；  

<!--more-->

## 二、 数据预处理
### 1. 思路
- CT 扫描结果是三维图像；   
- CT 包含了所有组织，如果直接看，很难提取有用信息；   
  CT 有个概念叫放射剂量，单位为 HU(Hounsfield Unit)，不同的放射剂量对应不同的组织器官；  

  | substance | 	HU | substance | 	HU |
  | --- | --- | --- | --- |
  | 空气 | 	-1000 | 肺	| -500 |
  | 脂肪	| -100到-50 | 水	| 0  |
  | CSF	| 15 | 肾	| 30 |
  | 肌肉	| +10到+40 | 血液	| +30到+45 |
  | 灰质	| +37到+45 | 白质	| +20到+30 |
  | Liver	| +40到+60 | 软组织,constrast	| +100到+300 |
  | 骨头	| +700(软质骨)到+3000(皮质骨) |

### 2. 预处理
1） 获取所有断层扫描图像   
使用 `pydicom` 库进行读取；  

2） 灰度值转换为 HU   
首先去除灰度值为 -2000 的像素，CT 扫描边界之外的灰度值固定为 -2000(dicom 和 mhd 都是这个值)；第一步是设定这些值为 0（即空气值）；   
变换到 HU 单元，乘以 rescale 比率并加上 intercept(存储在扫描面的元数据中)；   

3） 重采样  
每一次 CT 扫描时，扫描的尺寸和间距可能不同；例如，其中一个病人扫描面的像素区间可能是[2.5,0.5,0.5],即切片之间的距离为2.5mm；另一个病人的扫描面的范围是[1.5,0.725,0.725]；这不利于自动分析；可以使用同构采样；  
常用的处理方法是从整个数据集中以固定的同构分辨率重新采样，将所有的东西采样为 1mmx1mmx1mm 像素；   
这个操作巨耗时，会让训练时间增加 17 倍左右（train2）；    

4） 分割器官    

5） 数据标准化  


-------------------  
 End
{:.warning}  


## 附录
### A 示例
```python
# data process
import pydicom
import numpy as np
from scipy import ndimage

# plot
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d.art3d import Poly3DCollection
from skimage import measure, feature


eps = 0.00000001

# 读取一个病人的 CT 数据
def loadScan(path):
    slices = [pydicom.read_file(path + '/' + s) for s in os.listdir(path)]
    slices.sort(key=lambda x: float(x.ImagePositionPatient[2]))
    try:
        slice_thickness = np.abs(slices[0].ImagePositionPatient[2] - slices[1].ImagePositionPatient[2])
    except:
        slice_thickness = np.abs(slices[0].SliceLocation - slices[1].SliceLocation)

    for s in slices:
        s.SliceThickness = slice_thickness

    return slices

# 灰度值转换为 HU
def pixel2HU(slices):
    img = np.stack([s.pixel_array for s in slices])
    # Convert to int16 (from sometimes int16),
    # should be possible as values should always be low enough (<32k)
    img = img.astype(np.int16)

    # Set outside-of-scan pixels to 0
    # The intercept is usually -1024, so air is approximately 0
    img[img == -2000] = 0

    # Convert to Hounsfield units (HU)
    for slice_number in range(len(slices)):

        intercept = slices[slice_number].RescaleIntercept
        slope = slices[slice_number].RescaleSlope

        if slope != 1:
            img[slice_number] = slope * img[slice_number].astype(np.float64)
            img[slice_number] = img[slice_number].astype(np.int16)

        img[slice_number] += np.int16(intercept)

    return np.array(img, dtype=np.int16)

# 重采样成相同分辨率
def resample(img, scan, new_spacing=[1, 1, 1]):
    # Determine current pixel spacing
    spacing = np.array([scan[0].SliceThickness, scan[0].PixelSpacing[0], scan[0].PixelSpacing[1]], dtype=np.float32)

    resize_factor = spacing / new_spacing
    new_real_shape = img.shape * resize_factor
    new_shape = np.round(new_real_shape)
    real_resize_factor = new_shape / img.shape + eps
    new_real_spacing = spacing / real_resize_factor

    img_inter = ndimage.interpolation.zoom(img, real_resize_factor, mode='nearest')

    return img_inter, new_real_spacing

# 绘出 3D 图像
def plot3D(image, threshold=-300):
    # Position the scan upright,
    # so the head of the patient would be at the top facing the camera
    p = image.transpose(2,1,0)
    verts, faces = measure.marching_cubes_classic(p, threshold)
    fig = plt.figure(figsize=(6, 6))
    ax = fig.add_subplot(111, projection='3d')
    # Fancy indexing: `verts[faces]` to generate a collection of triangles
    mesh = Poly3DCollection(verts[faces], alpha=0.1)
    face_color = [0.5, 0.5, 1]
    mesh.set_facecolor(face_color)
    ax.add_collection3d(mesh)
    ax.set_xlim(0, p.shape[0])
    ax.set_ylim(0, p.shape[1])
    ax.set_zlim(0, p.shape[2])
    plt.show()

# 分割
def segment(image):
  pass

# 归一化
def normalizeWithSegment(image, bound_min = 40, bound_max = 60):
    image = (image - bound_min) / (bound_max - bound_min)
    image[image>1] = 1.
    image[image<0] = 0.
    return image

# 中心化
PIXEL_MEAN = 0.25
def zero_center(image):
    image = image - PIXEL_MEAN
    return image


```

### B 参考资料
[1]. Guido Zuidhof. Full Preprocessing Tutorial[EB/OL]. <https://www.kaggle.com/gzuidhof/full-preprocessing-tutorial>. 2017/2019-03-11.   
[2]. shartoo. 常见医疗扫描图像处理步骤[EB/OL]. <https://shartoo.github.io/medical_image_process/>. 2017-01-20/2019-03-11.   
