exec { 'sed_failed':
  command     => '/bin/echo "Error running sed command"',
  path        => ['/bin'],  # Specify the path where the echo command is located
  provider    => shell,     # Specify the shell provider for compatibility
  refreshonly => true,      # Only run this command when explicitly triggered
}

