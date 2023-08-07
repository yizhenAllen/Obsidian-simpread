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
`git branch name position`  在相应位置创建分支, 可以使用相对路径
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

## 巩固加深-网页互动沙盒
[Learn Git Branching](https://learngitbranching.js.org/?locale=zh_CN&NODEMO=)
**git checkout -b branchName**创建并切换到新分支
### merge a branch
当HEAD指向main, 我们**git merge bugFix**之后, bugFix分支指针还是留在原地的
![[Pasted image 20230807200129.png]]

如果我们此时checkout到bugFix然后再merge main分支, 则有:
![[Pasted image 20230807200322.png]]
![[Pasted image 20230807200325.png]]

### git rebase - 另一种合并操作
和merge相反, 我们在**待合并的分支上**执行**git rebase main**

或者**git rebase 主节点 分节点**, 挺重要的!

![[Pasted image 20230807200849.png]]
可以看到, 两个分支的指针**跑到一条线上了**, 注意此时main分支指针不变
![[Pasted image 20230807200905.png]]
所以, 我们要**checkout到main分支, 再rebase到bugFix分支**:
![[Pasted image 20230807201117.png]]

### 移动HEAD指针
我们通过checkout命令改变**HEAD的指向**, 然后暂存区和工作区会更改为和相应节点提交时的状态一致, 且暂存区清空.

我们也可以checkout某一个commit, 不一定是分支, 这叫分离HEAD状态.
![[Pasted image 20230807201631.png]]

**分离HEAD状态**
![[Pasted image 20230807201808.png]]
![[Pasted image 20230807201802.png]]

使用**commit的版本号**或者**分支名main^^** 来指定某一个版本
![[Pasted image 20230807202107.png]]
![[Pasted image 20230807202100.png]]


当HEAD指向main分支, main指向**C2节点**时, **git checkout main**和**git checkout HEAD**是一样的, 不会发生任何事

此时**git checkout main^** 和**git checkout HEAD^** 也是一样的, 但是会将HEAD指向**C2的上一个节点**, 也就是**C1**.

也就是说, 如果我们要让**HEAD和main分开地指向C2节点**, 就只能**git checkout C2了**, 此时我们再commit, 会发生HEAD继续往下新增一个节点**C5**, 但是main分支依旧指向C2节点的情况!

![[Pasted image 20230807203128.png]]
如果不创建新的分支, 这个C5后续将不属于任何分支, 但他存在.(**checkout到C5然后git branch**, 可以直接在C5原地创建一条分支)

git branch创建的分支会**指向HEAD指向的节点**(如果HEAD指向分支A, 那新分支就指向分支A指向的节点)

到目前为止, **移动分支指针的办法只有一个**, 当HEAD指向那个分支, 然后执行commit或者merge等操作
### 强制移动分支
实际上我们还可以用**git branch -f branchName 节点位置**
强制移动分支, **-f参数**必须使用.
当HEAD指向某分支时, 我们不能直接移动这个分支, 需要先将HEAD checkout到其他分支才可以

注意, 我们**移动HEAD的前后**, 工作区是会**基于目标节点**改变的, 并且暂存区也是空的, 工作区和暂存区和reset --hard的状态一致.

所以如果我们在master上工作到一半还没有提交, 此时我们checkout去其他分支或者节点就要小心了(实际上git也会让我们必须git commit或者git stash之后才可以切换分支), 不然checkout回来的时候将会回到目前基于的基础节点, 你所有追踪了的文件将会丢失!
### revert & reset
注意**revert命令**当你的**工作区/暂存区和当前节点保持一致**的时候才可以使用, git会在每一个可能丢失文件的场景禁止/禁止你

你现在在commit2, 并和commit2保持一致, 执行**git revert HEAD**, 将创建一个新的节点commit3, 这个commit3是commit2的逆操作, 所以**commit3状态和commit1**完全一样!

A little tricky, 因为如果你在C2节点进行了一些修改但是还没有提交, 然后你执行**reset --hard HEAD**, 你将完全回到C2节点的基础状态

可以明显看到reset比revert好用, 因为你的选择更多更自由, 你可以**reset --mixed CommitName**来rollback到对应的节点, 但是你的工作区不会改变, 然后你再对比一下, 再进行修复和更新.

但是注意, 如果从远程仓库pull了代码下来, 然后使用reset之后再push, 可能会出现麻烦的冲突, 这方面还需实践一下

### cherry-pick
将选中的commit附加到当前的HEAD节点one-by-one
![[Pasted image 20230807230939.png]]

- git cherry-pick C1(cherry pick C1)
- git cherry-pick C1 C4(cherry pick C1, C4)
- git cheery-pick **C1..C4**(cherry pick C2, C3, C4)
- git cheery-pick **C1^..C4**(cherry pick C1, C2, C3, C4)

deal with conflicts:
- after dealing, git add . && git cherry-pick **--continue**
- giving up cherry-pick, git cherry-pick **--abort** (rollback)
- giving up cherry-pick, git cherry-pick **--quit** (cannot rollback)

### interactive rebase
using when not knowing the hash value of commits.
command: **rebase -interactive C1** or **rebase -i C1**
- git rebase -i main也是可以的

相比于**rebase存在岔路/无岔路但存在多分支时才能使用**, rebase -i是可以在**只有一条分支**的时候使用的, 会从C1开始创建一条分叉路口, 然后对其执行你选择的commits节点, **完事后把HEAD及HEAD指向的分支(如果有)一起移动到新岔路最前端**

依旧有git rebase --continue
git rebase --abort
git rebase --skip, to skip the commit.

如果你选择了n个commits, 则会创建n个新的commits

一个应用:
![[Pasted image 20230808001434.png]]
想要把左边成为右边, 只需
1. git rebase -i C1, 然后只选择C4这个节点
2. git merge main(不会有任何效果, 可能因为是只有一条线, 和[[#merge a branch]]中后面相比还是不一样的)
3. 所以要git branch -f main bugFix(必须-f, 不然就是起名了, 会报错)
4. git checkout main

### 修改最新的commit
这个操作用在你感觉目前的commit不够新的时候使用
- **commit --amend**可以修定最新的commit
把下图1
![[Pasted image 20230808003931.png]]
变成图2
![[Pasted image 20230808003955.png]]

### git tag
![[Pasted image 20230808004507.png]]
如果命令中没有C1, git tag会指向HEAD指向的节点
标签起到一个锚点的作用
### Git Describe
**git describe**, 描述离你最近的标签

### 相对路径拓展
main^后面的数字是用来指定parent commit的路径选择的, 不是代表上一代! main^^^^才是一直回退, main~是退一代
![[Pasted image 20230808010018.png]]
使用下面这条命令, 则会走另一条路!
![[Pasted image 20230808010122.png]]
组合起来使用:
![[Pasted image 20230808010235.png]]
操作符还支持链式操作, 上面的命令等价于:
- **git checkout HEAD~\^2~2**

本地仓库小游戏完结!

### 远程仓库
![[Pasted image 20230808011649.png]]

远程仓库名为o, o/main是本地仓库的远程分支, 

远程分支反映了远程仓库在你**最后一次与它通信时**的状态，`git fetch` 就是你与远程仓库通信的方式.

`git fetch` 并不会改变你本地仓库的状态。它不会更新你的 `main` 分支，也不会修改你磁盘上的文件。

### git fetch命令
![[Pasted image 20230808012138.png]]

### git pull命令
git fetch之后, 我们可以像合并本地分支那样来合并远程分支。也就是说就是你可以执行以下命令:

- `git cherry-pick o/main`
- `git rebase o/main`
- `git merge o/main`
- 等等

**git pull**命令整合了这个过程, **git pull = git fetch + git merge main**

### git push
![[Pasted image 20230808013254.png]]

### 团队协作
如果push的时候和远程仓库冲突很大(同事写了一堆代码), git是不允许你push的, 很显然你要先fetch到本地的远程仓库, 然后对比合并, 进行调整, 再push

- 直接git push, 没有变化
![[Pasted image 20230808013653.png]]

- git fetch后, 使用git rebase, 相当于**git pull --rebase**
![[Pasted image 20230808013826.png]]

- 在git fetch之后, 使用git merge, 相当于**git pull**
![[Pasted image 20230808014027.png]]

- 有些时候, 远程仓库的main分支被锁住了无法更改, 我们又不小心更改了本地的main分支, 我们这是应该创建一个新分支然后push到远程, 同时恢复本地的main分支到和远程的main分支一样

注意**git push会推送HEAD指向的分支, 而不是branch!**

### git checkout -b foo o/main
创建foo分支并取代本地的main分支跟踪远程的o/main分支
![[Pasted image 20230808022351.png]]

当HEAD在foo上时, 我们git push, 也会更新远程的main

另一种设置远程追踪分支的方法就是使用：`git branch -u` 命令，执行：
`git branch -u o/main foo`

这样 `foo` 就会跟踪 `o/main` 了。如果当前就在 foo 分支上, 还可以省略 foo：

`git branch -u o/main`

### git push的参数
我们可以为 push 指定参数，语法是：
`git push <仓库名> <分支名>`
如`git push origin main`

这里的**origin应该填写仓库秘钥或者别名**

### 把本地的 `foo` 分支推送到远程的 `bar` 分支
`git push origin \<source>:\<destination>`

source可以是本地的分支, 也可以是foo^这种相对路径, 也可以是个节点!

destination分支要是不存在会自动创建! 

### Git fetch 的参数
- 和之前的参数相反

- **git fetch origin foo**会拉取远程的foo分支

相比于无参数的fetch命令只会下载远程仓库的改变, 并同步本地仓库的远程分支, 如果你加上类似的`\<source>:\<destination>`, fetch将会直接更新**本地的相应destination**分支.(注意: 然而这样不会更新source相应的本地库!)

同样的, 如果本地库(destination)没有相应的分支, 那么会自动创建

但是开发人员很少这么做!

如果没有参数, **git fetch**会更新所有远程的变化到本地远程仓库, 好用!

### 古怪的source用法
在上面git push和git fetch的使用中, 直接把source留空不写
- `git push origin :side` 删除远程的side分支!危险!
- `git fetch origin :bugFix` 在本地创建bugFix分支

### git pull的参数
`git pull origin foo` 相当于：

`git fetch origin foo; git merge o/foo`

以及
`git pull origin bar~1:bugFix` 相当于：

`git fetch origin bar~1:bugFix; git merge bugFix`