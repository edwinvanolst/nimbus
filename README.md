# Nimbus

Cloud database for personal use.

## Install

    git clone git@github.com:edwinvanolst/nimbus.git
    cd nimbus
    docker compose up -d

## Development

    docker compose -f docker-compose.dev.yml up -d
    pnpm dev

## Update

    git pull
    docker stop nimbus
    docker rm nimbus
    docker rmi nimbus
    docker compose up -d
