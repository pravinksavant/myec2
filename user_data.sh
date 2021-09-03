#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo service httpd restart
echo "Welcome to AWS" > /var/www/html/index.html
