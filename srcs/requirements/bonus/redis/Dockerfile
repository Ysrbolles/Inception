FROM debian:buster

RUN apt-get update && \
    apt-get install -y vim redis-server php-redis

RUN sed -i -e 's/127.0.0.1/0.0.0.0/g' /etc/redis/redis.conf

# To check everything is good, run this command 'redis-cli monitor' 

CMD [ "redis-server", "--protected-mode",  "no" ]