#!/bin/sh

cp rsnapshot.conf rsnapshot.conf.backup 2> /dev/null
cp build/rsnapshot.conf .

echo UID=$(id -u) > .env
echo GID=$(id -g) >> .env
