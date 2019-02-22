#!/usr/bin/env bash
docker container rm $(docker container ls -a | grep 'my-apps_springBoot_1' | cut -d' ' -f1) > /dev/null 2>&1
docker container rm $(docker container ls -a | grep 'my-apps_angular_1' | cut -d' ' -f1) > /dev/null 2>&1
docker container rm $(docker container ls -a | grep 'my-apps_db_1' | cut -d' ' -f1) > /dev/null 2>&1
docker container rm $(docker container ls -a | grep 'my-apps_wordpress_1' | cut -d' ' -f1) > /dev/null 2>&1
docker-compose -f $(dirname "${BASH_SOURCE[0]}")/../docker-compose.yml -p my-apps up $1