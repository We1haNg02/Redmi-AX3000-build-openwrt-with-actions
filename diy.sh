# 请在下方输入自定义命令(一般用来安装第三方插件)(可以留空)

# 编辑默认的lan口ip地址
sed -i 's/192.168.31.1/192.168.31.2/g' package/base-files/files/bin/config_generate

# 编辑默认的主题
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 编辑默认的luci显示的固件名称
#sed -i 's/OpenWrt/ZWRT/g' package/base-files/files/bin/config_generate
#sed -i 's/ImmortalWrt/ZWRT/g' package/base-files/files/bin/config_generate

# 添加额外的软件包，echo 方式和git clone 方式二选一即可
echo 'src-git packages https://github.com/coolsnowwolf/packages' >>feeds.conf.default
#src-git luci https://github.com/coolsnowwolf/luci.git' >>feeds.conf.default
echo 'src-git luci https://github.com/coolsnowwolf/luci.git;openwrt-23.05' >>feeds.conf.default
#src-git luci https://github.com/coolsnowwolf/luci.git;openwrt-24.10
echo 'src-git routing https://github.com/coolsnowwolf/routing' >>feeds.conf.default
echo 'src-git telephony https://github.com/coolsnowwolf/telephony.git' >>feeds.conf.default
#src-git helloworld https://github.com/fw876/helloworld.git
#src-git qmodem https://github.com/FUjr/modem_feeds.git
#src-git video https://github.com/openwrt/video.git
#src-git targets https://github.com/openwrt/targets.git
#src-git oldpackages http://git.openwrt.org/packages.git
#src-link custom /usr/src/openwrt/custom-feed
