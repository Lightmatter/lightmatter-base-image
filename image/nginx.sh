#!/bin/bash
set -e
source /lm_build/buildconfig

run apt-get install -y nginx libnginx-mod-http-perl

run cp /lm_build/config/nginx.conf /etc/nginx/nginx.conf

## Install Nginx runit service.
run mkdir /etc/service/nginx
run cp /lm_build/runit/nginx /etc/service/nginx/run

run mkdir /etc/service/nginx-log-forwarder
run cp /lm_build/runit/nginx-log-forwarder /etc/service/nginx-log-forwarder/run
