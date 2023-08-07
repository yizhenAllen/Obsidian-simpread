## 课程介绍
[01:10](https://www.bilibili.com/video/BV1vy4y1s7k6?p=1&vd_source=40645413612f159eb5e31f3c39bc5f84#t=70.320324)
### git
- **分布式**版本控制vs集中式版本控制工具
- git常用命令
- 分支特性 分支创建 分支转换 分支合并 代码合并冲突解决
- idea中integrated git
### GitHub
- 创建远程库
- 代码推送 push
- 代码拉取 pull
- 代码克隆 clone
- 网络问题, ssh免密登录
- idea集成

### Gitee
- 创建远程库
- idea集成Gitee
- Gitee链接GuitHub, 代码复制和迁移

### gitlab
- 基于局域网的代码托管中心
- gitlab服务器的搭建和部署
- idea集成gitlab

### 课程目标
五小时熟练掌握git, github, gitlab, gitee的使用

## 版本控制介绍
团队协作
[03:28](https://www.bilibili.com/video/BV1vy4y1s7k6?p=3&vd_source=40645413612f159eb5e31f3c39bc5f84#t=208.081591)

两人基于同一份源码, 进行了不同的修改, 所以需要版本控制

## 集中式vs分布式
- 集中式版本控制
[00:38](https://www.bilibili.com/video/BV1vy4y1s7k6?p=4&vd_source=40645413612f159eb5e31f3c39bc5f84#t=38.297142)
- 有集中的服务器
![[Pasted image 20230806174031.png]]
- 缺点
中央服务器的单点故障

- 分布式版本控制工具
[06:12](https://www.bilibili.com/video/BV1vy4y1s7k6?p=4&vd_source=40645413612f159eb5e31f3c39bc5f84#t=372.560062)

- 可以在自己的电脑进行版本控制
- 每个人手里都有历史记录

- 多人协作, 需要远程库
![[Pasted image 20230806174433.png]]

## 工作机制
[00:21](https://www.bilibili.com/video/BV1vy4y1s7k6?p=6&vd_source=40645413612f159eb5e31f3c39bc5f84#t=21.879345)
- ![[Pasted image 20230806174644.png]]

工作区: 存放代码的位置
暂存区: 让git知道你有这么一个位置
add命令, 从工作区添加到暂存区, 是临时存储, 没有版本控制, 有命令可以删除

[03:25](https://www.bilibili.com/video/BV1vy4y1s7k6?p=6&vd_source=40645413612f159eb5e31f3c39bc5f84#t=205.857664)
commit命令, 提交到本地库, 生成对应的历史版本, 代码就删不掉了

所以写好的一段代码再commit!

### 代码托管中心, 远程库
从本地库push到远程库里
github外网, gitee国内, gitlab局域网

## git常用命令
[01:15](https://www.bilibili.com/video/BV1vy4y1s7k6?t=67.5&p=8#t=75.878678)
- 设置用户签名(必须设置)
```
git config --global user.name
git config --global user.email
```
- 使用`git config --global --list`显示所有配置
- 这个用户签名和github账号的用户没有任何关系, 只是代表了提交代码的人
- 配置会写入~/.gitconfig

## 初始化本地库
[01:58](https://www.bilibili.com/video/BV1vy4y1s7k6?p=9&vd_source=40645413612f159eb5e31f3c39bc5f84#t=118.409575)
在相应的目录
```
git init
```
会生成一个.git目录, 千万不要修改

## 查看本地库状态
```
git status
```
输出
```
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)

Dockerfile

nothing added to commit but untracked files present (use "git add" to track)
```
## 添加暂存区
[00:08](https://www.bilibili.com/video/BV1vy4y1s7k6?p=11&vd_source=40645413612f159eb5e31f3c39bc5f84#t=8.940197)

`git add .`
`git status`
```
On branch master

No commits yet

Changes to be committed:

  (use "git rm --cached <file>..." to unstage)

new file:Dockerfile
```
此时文件存在于暂存区, 红色代表最新变化未添加到暂存区, 绿色代表最新变化添加到了暂存区

## 提交本地库
`git commit -m "commit info" filename`
此时的filename代表的是暂存区里的file.

初步理解, 提交后会**删除暂存区里相应文件的信息**, 暂存区和版本区的相应文件一定一致, 但可能和工作区的不一致(有可能工作区做最后的更改后, 还没有添加到暂存区就commit了)

如果是上面括号的情况, 则`git status`会显示, 也就是**暂存区和版本区一样, 但和工作区不一样**: 
```
Changes not staged for commit:blabla

no changes added to commit
```

如果**3个区全都一样**, `git status`会显示:
```
On branch master

nothing to commit, working tree clean
```

**查看commit信息**:
`git reflog` 简略信息, 版本号前七位
`git log` 详细信息, 整个版本号

## 修改文件相关, 暂不涉及远程仓库
对已跟踪的**文件做了修改**以后, 还是需要**添加到暂存区**, 然后再commit, 在此之前文件的状态是modified

1. 文件修改后(包括在工作区完全删除), 并且**还没有添加到暂存区**, 此时我们想撤销对其在工作区的更改.

	那就`git restore filename`, 这样可以**把工作区的相应文件恢复为暂存区的版本**(也是上一次提交的版本).
	 
	执行完成后, 本地版本库, 暂存库, 工作库完全一致. 

	也就是说, 如果**工作区和暂存区不一样**, 我们使用**git restore**从暂存区覆盖工作区

2. 文件之前添加到了暂存区, 然后我们进一步在工作区进行了修改, 此时我们想废弃所有修改, 全部恢复为上一次提交(如果有)的状态.

	那么可以使用`git restore --staged filename`, 让暂存区的相应文件**恢复到上一次提交**, 此时就和1是一样的了. 

	也就是说, 如果版本库和暂存区不一样, 上面的命令意味着unstage, 即从本地版本库覆盖暂存区
 
	然后再`git restore filename`, 把工作区的文件恢复到和暂存区一样, 这一步和1所做的完全一样

## 删除文件
`git rm -f filename`, 将文件**从暂存区和工作区**删除

注意, 如果我commit后需要删除一个文件, 要使用`git rm filename`来删除, 这样可以把文件从暂存区和工作区删除.

如果我commit过后, 只用rm删除文件filename, 则我需要再手动**git add**这个文件, 才能添加到暂存区, 不然status会显示这个文件被删除且没有增加到暂存区(红色)

`git rm --cached filename`, 最好是理解为**取消跟踪某个文件**, 这时候status中的暂存区会有相应的**文件被删除**的信息(绿色), 在下一次commit将会在版本库也删除这个文件

也可以使用`git commit -a`, 来将所有**已跟踪的文件基于工作区直接commit**, 从而省去git add的步骤

## 版本穿梭
[00:29](https://www.bilibili.com/video/BV1vy4y1s7k6?p=14&vd_source=40645413612f159eb5e31f3c39bc5f84#t=29.810578)

`git reset 版本号`可以穿梭回任意版本, 会把moving记录在日志中

### --mixed(默认参数)
回退版本, **清空暂存区, 不改变当前工作区**
此时所有tracked文件都是未暂存的, status会展示**当前工作区相对于目标版本的改变, 全部未暂存**, 以及untracked文件

### --soft参数
在**当前status的基础上, 把当前版本和目标版本的差异增加到暂存区**

相当于--mixed参数再执行`git add -u`, 即把所有tracked的文件增加到暂存区

### --hard参数
改变工作目录和目标节点一致, 并且清空暂存区, 工作区的untracked文件不会被改动

相当于--mixed参数再加上`git restore *`

### 使用场景
- mixed参数
	`git reset HEAD`, 清空当前所有暂存区;

	如果发现之前的commit有错(所以我们想reset), 但现在的工作目录下又有有效的/修改了的新文件(故不能用hard参数)
	
	同时我们现在的暂存区可能基于之前的错误commit也存在问题(故不能用soft参数), 那就只能用mixed参数再去选择有效的文件git add上去

	所以, 默认参数--mixed自定义的空间更大

- soft参数
	可用于**合并节点**, 可能中途有好几个commit都是小改变. 为了让几个小改变合成一个大改变, 我们reset到小改变之前的节点, 然后直接commit, 写上大改变的信息, 可以让分支更加清晰

- hard参数
	用于完全回退到某一个commit时版本的状态, 如`git reset -hard HEAD`, 可以放弃在当前节点的所有更改

## 分支概览
[00:18](https://www.bilibili.com/video/BV1vy4y1s7k6?p=15&vd_source=40645413612f159eb5e31f3c39bc5f84#t=18.664723)
多个功能同时开发
失败的分支不会影响主分支

## 分支命令
`git branch name` 创建分支
`git branch -v` or `git branch`查看分支
`git checkout brachname` 切换分支
`git merge brachname` 合并分支

`git branch hot-fix` 创建一个紧急修复分支
修改内容之后commit

## 合并分支

[00:03](https://www.bilibili.com/video/BV1vy4y1s7k6?p=17&vd_source=40645413612f159eb5e31f3c39bc5f84#t=3.772731)

git merge branchname, 把指定的分支合并到当前分支

如果master在同一个位置已经修改过, 则需要人为合并冲突.
此时git status会显示需要人为修改的文件, 进去修改之后, 在重新commit即可

合并之后, 记得`git branch -d name`删除分支!


## 团队协作

[00:02](https://www.bilibili.com/video/BV1vy4y1s7k6?t=153.3&p=19#t=2.493999)

本地库push到远程库
clone远程库到本地库, 改了改, 再push上去, 需要权限

跨团队协作, pull request
[08:38](https://www.bilibili.com/video/BV1vy4y1s7k6?t=153.3&p=19#t=518.871026)
审核之后merge

## 创建远程库
远程库和本地库名字库最好一样
[07:26](https://www.bilibili.com/video/BV1vy4y1s7k6?p=20&vd_source=40645413612f159eb5e31f3c39bc5f84#t=446.216478)

给远程库ssh链接创建别名
git remote -v查看别名
`git remote add 库名 链接`即可创建别名
`git remote rm 库名`
删除别名

推送/拉取本地库
`git push 别名/链接 本地库分支`
git pull 别名 远程库分支
