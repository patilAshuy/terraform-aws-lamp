#!/bin/bash
yum update -y

# Install Apache
yum install -y httpd
systemctl start httpd
systemctl enable httpd

# Install MySQL
yum install -y mariadb-server
systemctl start mariadb
systemctl enable mariadb

# Install PHP
yum install -y php php-mysqlnd

# Create test page
echo "<?php phpinfo(); ?>" > /var/www/html/index.php

# Permissions
chown -R apache:apache /var/www/html
chmod -R 755 /var/www/html

systemctl restart httpd
