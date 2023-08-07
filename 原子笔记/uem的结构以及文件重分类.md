# 现在的uem数据结构是这样的
- 对于一个录音文件，其uem名为`DH_DEV_0026.uem`，对应某个**domain**
- 这个文件的结构如下
![[Pasted image 20230410214024.png]]
- 因为我有每个录音文件对应的domain，所以理论上可以筛选出一个domain对应的所有录音文件，得到他们的编号，每个录音文件都有一个uem文件
- 那么如何将这些uem文件合并成 **{domain}.eum** 文件呢，将所有uem文件的行堆叠起来吗

- 代码中关于使用**{domain}.eum**的片段如下：
- ![[Pasted image 20230410215923.png]]
- ![[Pasted image 20230410215934.png]]
