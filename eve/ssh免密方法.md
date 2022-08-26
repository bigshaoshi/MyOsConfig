## 终端使用 ssh 命令登录需要输入密码，很麻烦，这里是如何免密直接登录的方式



> 大致的思路就是本地《控制机or登录机》生成ssh密钥
>
> 然后远程机《被控制宿主机》将改ssh密钥导入



### 1.再windows terminal中添加ssh登录

(1) windows terminal中使用 ` shift + ctrl + ,` 打开设置的json文件

```
		{
                "colorScheme": "One Half Dark",
                "font": 
                {
                    "face": "MesloLGSDZ Nerd Font Mono",
                    "size": 15
                },
                "guid": "{64b3d496-2ce4-43a2-82d8-cb1bd2986541}",
                "name": "腾讯云学习机",
                "commandline": "ssh ubuntu@43.142.19.33"
        }
```

(2) 此时存在了改ssh登录选项了

![image-20220820113919903](https://i.imgur.com/d2PYYIp.png)

(3) 登录需要输入密码



### 2. 在宿主机中添加 本机 ssh.pub密钥

### 1.如果`~/.ssh`文件夹下没有密钥，需要生成 ssh 密钥 （双机都生成）

```
## windows 下：
ssh-keygen 

## linux 下：
ssh-keygen

```

![image-20220820114312634](https://i.imgur.com/7MVkT1m.png)







