---
layout: article
title:  "「算法」 分治"
date:   2019-05-27 16:07:40 +0800
key: divide-conquer-20190527
aside:
  toc: true
category: [software, algorithms, divide_conquer]
---
<span id='head'></span>
>主要思想是解决小问题比解决大问题容易；于是将问题分解成若干子问题，然后用同样的方法求解子问题；最后将子问题的解合并，就得到问题的解；  
二分查找就是分治思想的一种应用；    

<!--more-->  

# 1 算法讲解
## 1.1 求解方法
### 1.1.1 代入法
substituion  

### 1.1.2 递归树法


### 1.1.3 主方法
master methods    

# 2 应用
## 2.1 矩阵乘法

[c 示例](#matrix_multiply_c)   

## 2.2 汉诺塔
>从左到右有A、B、C三根柱子，其中A柱子上面有从小叠到大的n个圆盘，现要求将A柱子上的圆盘移到C柱子上去，期间只有一个原则：一次只能移到一个盘子且大盘子不能在小盘子上面，求移动的步骤和移动的次数；   

**思路**：从最简单的情况考虑，然后递归解决；   

[c 示例](#Hannota_c)   

## 2.3 求最大连续和
>给出一个长度为n的序列 A1,A2,A3·····An，求最大连续和；如序列（6，-1 , 5, 4，-7), 该序列中的最大和是 6 +（ - 1）+ 5 + 4 = 14    

**思路**：分两段，以及跨分界点的情况；   

[c 示例](#maxsum_c)   

## 2.4 归并排序
>给定n个乱序数字，要求从小到大排序后输出   

**优点**：用分治算法主定理可得时间复杂度为O(nlogn)，相同元素的顺序不会颠倒，是稳定排序；   
**缺点**：需要辅助数组，所需空间复杂度为O(n)；   

[c 示例](#mergesort_c)   


# 3 实践
[LeetCode](/ai/algorithms/divide_conquer/leetcode/2019/05/27/divide_conquer.html)


-------------------  
[End](#head)
{:.warning}  



## 附录
### A 示例
<span id="matrix_multiply_c">**1. 矩阵乘法 C 示例**</span>   
```c
```

<span id="Hannota_c">**2. 汉诺塔 C 示例**</span>   
```c
#include <iostream>
void move(int,char,char,char);
int main()
{    
     int m;
     cin>>m;
     move(m,'A','B','C');
}
/*XYZ分别代表三根柱子*/

void move(int m,char x,char y,char z)
{    
    if(m==1)    
    {        
        cout<<x<<"->"<<z<<endl"; //如果只有一个金片了，那么我们直接将其从X移至Z即可。        
        return;    
    }    
    move(m-1,x,z,y); //先将m-1个金片从X移至Y。    
    cout<<x<<"->"<<z<<endl);//每次递归时，我们总是将1号金片移至Z。    
    move(m-1,y,x,z); //再将整体代换的m-1个金片从Y移至Z
}
```

<span id="maxsum_c">**3. 求最大连续和 C 示例**</span>   
```c
int maxsum(int l,int r)
{
    if(l==r)return a[l];
    int m=(l+r)/2;
    int Max=max(maxsum(l,m),maxsum(m+1,r)); //（分解）情况1：完全在左区间，或者完全在右区间

    //（合并）情况2：横跨左右两个区间
    int suml=a[m],t=0;
    for(int i=m;i>=l;i--)
        suml=max(suml,t+=a[i]);
    int sumr=a[m+1];t=0;
    for(int i=m+1;i<=r;i++)
        sumr=max(sumr,t+=a[i]);

    return max(Max,suml+sumr); //取两种情况中最大的
}
```

<span id="mergesort_c">**4. 归并排序 C 示例**</span>   
```c
#include<bits/stdc++>
using namespace std;
const int maxn=500000,INF=0x3f3f3f3f;
int L[maxn],R[maxn];
void merge(int a[],int n,int left,int mid,int right)
{
    int n1=mid-left,n2=right-mid;
    for(int i=0;i<n1;i++)
        L[i]=a[left+i];
    for(int i=0;i<n2;i++)
        R[i]=a[mid+i];
    L[n1]=R[n2]=INF;
    int i=0,j=0;
    for(int k=left;k<right;k++)
    {
        if(L[i]<=R[j])
            a[k]=L[i++];
        else
            a[k]=R[j++];
    }
}
void mergesort(int a[],int n,int left,int right)
{
    if(left+1<right)
    {
        int mid=(left+right)/2;
        mergesort(a,n,left,mid);
        mergesort(a,n,mid,right);
        merge(a,n,left,mid,right);
    }
}
int main()
{
    int a[maxn],n;
    cin>>n;
    for(int i=0;i<n;i++)
        cin>>a[i];
    mergesort(a,n,0,n);
    for(int i=0;i<n;i++)
    {
        if(i)
            cout<<" ";
        cout<<a[i];
    }
    cout<<endl;
    return 0;
}
```



### B 参考文献  
1. cornell-cs3110. Using the substituion and master methods[EB/OL]. <https://www.cs.cornell.edu/courses/cs3110/2014sp/recitations/24/using-the-substitution-and-master-method.html>. -/2019-05-27.   
1. University of North Texas. Master theorem[EB/OL]. <http://www.cse.unt.edu/~tarau/teaching/cf1/Master%20theorem.pdf>. -/2019-05-27.    
1. cornell-cs3110. Recursion Trees and the Master Method[EB/OL]. <https://www.cs.cornell.edu/courses/cs3110/2012sp/lectures/lec20-master/lec20.html>. -/2019-05-27.     
