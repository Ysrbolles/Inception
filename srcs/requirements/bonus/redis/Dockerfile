FROM debian:buster


RUN apt-get update && \
    apt-get install redis-server -y


CMD [ "redis-server", "--protected-mode",  "no" ]