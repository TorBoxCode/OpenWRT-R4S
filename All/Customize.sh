#!/bin/bash
sed -i 's/R21.2.1/R21.3.15/g' lede/package/lean/default-settings/files/zzz-default-settings
sed -i 's/192.168.1.1/10.0.0.1/g' lede/package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/OpenWRT/g' lede/package/lean/default-settings/files/zzz-default-settings
sed -i 's/Nps 内网穿透/nps/g' lede/package/lean/luci-app-nps/po/zh-cn/nps.po
cp -f Theme/nlogo.png lede/package/lean/luci-theme-netgear/htdocs/luci-static/netgear/nlogo.png
cp -f Theme/style.css lede/package/lean/luci-theme-netgear/htdocs/luci-static/netgear/css/style.css
cp -f All/Enable_CPUOP.patch lede/target/linux/rockchip/patches-5.4/Enable_CPUOP.patch
cp -f All/Enable_big.LITTLE_DU.info lede/package/lean/autocore/files/arm/sbin/cpuinfo
#cp -f All/02_network lede/target/linux/rockchip/armv8/base-files/etc/board.d/02_network
