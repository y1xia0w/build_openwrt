sed -i 's/192.168.1.1/192.168.111.1/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/Zero/g' package/base-files/files/bin/config_generate

git clone https://github.com/vernesong/OpenClash ../OpenClash && ln -s ../../OpenClash/luci-app-openclash package/
echo "CONFIG_PACKAGE_luci-app-openclash=y" >> .config

#git clone https://github.com/rufengsuixing/luci-app-adguardhome ../luci-app-adguardhome && ln -s ../../luci-app-adguardhome package/
#echo "CONFIG_PACKAGE_luci-app-adguardhome=y" >> .config
