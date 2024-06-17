# wayland 出现的一些bug总结

## ked 桌面环境 chrome 无法使用 fcitx5

### 1. 配置 /etc/envirnment
```
#GTK_IM_MODULE=fcitx
#QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
#SDL_IM_MODULE=fcitx
MOZ_ENABLE_WAYLAND=1
QT_QPA_PLATFORM=wayland
```

### 2. 配置 google-chrome.desktop

```
# Arguments:
--enable-features=UseOzonePlatform --ozone-platform=wayland --enable-wayland-ime
```

### 3. kde 设置中

Keyboard -> Vitual Keyboard -> 选择 fcitx5 wayland


