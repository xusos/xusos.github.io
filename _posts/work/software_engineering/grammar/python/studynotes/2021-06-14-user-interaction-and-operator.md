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
    - 交互本质就是输入、输出

  - 1.3.1 输入input

      ```python
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
      ```python
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
        - 把一段字符串里面的某些内容替换掉之后再输出，就是格式化输出。
    - 2、为什么要格式化输出
        - 我们经常会输出具有某种固定格式的内容，比如：'亲爱的xxx你好！你xxx月的话费是xxx，余额是xxx‘，我们需要做的就是将xxx替换为具体的内容。
    - 3、如何格式化输出
      - 这就用到了占位符，如：%s、%d：

         ```python
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

          print('info of tony'.center(20,'-'))
          print('\nName : %s \n' 'Aage : %s \n' 'Sex : %s \n' 'Job : %s \n' % (name,age,sex,job))
          print('end'.center(20,'-'))

         ```
# 二、基本运算符
- 2.1 算术运算符
  - python支持得算法运算符与数学上计算得符号使用是一致得，我们以x = 9, y = 2 为例一次介绍他们：

  |算术运算符|描述              |示例       |
  |:------:|:------|:------|
  |+        |加，两个对象相加   |x + y 得 11|
  |-        |减，两个对象相减   |x - y 得 -7|
  |*        |乘，两个对象相乘   |x * y 得 18|
  |/        |除，相除后得到的返回值会保留证书与小数部分|x / y 得 4.5|
  |//       |取整除，相除后得到得返回值只保留整数部分|x // y 得 4|
  |%        |取余，相除后只返回余数|x % y 得1|
  |**       |冥，取一个数得n次方|x ** y 得 81|

- 2.2 比较运算符
  - 比较运算用来对两个值进行比较，返回得是布尔值True或False，我们以x=9，y=2为例来依次介绍：

  |比较运算符|   描述    |示例       |
  |:---------:|:-------|:-----|
  |==        |等于，两个对象相等则返回True，否则返回False|x == y 得 False|
  |!=        |不等于，两个对象相等则返回False，否则返回True|x != y 得 True|
  |>         |大于，|x > y 得 True|
  |>=        |大于等于|x >= y 得 True|
  |<         |小于|x < y 得 False|
  |<=        |小于等于|x <= y 得 False|
- 2.3 赋值运算符
  - python语法中除了有=号这种简单的赋值运算外，还支持增量赋值、链式赋值、交叉赋值、解压赋值，这些赋值运算符存在的意义都是为了让我们的代码看起来更加精简。我们以x=9，y=2为例先来介绍一下增量赋值

  - 2.3.1 增量赋值
   
    |赋值运算符|描述|示例|
    |:-----:|:------|:-------|
    |=|简单赋值运算|>>>x = 10|
    |+=|加法赋值运算|>>>x = 10 <br> >>> x += 1 # 等同与y = y + 1 <br> >>> y<br> 11|
    |-=|减法赋值运算|>>> y = 20 <br> >>>y -= 1 #等同于y = y-1 <br> >>> y <br>19|
    |*=|乘法赋值运算|同上|
    |/=|除法赋值运算|同上|
    |//=|取整除赋值运算|同上|
    |%=|取余数赋值运算|同上|
    |**=|冥赋值运算|同上|

  - 2.3.2 链式赋值
    - 如果我们想把同一个值同时赋值给多个变量名，可以这么做：
      ```python
      z = 10
      y = z
      x = y
      print(x,y,z)
      # 输出结果：(10,10,10)
      ```
    - 链式赋值指的是可以用一行代码搞定这件事：
       ```python
       x = y =z =10
       print(x,y,z)
       # 输出结果：(10,10,10)
       ```

  - 2.3.3 交叉赋值
    - 我们定义两个变量m与n
        ```python
        m = 10
        n = 20
        ```
    - 如果我们想将m与n得值交换过来，可以这么做
      ```python
      tem = m
      m = n
      n = tem
      print (m,n)
      # 输出：20，10
      ```
    - 交叉赋值指的是一行代码可以搞定这件事
      ```python
      m = 10
      n = 20
      m,n = n,m
      print (m,n)
      # 输出：20，10
      ```
  - 2.3.4 解压赋值
    - 如果我们想把列表中的多个值取出来一次赋值给多个变量名，可以这么做：
      ```python
      nums=[11,22,33,44,55]

      a=nums[0]
      b=nums[1]
      c=nums[2]
      d=nums[3]
      e=nums[4]
      print(a,b,c,d,e)
      # 输出结果：(11, 22, 33, 44, 55)
      ```
    - 解压赋值致得是一行代码可以搞定这件事
      ```python
      a,b,c,d,e = nums  # nums是一个列表，里面包含多个值，就好像一个压缩包，解压赋值因此得名
      print(a,b,c,d,e)
      # 输出: (11,22,33,44,55)

      ```

      `注意：上述解压赋值，等号左边的变量名个数必须与右边包含值的个数相同，否则报错`{:.warning}

      ```python
      #1、变量名少了
        >>> a,b=nums
        Traceback (most recent call last):
          File "<stdin>", line 1, in <module>
        ValueError: too many values to unpack (expected 2)

      #2、变量名多了
        >>> a,b,c,d,e,f=nums
        Traceback (most recent call last):
          File "<stdin>", line 1, in <module>
        ValueError: not enough values to unpack (expected 6, got 5)
      ```
    - 但如果我们只想取头尾的几个值，可以用*_匹配
      ```python
      >>> a,b,*_=nums
      >>> a,b
      (11, 22)
      ```
    - ps：字符串、字典、元组、集合类型都支持解压赋值

- 2.4 逻辑运算符
    - 逻辑运算符用于链接多个条件，进行关联判断，会返回布尔值True或False
      |逻辑运算符|描述|示例|
      |:---:|:---|:---|
      |and|逻辑与：用于链接两个条件，两个条件同时成立时才返回True，但凡有一个条件为False则返回False|>>> 3 > 1 and 4 == 4<br> True|
      |or|逻辑或：用于链接两个条件，两个条件单凡有一个成立就返回True，只有在两个条件同时为False时才返回False|>>> 1 > 2 or 3 > 1 <br> True|
      |not|逻辑非：取反|>>> not 1 > 2 <br> True|

  - 2.4.1 连续多个and
    - 可以and链接多个条件，会按照从左到右的顺序一次判断，一旦某一个条件为False，则无需再往右判断，可以立即判定最终结果就为False，只有在所有条件的结果都为True的情况下，最终结果才为True。
      ```python
      >>> 2 > 1 and 1 != 1 and True and 3 > 2 # 判断完第二个条件，就立即结束，得的最终结果为False
      False
      ```

  - 2.4.2 连续多个or
    - 2.4.2 连续多个or
      - 可以用or连接多个条件，会按照从左到右的顺序依次判断，一旦某一个条件为True，则无需再往右判断，可以立即判定最终结果就为True，只有在所有条件的结果都为False的情况下，最终结果才为False
        ```python
        >>> 2 > 1 or 1 != 1 or True or 3 > 2 # 判断完第一个条件，就立即结束，得的最终结果为True
        True
        ```
  - 2.4.3 优先级not > and > or
    ```python
    #1、三者的优先级关系：not>and>or，同一优先级默认从左往右计算。
    >>> 3>4 and 4>3 or 1==3 and 'x' == 'x' or 3 >3
    False

    #2、最好使用括号来区别优先级，其实意义与上面的一样
    '''
    原理为：
    (1) not的优先级最高，就是把紧跟其后的那个条件结果取反，所以not与紧跟其后的条件不可分割

    (2) 如果语句中全部是用and连接，或者全部用or连接，那么按照从左到右的顺序依次计算即可

    (3) 如果语句中既有and也有or，那么先用括号把and的左右两个条件给括起来，然后再进行运算
    '''
    >>> (3>4 and 4>3) or (1==3 and 'x' == 'x') or 3 >3
    False 

    #3、短路运算：逻辑运算的结果一旦可以确定，那么就以当前处计算到的值作为最终结果返回
    >>> 10 and 0 or '' and 0 or 'abc' or 'egon' == 'dsb' and 333 or 10 > 4
    我们用括号来明确一下优先级
    >>> (10 and 0) or ('' and 0) or 'abc' or ('egon' == 'dsb' and 333) or 10 > 4
    短路：       0      ''            'abc'                    
                假     假              真

    返回：                            'abc'

    #4、短路运算面试题：
    >>> 1 or 3
    1
    >>> 1 and 3
    3
    >>> 0 and 2 and 1
    0
    >>> 0 and 2 or 1
    1
    >>> 0 and 2 or 1 or 4
    1
    >>> 0 or False and 1
    False 
    ```
- 2.5 成员运算符
- 
    |成员运算符|描述|示例|
    |:---:|:---|:---|
    |in|某一个对象包含于另外一个对象则返回True<bt>字符串、列表、元组、字典、集合都支持成员运算|>>> 'hello' in 'hello world' <br> True <br> >>> 'yyy' in ['xxx','yyy','mmm'] <br> True <br> >>> 'age' in {'name':'lili','age':18} <br> True <br> # 判断的是字典的key <br> >>> 18 in {'name':'lili','age':18} <br> False|
    |not in|摸一个对象没有包含于另外一个对象则返回True| >>> 'abc' not in 'hello world' <br> True|

    `注意：虽然下述两种判断可以达到相同的效果，但我们推荐使用第二种格式，因为not in语义更加明确`{:.warning}
    ```python
    >>> not 'lili' in ['jack','tom','robin']
    True
    >>> 'lili' not in ['jack','tom','robin']
    True
    ```
- 2.6 身份运算符
 
  |身份运算符|描述|示例|
  |:---:|:---|:---|
  |is|is比较的是id(内存地址)，两个对象的id相同则返回True|>>> m = 'xxx'<br> >>> n = 'yyy' <br> >>> id(m),id(n) # m与n的id不同 <br> (61385312, 61385344)|
  |is not|在两个对象的id不同时is not会返回True|>>> m = 'xxx' <br> >>> n = 'yyy' <br>  >>> id(m),id(n) # m与n的id不同<br> (61385312, 61385344)<br> >>> m is not n <br> True|

  需要强调的是：==双等号比较的是value是否相等，而is比较的是id是否相等
    ```python
    #1. id相同，内存地址必定相同，意味着type和value必定相同
    #2. value相同type肯定相同，但id可能不同,如下
    >>> x='Info Tony:18'
    >>> y='Info Tony:18'
    >>> id(x),id(y) # x与y的id不同，但是二者的值相同
    (4327422640, 4327422256)


    >>> x == y # 等号比较的是value
    True
    >>> type(x),type(y) # 值相同type肯定相同
    (<class 'str'>, <class 'str'>)
    >>> x is y # is比较的是id，x与y的值相等但id可以不同
    False
    ```



-------------------
[返回顶部](#head)
{:.warning}
