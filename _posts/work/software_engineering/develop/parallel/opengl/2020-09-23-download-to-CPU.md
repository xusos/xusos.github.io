---
layout: article
title:  "「OpenGL」 数据下载——GPU2CPU"
date:   2020-09-23 11:29:40 +0800
key: download-to-cpu
aside:
  toc: true
category: [software, parallel, opengl]
---
<span id='head'></span>
>[多版本 API](http://docs.gl)、[OpenGL WIKI](https://www.khronos.org/opengl/wiki/)、[OpenGLES2.0 API](https://www.khronos.org/registry/OpenGL-Refpages/es2.0/)、[GLES2.0 讲解博客](http://geekfaner.com/shineengine/blog8_OpenGLESv2_7.html)       

<!--more-->

# 1 glReadPixel

```cpp
void glReadPixels(
  GLint x, GLint y,               // 画面左下角顶点
  GLsizei width, GLsizei height,  // 画面尺寸
  GLenum format,                  // 数据格式，如 GLRGB、GL_RGBA，可通过 GL_IMPLEMENTATION_COLOR_READ_FORMAT 查询
  GLenum type,                    // 数据类型，如 GL_UNSIGNED_BYTE，一个 R 占 8 位，可通过 GL_IMPLEMENTATION_COLOR_READ_TYPE 查询
  void *pixels                    // 待写入数据的连续内存空间
);
```

## 1.1 常见问题

glReadPixel error 1282: GL_INVALID_OPERATION
{:.warning}

参数 `type` 只能用 `GL_UNSIGNED_BYTE`     
[常见错误类型](https://learnopengl-cn.github.io/06%20In%20Practice/01%20Debugging/)、[GLES2.0中文API-glGetError](https://blog.csdn.net/dengchukun/article/details/82667177)    

-------------------  
[End](#head)
{:.warning}  


# 附录
## A 参考资料
1. realxie. OpenGL的内存模型[EB/OL]. <https://zhuanlan.zhihu.com/p/104245178>. 2020-01-29/2020-10-19.    
1. sddxccj. 如何高效的将数据从GPU拷贝到CPU[EB/OL]. <https://blog.csdn.net/sddxccj/article/details/107324060>. 2020-07-13/2020-10-19.    
1. opengl-tutorial. 渲染到纹理[EB/OL]. <http://www.opengl-tutorial.org/cn/intermediate-tutorials/tutorial-14-render-to-texture/>. -/2020-10-19.    
1. 学习记录园 . glPixelStorei 详解 包括像素传输[EB/OL]. <https://www.cnblogs.com/dongguolei/p/11982230.html>. 2019-12-04/2020-10-19.    


## B 代码
<span id="download">**1. GPU 数据载示例**</span>   
```cpp
void Download()
{
    GLint readType, readFormat;
    GLubyte *pixels;
    glGetIntegerv(GL_IMPLEMENTATION_COLOR_READ_TYPE, &readType);
    glGetIntegerv(GL_IMPLEMENTATION_COLOR_READ_FORMAT, &readFormat);
    unsigned int bytesPerPixel = 0;

    switch(readType)
    {
    case GL_UNSIGNED_BYTE:
    {
        switch(readFormat)
        {
        case GL_RGBA:
            bytesPerPixel = 4;
            break;
        case GL_RGB:
            bytesPerPixel = 3;
            break;
        case GL_LUMINANCE_ALPHA:
            bytesPerPixel = 2;
            break;
        case GL_ALPHA:
        case GL_LUMINANCE:
            bytesPerPixel = 1;
            break;
        }
        break;
    }
    case GL_UNSIGNED_SHORT_4_4_4_4:
        // GL_RGBA format
    case GL_UNSIGNED_SHORT_5_5_5_1:
        // GL_RGBA format
    case GL_UNSIGNED_SHORT_5_6_5:
        // GL_RGB format
        bytesPerPixel = 2;
        break;
    }

    std::cout << "bytes " << bytesPerPixel << std::endl;
    pixels = (GLubyte*) malloc(W * H * bytesPerPixel);
    glReadPixels(0, 0, W, H, readFormat, readType, pixels);
    // PrintMatrixWithChar(pixels);
}
```
