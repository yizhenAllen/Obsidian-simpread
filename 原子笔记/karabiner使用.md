#思考输出 
## 基本映射modifier的使用
- 假设将**cmd+a mapping to cmd+b**
- 需要填两种参数, 必填!
	- **mandatory**: 必须按下才会变成新的映射
	- **optional**: 
		- 没有mandatory时, 当且仅当按下optional中任意键时, a会变成b
		- 当有mandatory时, 按下optional中的键的时候, a也会变成b
- 总之, 如果在按下其他键的同时, cmd+a也能映射为cmd+b, 那么**optional则设置为any**
- 不然就填 **"caps_lock"**

# 我的配置文件
[complex_modifications](hook://file/TbHSbFJH4?p=a2FyYWJpbmVyL2Fzc2V0cw==&n=complex%5Fmodifications)