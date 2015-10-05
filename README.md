# docker-uchiwa

## Pre-Requisites

* [docker-sensu](http://github.com/roobert/docker-sensu)

## Build
```
docker build -t sensu/uchiwa github.com/sensu/uchiwa
```

## Docker Run
```
docker run \
  --name uchiwa \
  -d \
  -p 3000:3000 \
  --link sensu-api \
  --link rabbitmq \
  -v data:/config \
  sensu/uchiwa
```

## Docker Compose
```
docker-compose up -d
```

## Test
```
curl localhost:3000 -I
```
