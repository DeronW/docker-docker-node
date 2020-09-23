# Docker-Docker-Node

This container both contain docker-in-docker and nodejs capability. You can use this container compile nodejs project and docker tool in the same time.

Dockerfile content

    FROM docker:19

    RUN apk update
    RUN apk add make gcc g++ pkgconf
    RUN apk add curl openssh-client
    RUN apk add python2
    RUN apk add cairo
    RUN apk add ca-certificates
    RUN apk add nodejs
    RUN apk add npm
    RUN mkdir -p ~/.ssh && chmod 700 ~/.ssh

DockerHub: https://hub.docker.com/repository/docker/delongw/docker-docker-node/general

### generate docker image

build

> docker build -t docker-docker-node .

tag

> docker tag docker-docker-node:latest delongw/docker-docker-node:0.12

publish

> docker push delongw/docker-docker-node:0.12

### self comments

Check files in docker

If ther container is running

> docker exec -it docker-docker-node /bin/sh

If not, run the image directly

> docker run -it docker-docker-node /bin/sh

### bin folder

Sometime we need other tools during deployment, `bin` folder contains some useful cli-tools, such as qshell command to upload static files to CDN.

### qshell_linux_x64

https://developer.qiniu.com/kodo/tools/1302/qshell#9

copy bin file and grant run permission

    COPY bin/qshell_linux_x64 /usr/local/bin
    RUN chmod 755 /usr/local/bin/qshell_linux_x64
