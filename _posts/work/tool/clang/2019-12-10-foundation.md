---
layout: article
title:  "「Clang」 入门"
date:   2019-12-10 12:08:40 +0800
key: clang-foundation-20191210
aside:
  toc: true
category: [tool, clang]
---
<span id='head'></span>
>官网： <https://clang.llvm.org/>    


<!--more-->   


# 1 安装
## 1.1 源码
```
git clone https://github.com/llvm/llvm-project.git
cd llvm-project
mkdir build
cd build
cmake -DLLVM_ENABLE_PROJECTS=clang -G "Unix Makefiles" ../llvm
make
# This builds both LLVM and Clang for debug mode.
# Note: For subsequent Clang development, you can just run make clang.
```

## 1.2 检验
1. 尝试   
```
clang --help
clang file.c -fsyntax-only # (check for correctness)
clang file.c -S -emit-llvm -o - (print out unoptimized llvm code)
clang file.c -S -emit-llvm -o - -O3
clang file.c -S -O3 -o - # (output native machine code)
```

1. 测试    
```
make check-clang
```

-------------------  
[End](#head)
{:.warning}  

## 附录
### A 代码示例
