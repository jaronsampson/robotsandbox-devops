# {{ ansible_managed }}
server {
        listen {{ http_port }};

        root {{ robotsandbox_siteroot }};
        index index.html index.htm;

        server_name {{ robotsandbox_tld }} www.{{ robotsandbox_tld }};

        location / {
                # First attempt to serve request as file, then
                try_files $uri $uri/ =404;
                autoindex off;
        }
}
