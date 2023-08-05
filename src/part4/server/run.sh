#!/bin/bash
gcc /etc/nginx/main.c -lfcgi
spawn-fcgi -p 8080 a.out
nginx -s reload
