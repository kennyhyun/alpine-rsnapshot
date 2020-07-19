FROM alpine:3.12.0
MAINTAINER Kenny Yeo<kenny@yeoyou.net>

RUN apk update && apk add --update\
  rsnapshot\
  bash\
  && rm -rf /var/cache/apk/*

COPY rsnapshot.conf /etc/rsnapshot.conf
COPY entrypoint /entrypoint
RUN chmod 777 /var/log
RUN chmod 777 /run

RUN rsnapshot configtest

VOLUME /root/.ssh
ENTRYPOINT ["/entrypoint"]
CMD ["rsnapshot", "hourly"]
