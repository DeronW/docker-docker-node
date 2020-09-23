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
