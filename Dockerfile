FROM docker:19

COPY qshell_linux_x64 /usr/local/bin
RUN chmod 755 /usr/local/bin/qshell_linux_x64

RUN apk update
RUN apk add make gcc g++ pkgconf
RUN apk add curl openssh-client
RUN apk add python2
RUN apk add cairo
RUN apk add ca-certificates
RUN apk add nodejs=12.14.0-r0
RUN apk add npm=12.14.0-r0
RUN mkdir -p ~/.ssh && chmod 700 ~/.ssh
