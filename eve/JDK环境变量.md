# JDK 的 环境变量配置

## 1、 windows

- JAVA_HOME:  /path/jdk根目录
- JRE_HOME:  /path/jre根目录
- JAVA_TOOL_OPTIONS : -Dfile.encoding=UTF-8

- path：  JAVA_HOME/bin ; JRE_HOME/bin

## 2、 Linux

- 环境写入文件的位置：  1. /etc/profile [推荐]  2.~/.bashrc  or ~/.zshrc  3.shell终端设置环境变量
- 写入内容：
```shell
export JAVA_HOME=/jdk-path
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

```

export JAVA_HOME=/home/wsj/.jdks/semeru-1.8.0_352
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar


## 3、macOS

[Desktop Entry]
Version=1.0
Type=Application
Name=Start Eureka
Icon=/opt/idea-IU-222.4345.14/bin/idea.svg
Exec="/file/work/serverices/eureka/starteureka.sh"
Comment=打开eureka
Categories=shell脚本
Terminal=true
StartupNotify=true