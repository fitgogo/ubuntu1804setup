#!/bin/sh

docker run --name postgresql\
	-v /home/dev/tools/ubuntu1804setup/postgresql_container/volume:/mnt\
	-e POSTGRES_USER=root\
	-e POSTGRES_PASSWORD=password\
	-e POSTGRES_DB=james\
	-p 5432:5432\
	-d postgres:13.0
