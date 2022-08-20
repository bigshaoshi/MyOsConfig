

## 1.生成 .pub 密钥文件

https://docs.github.com/cn/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

```
## 生成 ssh 密钥
ssh-keygen -t ed25519 -C "h891616942@qq.com"

## 不支持 Ed25519 算法 使用如下
ssh-keygen -t rsa -b 4096 -C "h891616942@qq.com"
```



## 2.添加 `.pub`文件密钥进入setting中

https://docs.github.com/cn/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account

![image-20220820115107454](https://i.imgur.com/x1NhAFs.png)