# application : 常用windows软件，新系统必备！

## 工具类：

- [ ] Snipaste ：截图软件
- [ ] clash for windows ： 科学上网
- [ ] picgo ： 图床上传工具
- [ ] honeyview : imageviewer
- [ ] potplayer ： 高性能播放器
- [ ] netflix ： 奈飞看剧看电影
- [ ] Spotify : 声破天音乐软件
- [ ] neovim ： 神的编辑器
- [ ] idm ： 多线程下载器
- [ ] Motrix：种子下载or一般下载
- [ ] 阿里云盘[白羊第三方版]
- [ ] adobe pdf ： PDF阅读器
- [ ] neatReader ：小说阅读器，可以云存储
- [ ] ScreenToGif ：录制gif图片
- [ ] everything + wox ：搜索本地文件神器
- [ ] typora ： 笔记软件
- [ ] notion ： 笔记软件
- [ ] XMind ：思维导图
- [ ] drawio : 换图工具
- [ ] 钉钉 、 飞书 ：工作软件
- [ ] 7zip ：解压缩软件

## 开发

- [ ] idea ：ide
- [ ] visual studio code ：编辑器
- [ ] eclipse ： java开发ide
- [ ] git ：版本控制软件
- [ ] google chrome
- [ ] XShell ： 远程shell 
- [ ] WinSCP ： 远程xftp管理
- [ ] wireshark ：抓包工具
- [ ] Navicat ：数据库管理交互工具
- [ ] Another-Redis-Desktop-Manager : Redis管理交互工具

## 环境

- [ ] mysql 5.7 解压版
- [ ] redis windows 版 
- [ ] maven 【setting.xml && local repo path】
- [ ] nacos : 阿里巴巴的微服务注册中心
- [ ] nginx : 反向代理服务器
- [ ] Tomcat 8
- [ ] python 2.7 && python3
- [ ] jdk 1.8 ：JAVA_HOME/JRE_HOME/PATH
- [ ] MinGW ：c、c++ 编译环境
- [ ] node / npm [换源] 
- [ ] adb [安卓开发工具：刷机用]

## 聊天

- [ ] qq 
- [ ] wechat 
- [ ] telegram 


    @GetMapping("login")
    public ResponseData loginCheck(HttpServletRequest request){

        String user_info = request.getHeader("user_info");
        if (user_info == null || user_info.length() == 0){
            return new ResponseUtil<>().setErrorMsg("token校验失败");
        }
        UserInfoDto userInfoDto = JSON.parseObject(user_info, UserInfoDto.class);
        return new ResponseUtil<>().setData(userInfoDto);
    }