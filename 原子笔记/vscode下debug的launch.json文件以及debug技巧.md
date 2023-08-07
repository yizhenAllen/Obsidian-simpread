#软件使用/vscode/调试 

见如下
```json
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Python: Current File",
            "type": "python",
            "request": "launch",
            "program": "${file}",
            "console": "integratedTerminal",
            "justMyCode": true,
            "cwd": "${workspaceFolder}/test_track",
            "args": [],
        },
```

- cwd参数和args参数很重要!
- ${workspaceFolder}指的是vscode所在目录

- args参数中, 双引号内不要再加单引号了, 有时会报错的
- **断点不能打到空白行**上, 如果有续行符的话要打在最后一行
- **断点在if的内部打**, 这样就可以判断if语句是否执行
- 断点如果在for循环开始或者内部打, 那就只能删除断点才能出去了, 于是**考虑在for的末尾**打断点
- 在shell脚本的for循环最后一行增加断点, 是不生效的, 有时候程序直接往下执行, 可能是类似的情况
- 脚本中使用续行符的时候, 在执行程序第一行处打断点, 是无效的
- debug途中, 如果某些程序使用"w"改写了文件, 那么如果debug到一半的途中直接退出, 或者在命令行使用Ctrl-c退出, 都会导致文件不可逆转的改变! (因为w模式是覆写文件)