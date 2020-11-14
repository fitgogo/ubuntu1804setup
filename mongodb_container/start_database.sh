#!/bin/sh

docker run --name mongodb\
	-v /home/dev/tools/mongodb_container/volume:/mnt\
	-e MONGO_INITDB_ROOT_USERNAME=root\
	-e MONGO_INITDB_ROOT_PASSWORD=password\
	-p 27017:27017\
	-d mongo:4.4.1-bionic
