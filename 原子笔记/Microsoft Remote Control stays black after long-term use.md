ERROR: as the title

every time this bug happens, I have to shut down and reopen the computer, and everything will be OK again.

trying to solve:
```
非常感谢你的回复，在你的指导下我重新安装了新版本的Windows，但是还是无法连接，后来我在网上找到以下方法尝试成功了。

该问题可能为显卡驱动太老导致win10 1903及1909版本不能正确的初始化远程桌面，请尝试以下方式：

1、按Win+R，输入gpeddit.msc打开策略组编辑器

2、定位到“计算机配置/管理模板/Windows组件/远程桌面服务/远程桌面会话主机/远程会话环境”

3、选择右侧的“为远程桌面链接使用WDDM图形显示驱动”，设置为禁用。

4、重启计算机即可正常使用远程桌面链接。

5、该方案并不影响本地登录下的任何显卡功能，仅对RDP登录时生效
```
reference: [Windows10远程连接出现黑屏](https://answers.microsoft.com/zh-hans/windows/forum/all/windows10%E8%BF%9C%E7%A8%8B%E8%BF%9E%E6%8E%A5/7abf18c6-30aa-42b9-8b92-65c776e44848)

I have done it and we will see if it's useful.