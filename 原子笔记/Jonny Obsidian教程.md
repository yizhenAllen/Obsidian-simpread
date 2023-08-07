[这才是配得上Obsidian的原子笔记浏览器 Advanced Slides出品\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1M341137k1/?spm_id_from=333.999.0.0&vd_source=40645413612f159eb5e31f3c39bc5f84)
	- 搜索后得到很多结果, 复制到一个页面后, 用正则整理一下格式, 然后直接在advanced slide里快速预览

[Obsidian的全局引用你用对了吗？Johnny学Obsidian\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1bP411H7rx/?spm_id_from=333.788&vd_source=40645413612f159eb5e31f3c39bc5f84)
	- 全局引用`[[^^关键词 关键词 关键词]]`

[OB的注释还可以这么用，没想到吧 Johnny学Obsidian\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1vG411g7h7/?spm_id_from=333.999.0.0&vd_source=40645413612f159eb5e31f3c39bc5f84)
	- 在需要的地方**用注释打上相同的"标签"**, 然后再利用全局引用输入注释的内容, 就会显示所有带有这个注释标签的块, 并且嵌入之后不会显示这个标签, 因为它是一个注释! 
	- 可以**用来做快速检索和快速抓取需要的笔记**
	 - 类似的, 可以设置一个块标签, 比如#熟练掌握, 然后创建标签页, 使用add-summary自动嵌入带有这个标签的块, **用于复习**

[Johnny学OB 第19集 - 只有想不到，没有找不到，OB超级强大的搜索功能，你到底用到了几成？Obsidian | 黑曜石笔记使用教程\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1MU4y1N7u3/?vd_source=40645413612f159eb5e31f3c39bc5f84)
	- 搜索栏
	- 语法
		- 空格相当于AND
		- OR是或者
		- 双引号""括起来, 严格短语
		- ()括起来, 相当于搜索条件块
		- 正则, 非常强大
	- **搜索符**
		- file: 标题
		- content: 内容
		- path: 路径
		- tag:
		- line: 按行搜索, 冒号后面还能加逻辑
		- block: 块搜索
		- section: 章节搜索
		- 任务列表搜索符沙发了解安利激发加分
			- task: ""全搜索
			- task-todo: 
			- task-done:
	- 复用搜索逻辑--收藏功能
	- **query语句, 嵌入搜索结果**!
	- 正则表达式! 一个例子 /\d{4}年\d月2\d日
 
```query
task-todo:""
```

- 嵌入b站视频
- b站比较特殊, 复制之后还要加上https:协议
- 还需要调整下宽度和高度
- p用没有 

### 标签
- 把笔记级别的标签放到开头, 笔记内只放区块标签
- 笔记中的标签和块之间不要有空行
- **tag-summary**插件是用来生成**块标签**的, 将会直接嵌入块
	- 使用代码是**add-summary**, 里面加**tags: #...** , 下面是一个例子

```add-summary
tags: #DL
```

- 这样就可以去做标签页了, 把**块标签直接自动可视化**
- 如果是笔记标签, 那就搜索一下, 变成一个MOC页面
- 那如果添加了新的笔记标签, 如何实现自动添加到标签页呢