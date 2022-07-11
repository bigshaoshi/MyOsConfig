#  MySQL 离线包安装教程

### 2.1 配置 `my.ini`

> ​	首先**解压mysql离线压缩包**，在根目录下创建文件夹 `data` （一个空目录就可以）以及创建一个名为 `my.ini`的文件

![image-20220711093337358](https://s2.loli.net/2022/07/11/uaHmvwgiMpSePlb.png)

`my.ini`的文件内容如下填入：

```ini
[mysqld]
 #设置3306端
 port = 3306
 # MySQL程序安装目录-> 就是mysql的根目录
 basedir=E:\mysql-5.7.29-winx64
 # 数据库文件存放地址 -> 就是刚刚创建的data文件夹地址
 datadir=E:\mysql-5.7.29-winx64\data 
 #设置最大连接数
 max_connections=512
 #允许临时存放在查询缓存区大小
 query_cache_size=0
 #服务端使用的字符集默认为8比特编码的latin1字符集
 character-set-server=utf8
 # 数据库默认使用引擎
 default-storage-engine=INNODB
 [mysql]
 # mysql客户端默认的字符集，5.7才有的，5.6以及之前的版本没有default-character-set属性
 default-character-set=utf8
 # 注意，选项组[mysqld]、[mysql]不能漏掉了。
```

### 2.2 配置环境变量 `path`

> 把`mysql根目录下的bin`路径加入到环境变量`path`中

![image-20220711093839083](https://s2.loli.net/2022/07/11/e2n6Ygs5Qwr89bH.png)

### 2.3 安装mysql

#### 2.3.1 输入 `.\mysqld -install`命令安装

> 若出现Service successfully installed，证明安装成功；如出现Install of the Service Denied，则说明没有以管理员权限来运行cmd.

#### 2.3.2 初始化数据库，获取管理员密码输入命令 `.\mysqld --initialize --user=mysql --console`

> 注意下图红色框的就是初始化的管理员密码，这时候，mysql的安装目录下data文件夹已经有数据了。
>
> 这时候，mysql的安装目录下已经生产Data文件夹了

![Win10离线安装mysql5.7（图文教程）插图2](https://s2.loli.net/2022/07/11/CXUcwfTeuzqbrO1.png)

#### 2.3.3 启动mysql，输入命令 `net start mysql`

#### 2.3.4 登录并修改密码

> 1、使用初始密码【刚刚生成的密码】登录，输入命令 `.\mysql -u root -p` 
>
> 2、**重置密码，修改成自己的密码**：**(别漏了分号)**
>
> ​		set password for root@localhost=password("你的密码");
>
> 3、用Navicat测试连接
