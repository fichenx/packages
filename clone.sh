#!/bin/bash

#luci-app-bypass
svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-bypass

#luci-app-filebrowser
svn export https://github.com/Lienol/openwrt-package/trunk/luci-app-filebrowser

#luci-app-npc
svn export https://github.com/Hyy2001X/AutoBuild-Packages/trunk/luci-app-npc

#luci-app-wechatpush
git clone -b openwrt-18.06 https://github.com/tty228/luci-app-wechatpush luci-app-serverchan
