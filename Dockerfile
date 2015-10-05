FROM sensu/uchiwa

COPY data/config.json /config/config.json

CMD ["/go/bin/app", "-c", "/config/config.json"]
