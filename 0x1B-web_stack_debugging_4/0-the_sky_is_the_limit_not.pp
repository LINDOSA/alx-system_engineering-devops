# Increase the file descriptor limit for the Nginx service

exec { 'set-nofile-soft-limit':
  command => 'sed -i -e "\$a nginx soft nofile 50000" /etc/security/limits.conf',
  path    => ['/bin', '/sbin', '/usr/bin', '/usr/sbin'],
}

exec { 'set-nofile-hard-limit':
  command => 'sed -i -e "\$a nginx hard nofile 50000" /etc/security/limits.conf',
  path    => ['/bin', '/sbin', '/usr/bin', '/usr/sbin'],
  require => Exec['set-nofile-soft-limit'],
}

service { 'nginx':
  ensure => running,
  enable  => true,
  require => [
    Exec['set-nofile-soft-limit'],
    Exec['set-nofile-hard-limit'],
  ],
}
