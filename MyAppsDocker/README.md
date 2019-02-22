# Vagrant
Wordpress + MySql + Springboot + nginx (for Angular) by Docker

Scripts Unix:
/data/install-docker-compose.sh - install docker-compose
/bin/stop.sh - stop container
/bin/start.sh - start container
/bin/logs.sh - logs container 
	e.g. - ./logs.sh db
/bin/restart-service.sh - restart container
	e.g. - ./restart-service.sh db
	
Scripts Win:
/bin/logs.bat - logs container from host 
	e.g. - .logs.bat db
/bin/restart-service.bat - restart container from host
	e.g. - .restart-service.bat db
	
Vagrant conf:
- box : Ubuntu 16.04.5 LTS
- private ip : 192.168.188.110
- open ports:
	- 8007 : angular
	- 8006 : springboot
	- 8005 : wordpress
- cpu : 1
- mem : 2048 mb