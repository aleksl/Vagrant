# create databases
CREATE DATABASE IF NOT EXISTS `wordpress`;

# create wordpress user and grant rights
CREATE USER 'wordpress' IDENTIFIED BY 'wordpress';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'%';
flush privileges;