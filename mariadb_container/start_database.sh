#!/bin/sh

docker run --name mariadb\
	-v /home/dev/tools/mariadb_container/volume:/mnt \
	-e MYSQL_ROOT_PASSWORD=password \
	-e MYSQL_DATABASE=james \
	-p 3306:3306 \
	-d mariadb:10.5.6 \
	--character-set-server=utf8mb4 \
	--collation-server=utf8mb4_unicode_ci \
	--lower_case_table_names=1
