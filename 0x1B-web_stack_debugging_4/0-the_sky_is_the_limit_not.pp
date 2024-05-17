file { '/etc/init.d/nginx':
  ensure => link,
  target => "/lib/init/upstart-job",
}

exec { 'nginx-restart':
  command => '/etc/init.d/nginx restart',
  require => File['/etc/init.d/nginx'],
}
