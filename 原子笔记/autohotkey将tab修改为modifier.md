autohotkey脚本文件如下所示
缺点就是: 现在tab单按已经没用了, 必须使用`tab + f`来完成tab的操作, 虽然很简单, 但是没人会用我的电脑了...

```c
!n::RButton
Tab::t := true
Tab up::t := false
#If t
f::Tab
k::Up
h::Left
j::Down
l::Right
1::F1
2::F2
3::F3
4::F4
5::F5
6::F6
7::F7
8::F8
9::F9
0::F10
-::F11
=::F12
#If
```
另外还使用了caps2esc将caps键短按映射到esc, 长按映射到ctrl