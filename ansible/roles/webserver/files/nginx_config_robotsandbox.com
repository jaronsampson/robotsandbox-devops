server {
        listen 80;

        root /usr/share/nginx/html/robotsandbox-webcode/webroot/_site;
        index index.html index.htm;

        server_name robotsandbox.com www.robotsandbox.com;

        location / {
                # First attempt to serve request as file, then
                try_files $uri $uri/ =404;
                autoindex off;
        }
}
