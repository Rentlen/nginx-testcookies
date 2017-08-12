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

#Compile Nginx With Modules.
cd /opt/nginx/sources/nginx-1.9.7/
cat <<EOF > /opt/nginx/sources/nginx-1.9.7/bu.sh
./configure \
--user=nginx \
--group=nginx \
--sbin-path=/usr/sbin/nginx           \
--conf-path=/etc/nginx/nginx.conf     \
--pid-path=/var/run/nginx.pid         \
--lock-path=/var/run/nginx.lock       \
--error-log-path=/var/log/nginx/error.log \
--http-log-path=/var/log/nginx/access.log \
--with-pcre                           \
--with-http_geoip_module \
--with-http_gunzip_module \
--with-http_gzip_static_module \
--with-http_image_filter_module \
--with-http_secure_link_module \
--with-http_sub_module \
--with-http_xslt_module \
--with-http_ssl_module \
--with-http_stub_status_module \
--with-stream \
--with-stream_ssl_module \
--with-threads \
--add-module=/opt/nginx/modules/ngx_devel_kit-0.2.19 \
--add-module=/opt/nginx/modules/testcookie-nginx-module \
--add-module=/opt/nginx/modules/set-misc-nginx-module \
--add-module=/opt/nginx/modules/headers-more-nginx-module \
--add-module=/opt/nginx/modules/echo-nginx-module \
--add-module=/opt/nginx/modules/nginx-dav-ext-module \
--add-module=/opt/nginx/modules/ngx_pagespeed \
--add-module=/opt/nginx/modules/ngx_cache_purge \
--add-module=/opt/nginx/modules/nginx-upload-progress-module

make
make install
EOF

#Starting.
cd /opt/nginx/sources/nginx-1.9.7/
sudo sh bu.sh

echo "-------------------------------------"
echo "~///////////////////////////////////~"
#ask to fix it.
read -p "If you want we can fix nginx Are you OK with this? <y/N> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
   ./fixit.sh
else
  echo "Ok."
  exit 0
fi
