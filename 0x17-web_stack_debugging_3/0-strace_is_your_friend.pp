# File: 0-strace_is_your_friend.pp
# Language: Puppet

# Define a new class to fix the Apache 500 error
class apache_fix {
  # Use the `exec` resource to run a command that fixes the issue
  exec { 'fix-wordpress':
    command => 'sudo chmod 755 /var/www/html/wp-content/uploads',
    path    => '/usr/bin',
  }
}
