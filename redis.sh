#!/bin/bash

apt-get update > /dev/null
apt-get -y install make

mkdir /opt/redis
cd /opt/redis
# Use latest stable
wget -q http://download.redis.io/redis-stable.tar.gz
# Only update newer files
tar -xz --keep-newer-files -f redis-stable.tar.gz

cd redis-stable
make
make install
#rm /etc/redis.conf
mkdir -p /etc/redis
mkdir /var/redis
chmod -R 777 /var/redis
useradd redis

cp -u /vagrant/redis.conf /etc/redis/12717.conf
cp -u /vagrant/redis.init.d /etc/init.d/redis_12717

update-rc.d redis_12717 defaults

chmod a+x /etc/init.d/redis_12717
/etc/init.d/redis_12717 start
