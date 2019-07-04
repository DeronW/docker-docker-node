# Docker-Docker-Node

This container both contain docker-in-docker and nodejs capability. You can use this container compile nodejs project and docker tool in the same time.

### generate docker image

build

> docker build -t docker-docker-node .

tag

> docker tag docker-docker-node:latest delongw/docker-docker-node:0.6

publish

> docker push delongw/docker-docker-node:0.6

### check docker inner files

在某个容器中执行

> docker exec -t -i docker-docker-node /bin/sh

或者，启动某个镜像

> docker run -t -i docker-docker-node /bin/sh


### qshell_linux_x64

https://developer.qiniu.com/kodo/tools/1302/qshell#9