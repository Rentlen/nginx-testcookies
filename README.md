# Автокомпилятор для Nginx (модуль TestCookies ).
------------------------------------------------
Для любителей Английского
# This is an auto compiler script for nginx 1.9.7 and some other modules. 
Данный скрипт тестировался на OS: Ubuntu 14.04 LTS. 

1. Скопируйте репозиторий
  
   $ **`cd ~/`**

   $ **`apt-get install git -y`**

   $ **`git clone https://github.com/Rentlen/nginx-testcookies.git`**
   
   $ **`cd ~/nginx-testcookies`**
   
2. Начинаем )

   $ **`sudo sh inginx.sh`**
   
***, после

  Modules List.
  <pre>
   1. `ngx_devel_kit-0.2.19         > https://github.com/ildus/nginx_redis`
   2. `set-misc-nginx-module        > https://github.com/openresty/set-misc-nginx-module`
   3. `ngx_pagespeed                > https://github.com/pagespeed/ngx_pagespeed.git`
   4. `ngx_cache_purge              > https://github.com/FRiCKLE/ngx_cache_purge`
   5. `testcookie-nginx-module      > https://github.com/kyprizel/testcookie-nginx-module`
   6. `headers-more-nginx-module    > https://github.com/openresty/headers-more-nginx-module`
   7. `echo-nginx-module            > https://github.com/openresty/echo-nginx-module`
   8. `nginx-dav-ext-module         > https://github.com/arut/nginx-dav-ext-module`
   9. `nginx-upload-progress-module > https://github.com/masterzen/nginx-upload-progress-module`
  </pre>

  Вы можете прочитать документацию к модулям, если не знаете, как их использовать


# Ручной режим. (На случай " я сам")

  $ **`cd ~/`**

  $ **`wget https://raw.githubusercontent.com/Rentlen/nginx-testcookies/master/mmode.sh`**
  
  $ **`chmod +x mmode.sh`**
  
  $ **`./mmode.sh`**
  
  $ **`cd /opt/nginx/sources/nginx-1.9.7/`**
  
  $ **`wget https://raw.githubusercontent.com/Rentlen/nginx-testcookies/master/build.sh`**
  
  $ **`sh build.sh`**
  
  $ **`sudo make`**
  
  $ **`sudo make install`**

  $ **`wget https://raw.githubusercontent.com/Rentlen/nginx-testcookies/master/fixit.sh`**
  
  $ **`sh fixit.sh`**
