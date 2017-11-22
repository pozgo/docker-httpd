# Apache in a Docker with Supervisor (CentOS 7 & Alpine)

[![Build Status](https://travis-ci.org/pozgo/docker-httpd.svg)](https://travis-ci.org/pozgo/docker-httpd)  
[![GitHub Open Issues](https://img.shields.io/github/issues/pozgo/docker-httpd.svg)](https://github.com/pozgo/docker-httpd/issues)  
[![Stars](https://img.shields.io/github/stars/pozgo/docker-httpd.svg?style=social&label=Stars)]()
[![Fork](https://img.shields.io/github/forks/pozgo/docker-httpd.svg?style=social&label=Fork)]()  
[![Docker Start](https://img.shields.io/docker/stars/polinux/httpd.svg)](https://hub.docker.com/r/polinux/httpd)
[![Docker Pulls](https://img.shields.io/docker/pulls/polinux/httpd.svg)](https://hub.docker.com/r/polinux/httpd)
[![Docker Auto](https://img.shields.io/docker/automated/polinux/httpd.svg)](https://hub.docker.com/r/polinux/httpd)  
[![](https://img.shields.io/github/release/pozgo/docker-httpd.svg)](http://microbadger.com/images/polinux/httpd)


Felling like supporting me in my projects use donate button. Thank You!  
[![](https://img.shields.io/badge/donate-PayPal-blue.svg)](https://www.paypal.me/POzgo)


[Docker Image](https://registry.hub.docker.com/u/polinux/httpd/) with Apache server using [polinux/supervisor](https://hub.docker.com/r/polinux/supervisor) docker image as base.

### Versions

* `latest/centos` - [![CircleCI Build Status](https://img.shields.io/circleci/project/pozgo/docker-httpd/master.svg)](https://circleci.com/gh/pozgo/docker-httpd)  
* `alpine` - [![CircleCI Build Status](https://img.shields.io/circleci/project/pozgo/docker-httpd/alpine.svg)](https://circleci.com/gh/pozgo/docker-httpd)  


**More also versions available through [tags](https://hub.docker.com/r/polinux/httpd/tags/)**

### Environmental Variable

|Variable|DefaultSettings|Info|
|:--|:--|:--|
|`LOG_LEVEL`|`info`|Specify log level Apache should when started. [Apache Log Levels](https://httpd.apache.org/docs/2.4/mod/core.html#loglevel)|
|`DEFAULT_CONFIG`|`true`|Use default config provided by Apache package - Change to `false` when using custom config|

### Usage

#### Basic

    docker run \
      -d \
      --name httpd \
      -p 80:80 \
      polinux/httpd

#### Set log level to debug

    docker run \
      -d \
      --name httpd \
      -p 80:80 \
      -e LOG_LEVEL="debug" \
      polinux/httpd

### Build

    docker build -t polinux/httpd .

Docker troubleshooting
======================

Use docker command to see if all required containers are up and running:
```
$ docker ps
```

Check logs of httpd server container:
```
$ docker logs httpd
```

Sometimes you might just want to review how things are deployed inside a running
 container, you can do this by executing a _bash shell_ through _docker's
 exec_ command:
```
docker exec -ti httpd /bin/bash
```

History of an image and size of layers:
```
docker history --no-trunc=true polinux/httpd | tr -s ' ' | tail -n+2 | awk -F " ago " '{print $2}'
```

## Author

Przemyslaw Ozgo (<linux@ozgo.info>)