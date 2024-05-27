#!/bin/bash
function git_sparse_clone() {
  branch="$1" rurl="$2" localdir="$3" && shift 3
  #git clone -b $branch --depth 1 --filter=blob:none --sparse $rurl $localdir
  git clone -b $branch --single-branch --no-tags --depth 1 --filter=blob:none --no-checkout $rurl $localdir
  cd $localdir
  #git sparse-checkout init --cone
  #git sparse-checkout set $@
  git checkout $branch -- $@
  mv -n $@ ../
  cd ..
  rm -rf $localdir
  }
  
#luci-app-bypass
git_sparse_clone master "https://github.com/kiddin9/openwrt-packages" "kiddin9" luci-app-bypass

#luci-app-filebrowser
git_sparse_clone main "https://github.com/Lienol/openwrt-package" "Lienol" luci-app-filebrowser

#luci-app-npc
git_sparse_clone master "https://github.com/Hyy2001X/AutoBuild-Packages" "Hyy2001X" luci-app-npc

#luci-app-wechatpush
git rm --cached luci-app-serverchan
git clone -b openwrt-18.06 --depth 1 https://github.com/tty228/luci-app-wechatpush luci-app-serverchan

#luci-app-vssr
git rm --cached luci-app-vssr
git clone -b master --depth 1 https://github.com/MilesPoupart/luci-app-vssr luci-app-vssr
