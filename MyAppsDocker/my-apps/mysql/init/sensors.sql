# create databases
CREATE DATABASE IF NOT EXISTS `sensors`;

# create sensors user and grant rights
CREATE USER 'sensors' IDENTIFIED BY 'sensors';
GRANT ALL PRIVILEGES ON sensors.* TO 'sensors';
GRANT ALL PRIVILEGES ON sensors.* TO 'sensors'@'%';
flush privileges;