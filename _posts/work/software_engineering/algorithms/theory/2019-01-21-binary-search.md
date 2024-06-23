---
layout: article
title:  "「算法」 二分查找"
date:   2019-01-21 18:37:40 +0800
key: binary-search-20190121
aside:
  toc: true
category: [software, algorithms, search]
---

>要求：待搜索序列有序；  
优势：将原本的线性时间提升到了对数时间范围；  


## 一、 算法讲解
将查找的键和数组（默认升序排列）的中间键作比较，如果被查找的键小于中间键，就在左子数组继续查找；如果大于中间键，就在右子数组中查找，否则中间键就是要找的元素；  
binary_search， lower_bound， equal_range  

[c 示例](#binary_search_code_c)，[python 示例](#binary_search_code_python)  


## 二、 关键点

二分查找法的写法并不唯一，主要可以变动地方有四处：  
- high 的初始化，可以写成 nums.size() 或者 nums.size() - 1；  
- low 和 high 的关系，可以写成 low < high 或者 low <= high；    
- 更新 high 的赋值，可以写成 high = mid 或者 high = mid - 1；  
- 返回值，可以返回 low、high 或 high - 1；  

但是这些不同的写法并不能随机的组合；若 high 初始化为了 nums.size()，那么就必须用 low < high；  
但是如果 high 初始化为 nums.size() - 1，那么就必须用 left <= right，并且 high 的赋值要写成 high = mid - 1，不然就会出错；`出什么错`{:.warning}  

1. 二分的关键就是左右哨兵如何移动；且 low 只会往大的方向移动，high 只会往小方向移动；  
2. 用 mid= low + (high - low)/2 而不用 mid = (low + high) / 2 是因为当 low + high 很大时可能会产生溢出；
3. 注意避免死循环(一般就考虑最后两个数的极端情况)：  
- 当 mid= low + (high - low)/2 时，mid 偏向左边（一般求小于等于 target 的数），需用 low = mid + 1，否则就可能会死循环；  
- 当 mid= low + (high - low)/2 + 1 时，mid 偏向右边（一般是求大于等于 target 的数），需用 high = mid -1，否则可能死循环；  
4. 如果是求恰好找到的某个值，则加上第三个分支条件，等于的时候退出；    
5. 当无法选定用 < 还是 <= 的时候，可以分解了进行分析，把条件限定在 2 个数 A，B 和 target：  
  - A < target，我们需要 low 还是 high 移动；  
  - A = target，我们需要 low 还是 high 移动；  

## 三、 变种
二分查找变种较多，不过它们的“套路”是一样的：  

```c
while (left <= right)
{
    int mid = (left + right) / 2;
    if (array[mid] ? key)
    {
        //... right = mid - 1;
    }
    else
    {
        // ... left = mid + 1;
    }
}
return xxx;
```

- 查找第一个与 key 相等的元素：[c 示例](#binary_search_first_equal_code_c)，  
- 查找最后一个与 key 相等的元素：[c 示例](#binary_search_last_equal_code_c)，  
- 查找最后一个等于或者小于 key 的元素：[c 示例](#binary_search_last_lower_equal_code_c)，  
- 查找最后一个小于 key 的元素：[c 示例](#binary_search_last_lower_code_c)，  
- 查找第一个等于或者大于 key 的元素：[c 示例](#binary_search_first_equal_upper_code_c)，  
- 查找第一个大于 key 的元素：[c 示例](#binary_search_first_upper_code_c)，  

## 四、 实践
[LeetCode](/ai/algorithms/search/leetcode/2019/01/22/binary-search.html)  

-------------------  
 End
{:.warning}  



## 附录
### A 示例
<span id="binary_search_code_c">**1. 二分查找 C 示例**</span>   

```c
/**
 * 二分查找，找到该值在数组中的下标，否则为-1
 */

 //二分查找的递归版本
int binary_search_recursion(const int array[], int low, int high, int key)  
{  
    int mid = (high + low)/2;  
    if(low > high)  
        return -1;  
    else{  
        if(array[mid] == key)  
            return mid;  
        else if(array[mid] > key)  
            return binary_search_recursion(array, low, mid-1, key);  
        else  
            return binary_search_recursion(array, mid+1, high, key);  
    }  
}  

//二分查找的循环版本
static int binarySerach(int[] array, int key) {
    int left = 0;
    int right = array.length - 1;

    while (left <= right)
    {
        int mid = (left + right) / 2;
        if (array[mid] == key)
        {
            return mid;
        }
        else if (array[mid] < key)
        {
            left = mid + 1;
        }
        else
        {
            right = mid - 1;
        }
    }

    return -1;
}
```


<span id="binary_search_first_equal_code_c">**2. 查找第一个与 key 相等的元素 C 示例**</span>   

```c
// 查找第一个相等的元素
static int findFirstEqual(int[] array, int key)
{
    int left = 0;
    int right = array.length - 1;

    while (left <= right)
    {
        int mid = (left + right) / 2;
        if (array[mid] >= key)
        {
            right = mid - 1;
        }
        else
        {
            left = mid + 1;
        }
    }
    if (left < array.length && array[left] == key)
    {
        return left;
    }

    return -1;
}
```

<span id="binary_search_last_equal_code_c">**3. 查找最后一个与 key 相等的元素 C 示例**</span>   

```c
// 查找最后一个相等的元素
static int findLastEqual(int[] array, int key)
{
    int left = 0;
    int right = array.length - 1;

    while (left <= right)
    {
        int mid = (left + right) / 2;
        if (array[mid] <= key)
        {
            left = mid + 1;
        }
        else
        {
            right = mid - 1;
        }
    }
    if (right >= 0 && array[right] == key)
    {
        return right;
    }

    return -1;
}
```
<span id="binary_search_last_lower_equal_code_c">**4. 查找最后一个等于或者小于 key 的元素 C 示例**</span>   

```c
// 查找最后一个等于或者小于key的元素
static int findLastEqualSmaller(int[] array, int key)
{
    int left = 0;
    int right = array.length - 1;

    while (left <= right)
    {
        int mid = (left + right) / 2;
        if (array[mid] > key)
        {
            right = mid - 1;
        }
        else
        {
            left = mid + 1;
        }
    }
    return right;
}
```
<span id="binary_search_last_lower_code_c">**5. 查找最后一个小于 key 的元素 C 示例**</span>   

```c
static int findLastSmaller(int[] array, int key) {

    int left = 0;
    int right = array.length - 1;

    while (left <= right)
    {
        int mid = (left + right) / 2;
        if (array[mid] >= key)
        {
            right = mid - 1;
        }
        else
        {
            left = mid + 1;
        }
    }
    return right;
}
```
<span id="binary_search_first_equal_upper_code_c">**6. 查找第一个等于或者大于 key 的元素 C 示例**</span>   

```c
// 查找第一个等于或者大于key的元素
static int findFirstEqualLarger(int[] array, int key)
{
    int left = 0;
    int right = array.length - 1;

    while (left <= right)
    {
        int mid = (left + right) / 2;
        if (array[mid] >= key)
        {
            right = mid - 1;
        }
        else
        {
            left = mid + 1;
        }
    }
    return left;
}
```
<span id="binary_search_first_upper_code_c">**7. 查找第一个大于 key 的元素 C 示例**</span>   

```c
// 查找第一个大于key的元素
static int findFirstLarger(int[] array, int key)
{
    int left = 0;
    int right = array.length - 1;

    while (left <= right)
    {
        int mid = (left + right) / 2;
        if (array[mid] > key)
        {
            right = mid - 1;
        }
        else
        {
            left = mid + 1;
        }
    }
    return left;
}
```

<span id="binary_search_code_python">**8. 二分查找 python 示例**</span>  

```c

```

### B 参考文献  
[^1]: Bruce Eckel, Chuck Allison 著. 刘宗田, et al. 译.  C++ 编程思想[M]. 北京:机械工业出版社, 2016.  
