#!/bin/bash

docker pull nats
docker network create nats
docker run --name nats --network nats --rm -p 4222:4222 -p 8222:8222 nats -js --http_port 8222 -D --logtime
