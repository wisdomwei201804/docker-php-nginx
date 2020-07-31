#!/bin/sh
DOCKER_IMG="alpine-www:v1.0"
CONTAINER_ID="alpine-www"
WWW_ROOT="dev.51zyy.cn"

echo "==> 1. Create new container: $CONTAINER_ID"
docker run -d -p 80:8080 -p 443:8443 --name $CONTAINER_ID --restart always \
      -v /www_data/www/$WWW_ROOT:/var/www/html \
      $DOCKER_IMG

#echo "==> 2. Customize nginx configure"
#docker cp config/custom.conf $CONTAINER_ID:/etc/nginx/conf.d/

#echo "==> 3. Container $CONTAINER_ID restart"
#docker container restart $CONTAINER_ID
sleep 3
echo "==> Restart OK!"