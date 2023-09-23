file { '/tmp/school':
    ensure  => 'present',
    content => 'I love Puppet',
    owner   => 'www-data',
    group   => 'w7w-data',
    mode    => '0744'
}
