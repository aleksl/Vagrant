#!/usr/bin/env bash
if [[ -z "$1" ]]; then
    echo "You have to pass argument with a service name!"
    exit -1
else
    docker-compose -f $(dirname "${BASH_SOURCE[0]}")/../docker-compose.yml -p myapps stop -t 1 $1 && \
        docker container rm $(docker container ls -a | grep myapps_$1_1 | cut -d' ' -f1) && \
        docker-compose -f $(dirname "${BASH_SOURCE[0]}")/../docker-compose.yml -p myapps up --build --no-deps -d $1
fi

