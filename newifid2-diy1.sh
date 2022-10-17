#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# sed -i 's/KERNEL_PATCHVER:=5.10/KERNEL_PATCHVER:=5.15/g' ./target/linux/x86/Makefile

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
# echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default

cd openwrt
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/zzsj0928/luci-app-pushbot package/luci-app-pushbot
echo 'src-git openclash https://github.com/vernesong/OpenClash' >>feeds.conf.default
echo 'src-git ddnsto https://github.com/linkease/nas-packages' >>feeds.conf.default
echo 'src-git ddnsto_luci https://github.com/linkease/nas-packages-luci' >>feeds.conf.default
