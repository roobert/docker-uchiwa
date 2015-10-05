# docker-uchiwa

## Pre-Requisites

* [docker-sensu](http://github.com/roobert/docker-sensu)

## Configure

Edit `data/config.json`.

## Build
```
docker build -t sensu/uchiwa github.com/sensu/uchiwa
docker build -t uchiwa .
```

## Docker Run
```
docker run \
  --name uchiwa \
  -d \
  -p 3000:3000 \
  --link sensu-api \
  --link rabbitmq \
  uchiwa
```

## Docker Compose
```
docker-compose up -d
```

## Test
```
curl localhost:3000 -I
```
