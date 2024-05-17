user { 'holberton':
  ensure     => present,
  shell      => '/bin/bash',
  home       => '/home/holberton',
  managehome => true,
}

file { '/home/holberton':
  ensure => directory,
}

file { '/home/holberton/.bashrc':
  ensure  => file,
  mode    => '0644',
  owner   => 'holberton',
  content => "ulimit -n 1024\n",
}
