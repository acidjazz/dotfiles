sudo apt-get update
sudo apt-get install zsh git ssh silversearcher-ag byobu zip awscli mysql-server-5.7 mysql-client-5.7
php7.2 php7.2-mbstring php7.2-xml php7.2-curl php7.2-zip php7.2-pdo php7.2-mysql

sudo mysql --defaults-file=/etc/mysql/debian.cnf
USE mysql;
UPDATE mysql.user SET authentication_string = PASSWORD('1') WHERE user = 'root';
UPDATE mysql.user SET plugin = 'mysql_native_password' WHERE user = 'root';

chsh -s /usr/bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
curl -o- -L https://yarnpkg.com/install.sh | bash

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer
