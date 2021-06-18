---
layout: article
title:  "「Python」 Python之用户交互和运算符"
date:   2021-05-31 23:14:16 +0800
key: python-lajihuishou-20210531
aside:
  toc: true
category: [software, python, stnotes]
tags: 
  python
author: 未厅堂
---
<span id='head'></span>

# 一、程序与用户交互
- 1.1 什么是与用户交互
    > 用户交互就是人往计算机中input/输入数据， 计算机print/输出结果

- 1.2 为什么要与用户交互
    > 为了让计算机能够像人一样与用户沟通交流。
    > 
    > 比如，过去我们去银行取钱，用户需要把账号密码高速柜员，而现在，柜员被ATM机取代，ATM机就是一台计算机，所以用户同样需要将账号密码高速计算机，于是我们的程序中必须有相应的机制来控制计算机来接收用户输入的内容，并且输出结果。
- 1.3 如何与用户交互
    > 交互本质就是输入、输出

  - 1.3.1 输入input

      ```
      # 在python3中input功能会等待用户的输入，用户输入任何内容，都存成字符串类型，然后赋值给等号左边的变量名
      >>> username=input('请输入您的用户名：') 
      请输入您的用户名：jack # username = "jack"
      >>> password=input('请输入您的密码：') 
      请输入您的密码：123 # password = "123"

      # 了解知识：
      # 1、在python2中存在一个raw_input功能与python3中的input功能一模一样
      # 2、在python2中还存在一个input功能，需要用户输入一个明确的数据类型，输入什么类型就存成什么类型
      >>> l=input('输入什么类型就存成什么类型: ')
      输入什么类型就存成什么类型: [1,2,3]
      >>> type(l)
      <type 'list'>
      ```

  - 1.3.2 输出print
      ```
      >>> print('hello world')  # 只输出一个值
      hello world
      >>> print('first','second','third')  # 一次性输出多个值，值用逗号隔开
      first second third

      # 默认print功能有一个end参数，该参数的默认值为"\n"(代表换行)，可以将end参数的值改成任意其它字符
      print("aaaa",end='')
      print("bbbb",end='&')
      print("cccc",end='@')
      #整体输出结果为：aaaabbbb&cccc@
      ```
  - 1.3.3 输出之格式化输出
    - 1、什么是格式化输出
        > 把一段字符串里面的某些内容替换掉之后再输出，就是格式化输出。
    - 2、为什么要格式化输出
        > 我们经常会输出具有某种固定格式的内容，比如：'亲爱的xxx你好！你xxx月的话费是xxx，余额是xxx‘，我们需要做的就是将xxx替换为具体的内容。
    - 3、如何格式化输出
      > 这就用到了占位符，如：%s、%d：

         ```
          # %s占位符：可以接收任意类型的值
          # %d占位符：只能接收数字
          >>> print('亲爱的%s你好！你%s月的话费是%d，余额是%d' %('tony',12,103,11))
          # 输出结果：亲爱的tony你好！你12月的话费是103，余额是11

          # 练习1：接收用户输入，打印成指定格式
          name = input('your name: ')
          age = input('your age: ') #用户输入18,会存成字符串18,无法传给%d
          print('My name is %s,my age is %d' %(name,age))

          ****************************
        答：
          name = input('your name:')
          age = input('your age:')
          print('My name is %s ,My age is %d' % (name,int(age)))
          ****************************

          # 练习2：用户输入姓名、年龄、工作、爱好 ，然后打印成以下格式
          ------------ info of Tony -----------
          Name  : Tony
          Age   : 22
          Sex   : male
          Job   : Teacher 
          ------------- end -----------------
        答：
          name = input('your name is :')
          age = input('your age is :')
          sex = input('your sex is:')
          job = input('your job is :')
          print(
          'Name : %s \n'，'Aage : %s \n'，'Sex : %s \n' 'Job : %s \n' % (name,age,sex,job)
          )

         ```
# 二、基本运算符
- 2.1 算术运算符
- 2.2 比较运算符
- 2.3 赋值运算符
  - 2.3.1 增量赋值
  - 2.3.2 链式赋值
  - 2.3.3 交叉复制
  - 2.3.4 解压赋值
- 2.4 逻辑运算符
  - 2.4.1 连续多个and
  - 2.4.2 连续多个or
  - 2.4.3 优先级not > and > or
- 2.5 成员运算符
- 2.6 身份运算符
  










[返回顶部](#head)
{:.warning}