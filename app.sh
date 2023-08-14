#!/bin/bash

# MySQL
alias runmysql5="docker run --name imysql5.7 -e MYSQL_ROOT_PASSWORD=root --platform linux/x86_64 -p 3306:3306 -d mysql:5.7"
alias runmysql8="docker run --name imysql8 -e MYSQL_ROOT_PASSWORD=root --platform linux/x86_64 -p 3306:3306 -d mysql:8"


# Redis
alias runredis="docker run -d --name iredis -p 6379:6379 redis"
alias rediscli="redis-cli"
alias redisclip="redis-cli ping"


# RabbitMQ
alias runamqp="docker run --rm -d --hostname my-rabbit -p 15672:15672 -p 5672:5672 rabbitmq:3-management"
alias amqpdash='firefox http://127.0.0.1:15672'


# Nginx
alias ng="nginx"
alias ngt="nginx -t"


# Elasticsearch


# Hbase


# Kafka


