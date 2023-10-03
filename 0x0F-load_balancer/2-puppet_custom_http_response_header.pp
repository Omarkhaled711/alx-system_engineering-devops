# Automate the task of creating a custom HTTP header response

Exec { path => '/bin/:/sbin/:/usr/bin/:/usr/sbin/' }
exec { 'add_header':
    command  => "
    apt update;
    apt install nginx -y;
    sed -i '/http {/a server_tokens off;\\n   add_header X-Served-By ${hostname};' /etc/nginx/nginx.conf
    service nginx restart;",
    provider => shell,
}
