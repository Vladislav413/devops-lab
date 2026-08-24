# POSIX File Permissions Cheat Sheet

Quick reference guide for Linux file permissions using chmod, chown, and chgrp.

## Permission Bit Values
- `r` (read) = 4
- `w` (write) = 2
- `x` (execute) = 1

## Common Numeric Modes
- `755` (`rwxr-xr-x`) — Standard for directories and executable scripts.
- `644` (`rw-r--r--`) — Standard for regular files (configs, text files).
- `600` (`rw-------`) — Secure files (SSH keys, confidential data).
- `700` (`rwx------`) — Secure directories restricted to owner only.

## Core Commands & Examples
- `chmod 755 script.sh` — Set executable permissions for owner, read/execute for others.
- `chmod u+x,g-w script.sh` — Add execute permission for owner, remove write from group.
- `chown user:group file` — Change both owner and group of a file.
- `chown -R www-data:www-data /var/www` — Change owner and group recursively for a directory.
