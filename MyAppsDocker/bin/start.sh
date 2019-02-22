#!/usr/bin/env bash
docker container rm $(docker container ls -a | grep 'myapps_springBoot_1' | cut -d' ' -f1) > /dev/null 2>&1
docker container rm $(docker container ls -a | grep 'myapps_angular_1' | cut -d' ' -f1) > /dev/null 2>&1
docker container rm $(docker container ls -a | grep 'myapps_db_1' | cut -d' ' -f1) > /dev/null 2>&1
docker container rm $(docker container ls -a | grep 'myapps_wordpress_1' | cut -d' ' -f1) > /dev/null 2>&1
docker-compose -f $(dirname "${BASH_SOURCE[0]}")/../docker-compose.yml -p myapps up $1