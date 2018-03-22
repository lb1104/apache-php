#!/bin/bash

# toolbox 设置virtualBox共享文件夹路径d盘，共享文件夹名称为d

fold_path=$(cd `dirname $0`; pwd)
#echo $fold_path

docker_run="docker run --name web --restart always -d -v $fold_path:/work -p 80:80 apache-php httpd -DFOREGROUND"
#--restart always

is_win=$(echo $OS | grep -i "win")

docker_info=`docker info 2>&1`
# 判断是否在docker环境下
if [ $? -ne 0 ]; then
	docker-machine start
	docker-machine ssh default "$docker_run"
else
	$docker_run
fi

