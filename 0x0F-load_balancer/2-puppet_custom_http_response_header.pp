# Automate the task of creating a custom HTTP header response
exec { 'update':
command  => '/usr/bin/apt update',
provider => shell,
}
package { 'nginx':
ensure  => 'installed',
require => Exec['update']
}
exec { 'add_header':
  command  => "sed -i '/listen 80 default_server;/a add_header X-Served-By ${hostname};' /etc/nginx/sites-available/default;",
  provider => shell,
}
exec { 'restart':
command  => '/usr/sbin/service nginx restart',
provider => shell,
}
