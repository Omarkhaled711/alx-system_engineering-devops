# Automate the task of creating a custom HTTP header response
include stdlib

package { 'nginx':
  ensure => installed,
}

file_line { 'add_custom_header':
  ensure  => present,
  line    => "  add_header X-Served-By ${hostname};",
  path    => '/etc/nginx/nginx.conf',
  after   => '^http {',
  require => Package['nginx'],
  notify  => Service['nginx'],
}

service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File_line['add_custom_header'],
}
