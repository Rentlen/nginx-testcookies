#!/bin/bash
# Nginx 1.9.7 + 9 Modules.
# Author RAW.
##########################


#Before.
chmod +x fixit.sh
apt-get update -y
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get install build-essential -y
apt-get install checkinstall libpcre3 libpcre3-dev zlib1g zlib1g-dbg libxml2 zlib1g-dev -y
apt-get install openssl libssl-dev libperl-dev -y
apt-get install libxslt-dev -y
apt-get install libgd2-xpm -y
apt-get install libgd2-xpm-dev -y
apt-get install libgeoip-dev -y

#Modules.
mkdir -p /opt/nginx/modules/
cd /opt/nginx/modules/
git clone https://github.com/ildus/nginx_redis.git
cd nginx_redis/
mv ngx_devel_kit-0.2.19/ /opt/nginx/modules/

cd /opt/nginx/modules/
rm -Rf nginx_redis/
cd /opt/nginx/modules/
git clone https://github.com/openresty/set-misc-nginx-module.git
git clone https://github.com/pagespeed/ngx_pagespeed.git
git clone https://github.com/FRiCKLE/ngx_cache_purge.git
git clone https://github.com/kyprizel/testcookie-nginx-module.git
git clone https://github.com/openresty/headers-more-nginx-module.git
git clone https://github.com/openresty/echo-nginx-module.git
git clone https://github.com/arut/nginx-dav-ext-module.git
git clone https://github.com/masterzen/nginx-upload-progress-module.git

#Pagespeed Library
cd /opt/nginx/modules/ngx_pagespeed
wget https://dl.google.com/dl/page-speed/psol/1.11.33.2.tar.gz
tar -xzvf 1.11.33.2.tar.gz
rm -Rf 1.11.33.2.tar.gz

#Nginx 1.9.7
mkdir -p /opt/nginx/sources/
cd /opt/nginx/sources/
wget 'http://nginx.org/download/nginx-1.9.7.tar.gz'
tar -xzvf nginx-1.9.7.tar.gz
rm -Rf nginx-1.9.7.tar.gz

echo "-------------------------------------"
