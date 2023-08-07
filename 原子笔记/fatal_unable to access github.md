When update oh-my-zsh, I meet the error below:

```shell
fatal: unable to access 'https://github.com/...blabla
```

First:
```shell
git config --global http.proxy
```
Nothing printed, and it shows there's an error
![[Pasted image 20230725130939.png]]
then:
```shell
git config --global --unset http.proxy
```
Nothing printed, and it shows there's an error
![[Pasted image 20230725131028.png]]

Then run:
```shell
omz update
sldkfjsdkljf
```

Successfully update!