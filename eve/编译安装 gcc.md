# 一、准备 gcc 4.8.*

```shell
yum install -y gcc g++ gcc-c++
```

# 二、下载 gcc-xx.x.x.tar.gz

https://gcc.gnu.org 选择download中的镜像网站，
从/software/gcc/releases/gcc-11.2.0中下载源代码文件

```shell
wget  url_for_gcc
tar -zxvf gcc-xx.x.x.tar.gz
```

# 三、下载安装依赖

cd gcc-xx.x.x
./contrib/download_prerequisites
cd ..

# 四、编译gcc

```
mkdir -p gcc-xx.x.x-build
cd gcc-xx.x.x-build
../gcc-xx.x.x/configure  -prefix=/usr/local/gcc-xx.x.x --enable-checking=release --enable-languages=c,c++ --disable-multilib
make -j2  # 2核服务器配置参数
make install
cd ..
```

# 五、配置环境

```shell
## 设置环境变量
touch /etc/profile.d/gcc.sh
chmod 777 /etc/profile.d/gcc.sh 
echo -e '\nexport PATH=/usr/local/gcc-12.2.0/bin:$PATH\n' >> /etc/profile.d/gcc.sh
source /etc/profile.d/gcc.sh
 
## 设置头文件
ln -sv /usr/local/gcc-12.2.0/include/c++/12.2.0 /usr/include/c++/12.2.0
 
## 设置库文件
touch /etc/ld.so.conf.d/gcc.conf
chmod 777 /etc/ld.so.conf.d/gcc.conf 
echo -e "/usr/local/gcc-12.2.0/lib64" >> /etc/ld.so.conf.d/gcc.conf
 
## 加载动态连接库
ldconfig -v
ldconfig -p |grep gcc
```

```shell
# 重启
reboot 
```

# 六、查看gcc版本
```shell
gcc --version
g++ --version
c++ --version
```

# 七、检验某程序用何版本的gcc编译的
```shell
readelf -p .comment /usr/local/python39/bin/python3
```