FROM debian:buster

# update and install dependencies needed !!
RUN apt-get update && \
    apt-get install -y curl

# create backup directory
RUN mkdir -p /data/backup

# run the database backup script
COPY ./tools/start.sh .

CMD [ "sh", "start.sh" ]