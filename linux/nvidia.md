# install nvidia driver

## 1. get install package

```html
https://www.nvidia.cn/Download/index.aspx?lang=cn
```

## 2. use grub to turn off neuveau
```
# /etc/default/grub
modprobe.blacklist=nouveau

nvidia_drm.modeset=1
```

```shell
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
```



