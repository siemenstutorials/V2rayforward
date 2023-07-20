#!/bin/bash
##############################################################
#                                                            #
# Author：Siemenstutorials                                   #
#                                                            #
# Youtube channel:https://www.youtube.com/c/siemenstutorials #
#                                                            # 
#         V2rayForward v1.0                                  #
#                                                            #
##############################################################
#!/bin/bash

#install base
rpm -q curl || yum install -y curl
rpm -q wget || yum install -y wget
apt-get install git -y || yum install git -y

#install v2fly
bash <(curl -L https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh)

#Config info
cd /usr/local/etc/v2ray
rm -rf config.json
wget https://raw.githubusercontent.com/siemenstutorials/dante_socks5/master/config.json
#system 
service v2ray restart
service v2ray status
systemctl enable v2ray
systemctl start v2ray
echo -e "\033[32m 安装完成 \033[0m"
