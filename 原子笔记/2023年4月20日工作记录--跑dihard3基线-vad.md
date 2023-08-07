#知识/科研/VAD  #数据库/dihard3 #总结记录/工作记录  

- 使用`shmod +x filename`后, 成功不报权限错误了, 但是报错`syntax error`
- 发现如果`source ./path.sh`就会报错, 直接注释掉之后手动在命令行执行`./path.sh`然后再`./run.sh`就能初步执行, 不报`syntax error`了
- 但是后面又报错, 是`prepare_sad_targets.py`文件中的`syntax error`, 在调用这个py文件的`train_sad.sh`中找到相关的`. ./path.sh`的命令, 怀疑又是这里出的问题, 故将其注释掉, 果然可以继续执行
- 但是后面报了其它的错误如下, 疑似和`path.sh`有关
```c
WARNING, path does not exist: KALDI_ROOT=/mnt/matylda5/iveselyk/Tools/kaldi-trunk
(please add 'export KALDI_ROOT=<your_path>' in your $HOME/.profile)
dysseas
dysseas
dysseas
(or run as: KALDI_ROOT=<your_path> python <your_script>.py)
```
- 于是将`path.sh`取消注释, 尝试移动到之前报错`syntax error`对应的位置之后, 看会发生什么
- 然而并没有用

- 尝试直接在220下训练, 直接复制了一份track2文件命名为track3文件, 结果还是类似的地方`compute-mfcc-feats`命令出问题
- 发现`path.sh`中有个kaldi的地方不太一样, 是被改了一项的, 尝试补上
- 补上后报错, 看日志发现采样率是8k, 而数据是16k的, 因为track3目录中的conf目录是直接从track2中拷贝过来的, 而track2已经被师姐改成了8k, 因为她当时用的switchboard数据集是8k的.
- 修改后报另一个错误, memory不足, 直接换成管理员后, 执行`nvidia-smi -c 3`后, 成功跑起来了!

- 回到我的路径, 我先是把path.sh中的路径仿照220上的增添了一项
- 然后把`run.sh`文件中的`. ./path.sh`改成了`./path.sh`
- 运行后应该是去到下一个报错点, 如上文所述的`train_sad.sh`中相关的`. ./path.sh`命令
- 果然报错和预测的一样, 于是把`train_sad.sh`中`if [ -f ./path.sh ]; then ./path.sh; fi`的`. ./path.sh`改成`./path.sh`, 继续运行查看结果如何
- 竟然还是报如下的错误
```c
WARNING, path does not exist: KALDI_ROOT=/mnt/matylda5/iveselyk/Tools/kaldi-trunk
(please add 'export KALDI_ROOT=<your_path>' in your $HOME/.profile)
(or run as: KALDI_ROOT=<your_path> python <your_script>.py)
```
- 这好像涉及kaldi里头的编译问题, 暂时放弃了. 以后如果调用这个kaldi库要谨慎, 很可能是失败的.