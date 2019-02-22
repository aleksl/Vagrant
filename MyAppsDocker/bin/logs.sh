#!/usr/bin/env bash
docker-compose -f $(dirname "${BASH_SOURCE[0]}")/../docker-compose.yml -p my-apps logs -f $1