#install Wordpress

wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz 

cd wordpress
sudo cp -R * /var/wwww/html

mv wp-config-sample.php wp-config.php


sudo yum install httpd24
sudo yum install mod24_ssl
sudo yum install php55 php55-devel php55-common php55-cli php55-pecl-apc php55-pdo php55-mysql php55-xml php55-gd php55-mbstring php-pear php55-mysqlnd php55-mcrypt

sudo service httpd start


ls -l /var/www
sudo groupadd www
sudo usermod -a -G www ec2-user

#need to exit here

groups
sudo chown -R root:www /var/www
sudo chmod 2775 /var/www
find /var/www -type d -exec sudo chmod 2775 {} +
find /var/www -type f -exec sudo chmod 0664 {} +

sudo usermod -a -G www apache
