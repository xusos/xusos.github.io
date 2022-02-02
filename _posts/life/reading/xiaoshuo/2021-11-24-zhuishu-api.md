---
layout: article
title:  "「API」追书神器接口API"
date:   2021-11-24 21:23:18 +0800
key: API-xiaoshuo-20211124
aside:
  toc: true 
category: [api, xiaoshuo] 
tags:
  api
  小说
  追书神器
author: 未厅堂 
--- 
 
<span id='head'></span>

<a id="cb_post_title_url" class="postTitle2 vertical-middle" href="https://www.cnblogs.com/Stars-are-shining/p/13345856.html">
    <span>追书神器接口API</span>

</a><button class="cnblogs-toc-button" title="显示目录导航" aria-expanded="false"></button>

<h4 id="autoid-0-0-0">追书神器api文档<button class="cnblogs-toc-button" title="显示目录导航" aria-expanded="false"></button></h4>
<p>追书神器<code>api</code>官方地址:</p>
<div class="highlight highlight-source-js">
<pre>http:<span class="pl-c">//api.zhuishushenqi.com
http:<span class="pl-c">//api05iye5.zhuishushenqi.com
http:<span class="pl-c">//http://chapterup.zhuishushenqi.com/chapter</span></span></span></pre>
</div>
<p>由于官方<code>api</code>地址没有进行CROS处理,所以调用时会存在跨域问题,这里提供了一个代理地址:</p>
<div class="highlight highlight-source-js">
<pre>http:<span class="pl-c">//65.49.197.99/:3000</span></pre>
</div>
<p>有能力的童鞋可以自己搭一个代理,对请求进行转发.</p>
<h4 id="autoid-0-1-0"><a id="user-content-接口" class="anchor" href="https://github.com/zimplexing/vue-nReader/blob/master/doc/zhuishushenqi.md#%E6%8E%A5%E5%8F%A3"></a>接口<button class="cnblogs-toc-button" title="显示目录导航" aria-expanded="false"></button></h4>
<ol>
<li>获取所有分类</li>
<li>获取排行榜类型</li>
<li>获取排行榜小说</li>
<li>获取分类下小类别</li>
<li>根据分类获取小说列表</li>
<li>获取小说信息</li>
<li>获取小说正版源</li>
<li>获取小说源(正版➕盗版)</li>
<li>获取小说章节(根据小说id)</li>
<li>获取小说章节(根据小说源id)</li>
<li>获取小说章节内容</li>
<li>获取搜索热词</li>
<li>搜索自动补充</li>
<li>模糊搜索</li>
<li>获取小说最新章节</li>
</ol>
<p>所有接口都是<code>GET</code>请求</p>
<h5 id="autoid-0-2-0"><a id="user-content-1-获取所有分类" class="anchor" href="https://github.com/zimplexing/vue-nReader/blob/master/doc/zhuishushenqi.md#1-%E8%8E%B7%E5%8F%96%E6%89%80%E6%9C%89%E5%88%86%E7%B1%BB"></a>1. 获取所有分类<button class="cnblogs-toc-button" title="显示目录导航" aria-expanded="false"></button></h5>
<div class="table-wrapper"><table>
<thead>
<tr><th>类型</th><th>值</th></tr>
</thead>
<tbody>
<tr>
<td>接口地址</td>
<td>/cats/lv2/statistics</td>
</tr>
<tr>
<td>参数</td>
<td>null</td>
</tr>
<tr>
<td>实例接口地址</td>
<td><a href="http://api.zhuishushenqi.com/cats/lv2/statistics" rel="nofollow">http://api.zhuishushenqi.com/cats/lv2/statistics</a></td>
</tr>
</tbody>
</table></div>
<h5 id="autoid-0-2-1"><a id="user-content-2-获取排行榜类型" class="anchor" href="https://github.com/zimplexing/vue-nReader/blob/master/doc/zhuishushenqi.md#2-%E8%8E%B7%E5%8F%96%E6%8E%92%E8%A1%8C%E6%A6%9C%E7%B1%BB%E5%9E%8B"></a>2. 获取排行榜类型<button class="cnblogs-toc-button" title="显示目录导航" aria-expanded="false"></button></h5>
<div class="table-wrapper"><table>
<thead>
<tr><th>类型</th><th>值</th></tr>
</thead>
<tbody>
<tr>
<td>接口地址</td>
<td>/ranking/gender</td>
</tr>
<tr>
<td>参数</td>
<td>null</td>
</tr>
<tr>
<td>实例接口地址</td>
<td><a href="http://api.zhuishushenqi.com/ranking/gender" rel="nofollow">http://api.zhuishushenqi.com/ranking/gender</a></td>
</tr>
</tbody>
</table></div>
<h5 id="autoid-0-2-2"><a id="user-content-3-获取排行榜小说" class="anchor" href="https://github.com/zimplexing/vue-nReader/blob/master/doc/zhuishushenqi.md#3-%E8%8E%B7%E5%8F%96%E6%8E%92%E8%A1%8C%E6%A6%9C%E5%B0%8F%E8%AF%B4"></a>3. 获取排行榜小说<button class="cnblogs-toc-button" title="显示目录导航" aria-expanded="false"></button></h5>
<div class="table-wrapper"><table>
<thead>
<tr><th>类型</th><th>值</th></tr>
</thead>
<tbody>
<tr>
<td>接口地址</td>
<td>/ranking/:rankId</td>
</tr>
<tr>
<td>参数</td>
<td>排行榜的ID,不同字段对应不同的榜单,具体ID从接口2中获取</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>_id: 周榜ID</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>monthRank: 月榜ID</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>totalRank: 总榜ID</td>
</tr>
<tr>
<td>实例接口地址</td>
<td><a href="http://api.zhuishushenqi.com/ranking/54d43437d47d13ff21cad58b" rel="nofollow">http://api.zhuishushenqi.com/ranking/54d43437d47d13ff21cad58b</a></td>
</tr>
</tbody>
</table></div>
<h5 id="autoid-0-2-3"><a id="user-content-4-获取分类下小类别" class="anchor" href="https://github.com/zimplexing/vue-nReader/blob/master/doc/zhuishushenqi.md#4-%E8%8E%B7%E5%8F%96%E5%88%86%E7%B1%BB%E4%B8%8B%E5%B0%8F%E7%B1%BB%E5%88%AB"></a>4. 获取分类下小类别<button class="cnblogs-toc-button" title="显示目录导航" aria-expanded="false"></button></h5>
<div class="table-wrapper"><table>
<thead>
<tr><th>类型</th><th>值</th></tr>
</thead>
<tbody>
<tr>
<td>接口地址</td>
<td>/cats/lv2</td>
</tr>
<tr>
<td>参数</td>
<td>null</td>
</tr>
<tr>
<td>实例接口地址</td>
<td><a href="http://api.zhuishushenqi.com/cats/lv2" rel="nofollow">http://api.zhuishushenqi.com/cats/lv2</a></td>
</tr>
</tbody>
</table></div>
<h5 id="autoid-0-2-4"><a id="user-content-5-根据分类获取小说列表" class="anchor" href="https://github.com/zimplexing/vue-nReader/blob/master/doc/zhuishushenqi.md#5-%E6%A0%B9%E6%8D%AE%E5%88%86%E7%B1%BB%E8%8E%B7%E5%8F%96%E5%B0%8F%E8%AF%B4%E5%88%97%E8%A1%A8"></a>5. 根据分类获取小说列表<button class="cnblogs-toc-button" title="显示目录导航" aria-expanded="false"></button></h5>
<div class="table-wrapper"><table>
<thead>
<tr><th>类型</th><th>值</th></tr>
</thead>
<tbody>
<tr>
<td>接口地址</td>
<td>/book/by-categories</td>
</tr>
<tr>
<td>参数</td>
<td>说明无</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>gender: 男生:<code>mael</code>&nbsp;女生:<code>female</code>&nbsp;出版:<code>press</code></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>type: 热门:<code>hot</code>&nbsp;新书:<code>new</code>&nbsp;好评:<code>repulation</code>&nbsp;完结:&nbsp;<code>over</code>&nbsp;包月:&nbsp;<code>month</code></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>major: 大类别 从接口1获取</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>minor: 小类别 从接口4获取 (非必填)</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>start: 分页开始页</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>limit: 分页条数</td>
</tr>
<tr>
<td>实例接口地址</td>
<td><a href="https://api.zhuishushenqi.com/book/by-categories?gender=male&amp;type=hot&amp;major=%E5%A5%87%E5%B9%BB&amp;minor=&amp;start=0&amp;limit=20" rel="nofollow">https://api.zhuishushenqi.com/book/by-categories?gender=male&amp;type=hot&amp;major=%E5%A5%87%E5%B9%BB&amp;minor=&amp;start=0&amp;limit=20</a></td>
</tr>
</tbody>
</table></div>
<h5 id="autoid-0-2-5"><a id="user-content-6-获取小说信息" class="anchor" href="https://github.com/zimplexing/vue-nReader/blob/master/doc/zhuishushenqi.md#6-%E8%8E%B7%E5%8F%96%E5%B0%8F%E8%AF%B4%E4%BF%A1%E6%81%AF"></a>6. 获取小说信息<button class="cnblogs-toc-button" title="显示目录导航" aria-expanded="false"></button></h5>
<div class="table-wrapper"><table>
<thead>
<tr><th>类型</th><th>值</th></tr>
</thead>
<tbody>
<tr>
<td>接口地址</td>
<td>/book/:booId</td>
</tr>
<tr>
<td>参数</td>
<td>booId具体小说的ID</td>
</tr>
<tr>
<td>实例接口地址</td>
<td><a href="http://api.zhuishushenqi.com/book/548d9c17eb0337ee6df738f5" rel="nofollow">http://api.zhuishushenqi.com/book/548d9c17eb0337ee6df738f5</a></td>
</tr>
</tbody>
</table></div>
<h5 id="autoid-0-2-6"><a id="user-content-7-获取小说正版源" class="anchor" href="https://github.com/zimplexing/vue-nReader/blob/master/doc/zhuishushenqi.md#7-%E8%8E%B7%E5%8F%96%E5%B0%8F%E8%AF%B4%E6%AD%A3%E7%89%88%E6%BA%90"></a>7. 获取小说正版源<button class="cnblogs-toc-button" title="显示目录导航" aria-expanded="false"></button></h5>
<div class="table-wrapper"><table>
<thead>
<tr><th>类型</th><th>值</th></tr>
</thead>
<tbody>
<tr>
<td>接口地址</td>
<td>/btoc</td>
</tr>
<tr>
<td>参数</td>
<td>view: 暂时只知道<code>summary</code>这个参数 book: 对应的bookId</td>
</tr>
<tr>
<td>实例接口地址</td>
<td><a href="http://api.zhuishushenqi.com/btoc?view=summary&amp;book=548d9c17eb0337ee6df738f5" rel="nofollow">http://api.zhuishushenqi.com/btoc?view=summary&amp;book=548d9c17eb0337ee6df738f5</a></td>
</tr>
</tbody>
</table></div>
<h5 id="autoid-0-2-7"><a id="user-content-8-获取小说正版源于盗版源混合" class="anchor" href="https://github.com/zimplexing/vue-nReader/blob/master/doc/zhuishushenqi.md#8-%E8%8E%B7%E5%8F%96%E5%B0%8F%E8%AF%B4%E6%AD%A3%E7%89%88%E6%BA%90%E4%BA%8E%E7%9B%97%E7%89%88%E6%BA%90%E6%B7%B7%E5%90%88"></a>8. 获取小说正版源于盗版源(混合)<button class="cnblogs-toc-button" title="显示目录导航" aria-expanded="false"></button></h5>
<div class="table-wrapper"><table>
<thead>
<tr><th>类型</th><th>值</th></tr>
</thead>
<tbody>
<tr>
<td>接口地址</td>
<td>/atoc</td>
</tr>
<tr>
<td>参数</td>
<td><code>view</code>: 暂时只知道<code>summary</code>这个参数<code>&nbsp;book</code>: 对应的bookId</td>
</tr>
<tr>
<td>实例接口地址</td>
<td><a href="http://api.zhuishushenqi.com/atoc?view=summary&amp;book=548d9c17eb0337ee6df738f5" rel="nofollow">http://api.zhuishushenqi.com/atoc?view=summary&amp;book=548d9c17eb0337ee6df738f5</a></td>
</tr>
</tbody>
</table></div>
<h5 id="autoid-0-2-8"><a id="user-content-9-获取小说章节根据小说id" class="anchor" href="https://github.com/zimplexing/vue-nReader/blob/master/doc/zhuishushenqi.md#9-%E8%8E%B7%E5%8F%96%E5%B0%8F%E8%AF%B4%E7%AB%A0%E8%8A%82%E6%A0%B9%E6%8D%AE%E5%B0%8F%E8%AF%B4id"></a>9. 获取小说章节(根据小说id)<button class="cnblogs-toc-button" title="显示目录导航" aria-expanded="false"></button></h5>
<div class="table-wrapper"><table>
<thead>
<tr><th>类型</th><th>值</th></tr>
</thead>
<tbody>
<tr>
<td>接口地址</td>
<td>/mix-atoc/:bookId</td>
</tr>
<tr>
<td>参数</td>
<td><code>bookId</code>:对应小说id&nbsp;<code>view</code>:暂时只知道<code>chapters</code></td>
</tr>
<tr>
<td>实例接口地址</td>
<td><a href="http://api.zhuishushenqi.com/mix-atoc/50bff3ec209793513100001c?view=chapters" rel="nofollow">http://api.zhuishushenqi.com/mix-atoc/50bff3ec209793513100001c?view=chapters</a></td>
</tr>
</tbody>
</table></div>
<h5 id="autoid-0-2-9"><a id="user-content-10-获取小说章节根据小说源id" class="anchor" href="https://github.com/zimplexing/vue-nReader/blob/master/doc/zhuishushenqi.md#10-%E8%8E%B7%E5%8F%96%E5%B0%8F%E8%AF%B4%E7%AB%A0%E8%8A%82%E6%A0%B9%E6%8D%AE%E5%B0%8F%E8%AF%B4%E6%BA%90id"></a>10. 获取小说章节(根据小说源id)<button class="cnblogs-toc-button" title="显示目录导航" aria-expanded="false"></button></h5>
<div class="table-wrapper"><table>
<thead>
<tr><th>类型</th><th>值</th></tr>
</thead>
<tbody>
<tr>
<td>接口地址</td>
<td>/atoc 或者/btoc</td>
</tr>
<tr>
<td>参数</td>
<td><code>sourceId</code>:对应小说源id&nbsp;<code>view</code>:暂时只知道`chapters</td>
</tr>
<tr>
<td>实例接口地址</td>
<td><a href="http://api.zhuishushenqi.com/atoc/568fef99adb27bfb4b3a58dc?view=chapters" rel="nofollow">http://api.zhuishushenqi.com/atoc/568fef99adb27bfb4b3a58dc?view=chapters</a></td>
</tr>
</tbody>
</table></div>
<h5 id="autoid-0-2-10"><a id="user-content-11-获取小说章节内容" class="anchor" href="https://github.com/zimplexing/vue-nReader/blob/master/doc/zhuishushenqi.md#11-%E8%8E%B7%E5%8F%96%E5%B0%8F%E8%AF%B4%E7%AB%A0%E8%8A%82%E5%86%85%E5%AE%B9"></a>11. 获取小说章节内容<button class="cnblogs-toc-button" title="显示目录导航" aria-expanded="false"></button></h5>
<div class="table-wrapper"><table>
<thead>
<tr><th>类型</th><th>值</th></tr>
</thead>
<tbody>
<tr>
<td>接口地址</td>
<td>chapterup.zhuishushenqi.com/chapter/</td>
</tr>
<tr>
<td>参数</td>
<td>link: 章节地址</td>
</tr>
<tr>
<td>实例接口地址</td>
<td><a href="http://chapterup.zhuishushenqi.com/chapter/http://vip.zhuishushenqi.com/chapter/5817f1161bb2ca566b0a5973?cv=1481275033588" rel="nofollow">http://chapterup.zhuishushenqi.com/chapter/http://vip.zhuishushenqi.com/chapter/5817f1161bb2ca566b0a5973?cv=1481275033588</a></td>
</tr>
</tbody>
</table></div>
<h5 id="autoid-0-2-11"><a id="user-content-12-获取搜索热词" class="anchor" href="https://github.com/zimplexing/vue-nReader/blob/master/doc/zhuishushenqi.md#12-%E8%8E%B7%E5%8F%96%E6%90%9C%E7%B4%A2%E7%83%AD%E8%AF%8D"></a>12. 获取搜索热词<button class="cnblogs-toc-button" title="显示目录导航" aria-expanded="false"></button></h5>
<div class="table-wrapper"><table>
<thead>
<tr><th>类型</th><th>值</th></tr>
</thead>
<tbody>
<tr>
<td>接口</td>
<td>/book/search-hotwords</td>
</tr>
<tr>
<td>参数</td>
<td>null</td>
</tr>
<tr>
<td>实例接口地址</td>
<td><a href="http://api.zhuishushenqi.com/book/search-hotword" rel="nofollow">http://api.zhuishushenqi.com/book/search-hotword</a></td>
</tr>
</tbody>
</table></div>
<h5 id="autoid-0-2-12"><a id="user-content-13-搜索自动补充" class="anchor" href="https://github.com/zimplexing/vue-nReader/blob/master/doc/zhuishushenqi.md#13-%E6%90%9C%E7%B4%A2%E8%87%AA%E5%8A%A8%E8%A1%A5%E5%85%85"></a>13. 搜索自动补充<button class="cnblogs-toc-button" title="显示目录导航" aria-expanded="false"></button></h5>
<div class="table-wrapper"><table>
<thead>
<tr><th>类型</th><th>值</th></tr>
</thead>
<tbody>
<tr>
<td>接口</td>
<td>/book/auto-complete</td>
</tr>
<tr>
<td>参数</td>
<td><code>query</code>:查询值</td>
</tr>
<tr>
<td>实例接口地址</td>
<td><a href="http://api.zhuishushenqi.com/book/auto-complete?query=%E6%96%97%E7%BD%97" rel="nofollow">http://api.zhuishushenqi.com/book/auto-complete?query=%E6%96%97%E7%BD%97</a></td>
</tr>
</tbody>
</table></div>
<h5 id="autoid-0-2-13"><a id="user-content-14-模糊搜索" class="anchor" href="https://github.com/zimplexing/vue-nReader/blob/master/doc/zhuishushenqi.md#14-%E6%A8%A1%E7%B3%8A%E6%90%9C%E7%B4%A2"></a>14. 模糊搜索<button class="cnblogs-toc-button" title="显示目录导航" aria-expanded="false"></button></h5>
<div class="table-wrapper"><table>
<thead>
<tr><th>类型</th><th>值</th></tr>
</thead>
<tbody>
<tr>
<td>接口</td>
<td>/book/fuzzy-search</td>
</tr>
<tr>
<td>参数</td>
<td><code>query</code>:查询值</td>
</tr>
<tr>
<td>实例地址</td>
<td><a href="http://api.zhuishushenqi.com/book/fuzzy-search?query=%E6%96%97%E7%BD%97" rel="nofollow">http://api.zhuishushenqi.com/book/fuzzy-search?query=%E6%96%97%E7%BD%97</a></td>
</tr>
</tbody>
</table></div>
<h5 id="autoid-0-2-14"><a id="user-content-15-获取小说最新章节" class="anchor" href="https://github.com/zimplexing/vue-nReader/blob/master/doc/zhuishushenqi.md#15-%E8%8E%B7%E5%8F%96%E5%B0%8F%E8%AF%B4%E6%9C%80%E6%96%B0%E7%AB%A0%E8%8A%82"></a>15. 获取小说最新章节<button class="cnblogs-toc-button" title="显示目录导航" aria-expanded="false"></button></h5>
<div class="table-wrapper"><table>
<thead>
<tr><th>类型</th><th>值</th></tr>
</thead>
<tbody>
<tr>
<td>接口</td>
<td>/book</td>
</tr>
<tr>
<td>参数</td>
<td><code>view</code>: updated&nbsp;<code>id</code>:以都好分割的bookId</td>
</tr>
<tr>
<td>实例接口地址</td>
<td><a href="http://api05iye5.zhuishushenqi.com/book?view=updated&amp;id=531169b3173bfacb4904ca67" rel="nofollow">http://api05iye5.zhuishushenqi.com/book?view=updated&amp;id=531169b3173bfacb4904ca67</a></td>
</tr>
</tbody>
</table></div>
</div>


-------------------
[返回顶部](#head)
{:.warning} 