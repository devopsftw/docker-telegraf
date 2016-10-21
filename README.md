# docker-telegraf

Telegraf with consul agent 

```
docker run --rm -e CONSUL_HOST=consul -v $PWD/telegraf.conf:/etc/telegraf/telegraf.conf:ro devopsftw/telegraf 
```

Base image: [telegraf](https://hub.docker.com/_/telegraf/)

Additional available envs:

- CONSUL_HOST
- CONSUL_DC
- CONSUL_DOMAIN
- CONSUL_SERVICE_NAME
