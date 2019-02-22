#!/usr/bin/env bash
docker-compose -f $(dirname "${BASH_SOURCE[0]}")/../docker-compose.yml -p myapps logs -f $1