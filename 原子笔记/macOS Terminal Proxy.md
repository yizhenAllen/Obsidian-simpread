add following to ~/.zshrc:
```
alias setproxy="export http_proxy=http://127.0.0.1:7890 && export https_proxy=http://127.0.0.1:7890 && export all_proxy=http://127.0.0.1:7890 && echo 'Set proxy successfully'"

alias unsetproxy="unset http_proxy; unset https_proxy; unset all_proxy; echo 'Unset proxy successfully'"
```
then:
```
source ~/.zshrc
setproxy
```
see current proxy:
```
env|grep -I proxy
```

test:
```
curl www.google.com
```

![test](https://raw.githubusercontent.com/yizhenAllen/BlogImg/main/animegirls.jpg)