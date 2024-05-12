#!/bin/bash

# Find the PID of the Apache process
PID=$(pgrep -f apache2)

# Attach strace to the Apache process and save the output to a file
sudo strace -p $PID -o /var/log/apache2/strace.log
