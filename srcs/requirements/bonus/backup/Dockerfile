FROM debian:buster

RUN apt-get update && \
    apt-get install -y curl

RUN mkdir -p /data/backup
COPY ./tools/start.sh .

CMD [ "sh", "start.sh" ]