FROM polinux/supervisor:centos

ENV \
      LOG_LEVEL="info" \
      DEFAULT_CONFIG="true"

RUN \
  rpm --rebuilddb && yum clean all && rm -rf /var/cache/yum && \
  yum update -y && \
  yum install -y httpd mod_ldap && \
  yum clean all && rm -rf /var/cache/yum

ADD container-files /

EXPOSE 80 443