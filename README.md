Autocompiler For Nginx And TestCookies Module.

This is an auto compiler script for nginx 1.9.7 and some other modules.

Info: This script is tested on Ubuntu 14.04 LTS.

Copy Repo

$ cd ~/

$ apt-get install git -y

$ git clone https://github.com/Rentlen/nginx-testcookies.git

$ cd ~/nginx-testcookies

Start it.

$ sudo sh inginx.sh

U'r Done :)

Modules List.

   1. `ngx_devel_kit-0.2.19         > https://github.com/ildus/nginx_redis`
   2. `set-misc-nginx-module        > https://github.com/openresty/set-misc-nginx-module`
   3. `ngx_pagespeed                > https://github.com/pagespeed/ngx_pagespeed.git`
   4. `ngx_cache_purge              > https://github.com/FRiCKLE/ngx_cache_purge`
   5. `testcookie-nginx-module      > https://github.com/kyprizel/testcookie-nginx-module`
   6. `headers-more-nginx-module    > https://github.com/openresty/headers-more-nginx-module`
   7. `echo-nginx-module            > https://github.com/openresty/echo-nginx-module`
   8. `nginx-dav-ext-module         > https://github.com/arut/nginx-dav-ext-module`
   9. `nginx-upload-progress-module > https://github.com/masterzen/nginx-upload-progress-module`
  
You can read their docs if you don't know how to use them.

#Manual Mode. (To Check If Is AnY Error.)

$ cd ~/

$ wget https://raw.githubusercontent.com/Rentlen/nginx-testcookies/master/mmode.sh

$ chmod +x mmode.sh

$ ./mmode.sh

$ cd /opt/nginx/sources/nginx-1.9.7/

$ wget https://raw.githubusercontent.com/Rentlen/nginx-testcookies/master/build.sh

$ sh build.sh

$ sudo make

$ sudo make install

$ wget https://raw.githubusercontent.com/Rentlen/nginx-testcookies/master/fixit.sh

$ sh fixit.sh
