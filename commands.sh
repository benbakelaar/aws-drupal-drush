root@ip-172-31-53-16:/var/www/html/drupal# history
apt-get update
apt-get install apache2
cd /var/www/html
ls -al
apt-get install mysql-server php5-mysql
mysql -u root -p
apt-get install php5 libapache2-mod-php5 php5-gd
ll
mv index.html index.old
nano index.php
wget http://files.drush.org/drush.phar
php drush.phar
php drush.phar core-status
chmod +x drush.phar
mv drush.phar /usr/local/bin/drush
ls -al
drush dl drupal
mysql -udrupaluser -p
mysql -uroot -p
ll
ls -al
mv drupal-8.3.0/ drupal
cd drupal
drush site-install standard --account-name=admin --account-pass=admin --db-url=mysql://drupaluser:drupalpass@localhost/drupaldb
drush config-set system.theme default bartik
drush en bartik
a2enmod rewrite
nano /etc/apache2/apache2.conf 
service apache2 restart
cd ..
ll
chown -hR www-data:www-data drupal
chmod -R 755 drupal
ll
cd drupal
drush dl zircon
drush en zircon
drush config-set system.theme default zircon
drush dl admin_toolbar
drush en admin_toolbar
