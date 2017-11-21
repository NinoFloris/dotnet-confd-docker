#! /bin/bash

version=${1:?"Required to input docker version. e.g. 2.0.3"}
docker build -t crowded/aspnetcore-confd:latest -t crowded/aspnetcore-confd:${version} .
read -p "Would you like to push this version to docker hub as well? [y/N]: "
echo    # (optional) move to a new line
if [[ $REPLY =~ ^([Yy]|yes|Yes|YES)$ ]]
then
    docker push crowded/roadrunner:${version}
    docker push crowded/roadrunner:latest
fi