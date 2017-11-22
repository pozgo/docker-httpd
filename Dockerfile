FROM polinux/supervisor:alpine

ENV \
      LOG_LEVEL="info" \
      DEFAULT_CONFIG="true"

RUN \
  apk add --update apache2 apache2-utils && \
  rm -rf /var/cache/apk/* && \
  mkdir -p /run/apache2/

ADD container-files /

EXPOSE 80 443