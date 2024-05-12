# Description: This Puppet resource fixes the incorrect 'phpp' string in the specified file.

# Use the `exec` resource to fix the incorrect 'phpp' string
exec { 'fix-wordpress':
  # Specify the sed command to replace 'phpp' with 'php' in the specified file
  command => '/bin/sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  # Specify the path to the sed command
  path    => '/usr/local/bin/:/bin/',
}
