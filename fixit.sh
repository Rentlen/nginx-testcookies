#!/bin/bash
#After.
useradd -r nginx
cd /etc/init.d/
wget https://raw.githubusercontent.com/systemroot/nginx-c/master/etc/init.d/nginx
chmod +x nginx
cd /etc/nginx/
mkdir conf.d
mkdir sites-enabled
mkdir sites-available
mv nginx.conf /etc/nginx/nginx.conf.old
wget https://raw.githubusercontent.com/systemroot/nginx-c/master/etc/nginx/nginx.conf
cd /etc/nginx/sites-available/
wget https://raw.githubusercontent.com/systemroot/nginx-c/master/etc/nginx/sites-available/default
sudo ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
mkdir -p /usr/share/nginx/html
cat <<EOF > /usr/share/nginx/html/index.html

<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
EOF


echo "---------------------------------------------------------------------------"
echo "~/////////////////////////////////////////////////////////////////////////~"
echo "~/////////////////////////////////////////////////////////////////////////~"
echo "nginx.conf is at /etc/nginx/nginx.conf"
echo "old nginx conf is /etc/nginx/nginx.conf.old"
echo "You can Start/restart/stop nginx with 'service nginx *'"
echo "Als you can use 'nginx -t' to check if all is ok.!"
echo "If you have any suggestion for a module or whatever please suggest it at Issue On github."
echo "~/////////////////////////////////////////////////////////////////////////~"
echo "~/////////////////////////////////////////////////////////////////////////~"
echo "~/////////////////////////////////////////////////////////////////////////~"
