FROM alpine:latest

RUN apk add --update \
mongodb \
mongodb-tools && \
rm -rf /var/cache/apk/*

VOLUME /data/db
EXPOSE 27017 28017

COPY run.sh /root
ENTRYPOINT [ "/root/run.sh" ]
CMD [ "mongod" ]
