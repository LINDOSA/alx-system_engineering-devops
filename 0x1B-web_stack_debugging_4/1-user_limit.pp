# This exec resource ensures the soft nofile limit for the holberton user is set to 50000.
exec { 'change-os-configuration-for-holberton-user-soft':
  # The command uses sed to append 'holberton soft nofile 50000' to /etc/security/limits.conf
  # if a line starting with 'holberton soft' is found.
  command => "sed -i '/^holberton soft/a holberton soft nofile 50000' /etc/security/limits.conf",
  
  # The path to search for the sed command, ensuring it can be found and executed.
  path    => '/usr/local/bin/:/bin/',
}

# This exec resource ensures the hard nofile limit for the holberton user is set to 50000.
exec { 'change-os-configuration-for-holberton-user-hard':
  # The command uses sed to append 'holberton hard nofile 50000' to /etc/security/limits.conf
  # if a line starting with 'holberton hard' is found.
  command => "sed -i '/^holberton hard/a holberton hard nofile 50000' /etc/security/limits.conf",
  
  # The path to search for the sed command, ensuring it can be found and executed.
  path    => '/usr/local/bin/:/bin/',
}

