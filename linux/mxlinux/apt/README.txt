sed -i "s@http://repo.antixlinux.com/stretch@https://repo.huaweicloud.com/mxlinux/antix/stretch@g" /etc/apt/sources.list.d/antix.list

sed -i "s@http://la.mxrepo.com/mx/repo/@https://repo.huaweicloud.com/mxlinux/mx/repo/@g" /etc/apt/sources.list.d/mx.list

sed -i "s@http://ftp.us.debian.org/debian/@https://repo.huaweicloud.com/debian/@g" /etc/apt/sources.list.d/debian-stable-updates.list

sed -i "s@http://ftp.us.debian.org/debian/@https://repo.huaweicloud.com/debian/@g" /etc/apt/sources.list.d/debian.list

sed -i "s@http://security.debian.org/@https://repo.huaweicloud.com/debian-security/@g" /etc/apt/sources.list.d/debian.list



================================================================================================
================================================================================================

## !/etc/apt/source.list.d/antix.list

# Use with Debian Stable/stretch repositories. Set as default for antiX-17. Note new repos
deb https://repo.huaweicloud.com/mxlinux/antix/stretch stretch main nosystemd
#deb-src https://repo.huaweicloud.com/mxlinux/antix/stretch stretch main nosystemd

# Use with Debian Testing/'rolling' repositories. 
#deb http://repo.antixlinux.com/testing testing main nosystemd
#deb-src http://repo.antixlinux.com/testing testing main nosystemd

# Use with Debian Sid repositories. 
#deb http://repo.antixlinux.com/sid sid main nosystemd
#deb-src http://repo.antixlinux.com/sid sid main nosystemd

================================================================================================
================================================================================================

## !/etc/apt/source.list.d/debian.list

# Debian Stable.
deb https://repo.huaweicloud.com/debian bullseye main contrib non-free
deb https://repo.huaweicloud.com/debian-security bullseye-security main contrib non-free

#deb-src http://deb.debian.org/debian bullseye main contrib non-free 

#bullseye backports
#deb http://deb.debian.org/debian bullseye-backports main contrib non-free

================================================================================================
================================================================================================

## !/etc/apt/source.list.d/debian-stable-updates.list

# Debian bullseye Updates
deb https://repo.huaweicloud.com/debian bullseye-updates main contrib non-free

================================================================================================
================================================================================================

## !/etc/apt/source.list.d/mx.list

# MX Community Main and Test Repos
deb https://mirrors.tuna.tsinghua.edu.cn/mxlinux/mx/repo/ bullseye main non-free
#deb https://mirrors.tuna.tsinghua.edu.cn/mxlinux/mx/testrepo/ bullseye test

#ahs hardware stack repo
deb https://mirrors.tuna.tsinghua.edu.cn/mxlinux/mx/repo/ bullseye ahs