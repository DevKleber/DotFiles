sudo update-alternatives --set php /usr/bin/php7.4

sudo a2dismod php7.1
sudo a2dismod php7.2

sudo a2enmod php7.4

systemctl restart apache2
sudo service apache2 restart
