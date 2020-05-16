mkdir -p package/custom
cd package/custom
git clone https://github.com/kenzok8/small
git clone https://github.com/kenzok8/openwrt-packages
git clone https://github.com/Lienol/openwrt-package
git clone https://github.com/fw876/helloworld
git clone https://github.com/vernesong/OpenClash
git clone https://github.com/destan19/OpenAppFilter
git clone https://github.com/rufengsuixing/luci-app-adguardhome
git clone https://github.com/pymumu/luci-app-smartdns
git clone https://github.com/jerrykuku/luci-theme-argon
cd ../../

# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate


# Add some default settings
curl -fsSL https://raw.githubusercontent.com/grace5925/lede-actions/master/zzz-default-settings > package/lean/default-settings/files/zzz-default-settings