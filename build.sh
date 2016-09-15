#! /bin/bash

version=${1:?"Required to input docker version. e.g. 1.0.1-core-deps-confd"}
docker build -t crowded/dotnet:latest -t crowded/dotnet:${version} .
