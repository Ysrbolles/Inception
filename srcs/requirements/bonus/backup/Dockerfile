FROM debian:buster

RUN apt-get update && \
    apt-get install -y curl

RUN curl -L https://github.com/google/cadvisor/releases/download/v0.23.4/cadvisor -o /usr/bin/cadvisor --silent
RUN chmod +x /usr/bin/cadvisor
RUN mkdir -p /data/backup
COPY ./tools/start.sh .

CMD [ "sh", "start.sh" ]