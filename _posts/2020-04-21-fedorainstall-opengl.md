---
layout: post
title: fedora安装OpenGL
date: 2020-04-20 14:22:48
categories:
tags:
author: 未厅堂
---
<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<ins class="adsbygoogle"
     style="display:block; text-align:center;"
     data-ad-layout="in-article"
     data-ad-format="fluid"
     data-ad-client="ca-pub-1334509736068927"
     data-ad-slot="4348838154"></ins>
<script>
     (adsbygoogle = window.adsbygoogle || []).push({});
</script>

* content
{:toc}
Fedora和Ubuntu下安装OpenGL开发环境配置
	我整理的OpenGL开发库的详细介绍
	fedora23 安装OpenGL

开发OpenGL工程需要3个库文件和对应的头文件：
libglut.so,libGLU.so,libGL.so， gl.h ，glu.h， glut.h
使用locate命令可以进行定位




安装开发包(需要3个开发包)：
```bash
    sudo dnf install mesa-libGL-devel mesa-libGLU-devel //这两个是opengl核心库
    sudo dnf install freeglut-devel //OpenGL Utility ToolKit
```

安装完之后用rpm命令验证安装包和查询安装的文件以及安装在什么位置（以glut-devel为例）：
```bash
[root@localhost etc]# rpm -qa | grep glut
freeglut-devel-2.6.0-1.fc12.i686
[root@localhost etc]# rpm -ql freeglut-devel
/usr/include/GL/freeglut.h
/usr/include/GL/freeglut_ext.h
/usr/include/GL/freeglut_std.h
/usr/include/GL/glut.h
/usr/lib/libglut.so
```
测试程序：
```bash
#include<GL/glut.h>
void init(void)
{
    glClearColor(0.0, 0.0, 0.0, 0.0);
    glMatrixMode(GL_PROJECTION);
    glOrtho(-5, 5, -5, 5, 5, 15);
    glMatrixMode(GL_MODELVIEW);
    gluLookAt(0, 0, 10, 0, 0, 0, 0, 1, 0);
}
void display(void)
{
    glClear(GL_COLOR_BUFFER_BIT);
    glColor3f(1.0, 0, 0);
    glutWireTeapot(3);
    //glutWireIcosahedron();
    glFlush();
}
int main(int argc, char *argv[])
{
    glutInit(&argc,argv);
    glutInitDisplayMode(GLUT_RGB | GLUT_SINGLE);
    glutInitWindowPosition(0, 0);
    glutInitWindowSize(300, 300);
    glutCreateWindow("OpenGL 3D View");
    init();
    glutDisplayFunc(display);
    glutMainLoop();
    return 0;
}
```

编译连接生成：

 

C++编译器编译生成：```$g++ Test.cpp -o test  -l GL -l GLU -l glut```

 

C编译器编译生成：```$gcc Test.cpp -o test  -l GL -l GLU -l glut```

编译成功会输出名为test的执行文件， 接下来可以执行test文件： $ ./test


```bash
//Test.cpp
#include <GL/glut.h>
 
#define ColoredVertex(c, v) do{ glColor3fv(c); glVertex3fv(v); }while(0)
static int angle = 0;
static int rotateMode = 0;
 
void myDisplay(void)
{
	static int list = 0;
	if (list == 0)
	{
		GLfloat
			PointA[] = { 0.5f, 0.5f, -0.5f },
			PointB[] = { 0.5f, -0.5f, -0.5f },
			PointC[] = { -0.5f, -0.5f, -0.5f },
			PointD[] = { -0.5f, 0.5f, -0.5f },
			PointE[] = { 0.5f, 0.5f, 0.5f },
			PointF[] = { 0.5f, -0.5f, 0.5f },
			PointG[] = { -0.5f, -0.5f, 0.5f },
			PointH[] = { -0.5f, 0.5f, 0.5f };
		GLfloat
			ColorA[] = { 1, 0, 0 },
			ColorB[] = { 0, 1, 0 },
			ColorC[] = { 0, 0, 1 },
			ColorD[] = { 1, 1, 0 },
			ColorE[] = { 1, 0, 1 },
			ColorF[] = { 0, 1, 1 },
			ColorG[] = { 1, 1, 1 },
			ColorH[] = { 0, 0, 0 };
 
		list = glGenLists(1);
		glNewList(list, GL_COMPILE);
		
		// 面1
		glBegin(GL_POLYGON);
		ColoredVertex(ColorA, PointA);
		ColoredVertex(ColorE, PointE);
		ColoredVertex(ColorH, PointH);
		ColoredVertex(ColorD, PointD);
		glEnd();
		
		// 面2
		glBegin(GL_POLYGON);
		ColoredVertex(ColorD, PointD);
		ColoredVertex(ColorC, PointC);
		ColoredVertex(ColorB, PointB);
		ColoredVertex(ColorA, PointA);
		glEnd();
		
		// 面3
		glBegin(GL_POLYGON);
		ColoredVertex(ColorA, PointA);
		ColoredVertex(ColorB, PointB);
		ColoredVertex(ColorF, PointF);
		ColoredVertex(ColorE, PointE);
		glEnd();
		
		// 面4
		glBegin(GL_POLYGON);
		ColoredVertex(ColorE, PointE);
		ColoredVertex(ColorH, PointH);
		ColoredVertex(ColorG, PointG);
		ColoredVertex(ColorF, PointF);
		glEnd();
		
		// 面5
		glBegin(GL_POLYGON);
		ColoredVertex(ColorF, PointF);
		ColoredVertex(ColorB, PointB);
		ColoredVertex(ColorC, PointC);
		ColoredVertex(ColorG, PointG);
		glEnd();
		
		// 面6
		glBegin(GL_POLYGON);
		ColoredVertex(ColorG, PointG);
		ColoredVertex(ColorH, PointH);
		ColoredVertex(ColorD, PointD);
		ColoredVertex(ColorC, PointC);
		glEnd();
		glEndList();
 
		glEnable(GL_DEPTH_TEST);
	}
	
	// 已经创建了显示列表，在每次绘制正四面体时将调用它
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	glPushMatrix();
	glRotatef(angle / 10, 1, 0.5, 0.0);
	glCallList(list);
	glPopMatrix();
	glutSwapBuffers();
}
 
void myIdle(void)
{
	++angle;
	if (angle >= 3600.0f)
	{
		angle = 0.0f;
	}
	myDisplay();
}
 
int main(int argc, char *argv[])
{
	glutInit(&argc, argv);
	glutInitDisplayMode(GLUT_RGBA | GLUT_DOUBLE);
	glutInitWindowPosition(100, 100);
	glutInitWindowSize(700, 700);
	glutCreateWindow("First OpenGL Program");
	
	glutDisplayFunc(&myDisplay);
	glutIdleFunc(&myIdle);     //空闲调用
 
	glutMainLoop();
 
	return 0;
}
```