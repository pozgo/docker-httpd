#!/bin/bash

# Change ServerName value if hostname is different than localhost. 

if [[ ${DEFAULT_CONFIG} == "true" ]]; then
  echo "Setting ServerName variable to: ${HOSTNAME}"
  sed -i 's|#ServerName www.example.com:80|ServerName '${HOSTNAME}':80|g' /etc/httpd/conf/httpd.conf
fi 