class apache_fix {
  exec { 'fix-wordpress':
    command => '/bin/chmod 755 /var/www/html/wp-content/uploads',
    path    => '/usr/bin',
    onlyif  => '/bin/test -d /var/www/html/wp-content/uploads',
  }
}

