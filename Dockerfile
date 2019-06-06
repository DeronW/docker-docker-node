FROM docker:18

COPY qshell_linux_x64 /usr/local/bin
RUN chmod 755 /usr/local/bin/qshell_linux_x64

RUN apk update
RUN apk add ca-certificates
RUN apk add openssh-client
RUN apk add nodejs=10.14.2-r0
RUN apk add npm=10.14.2-r0
RUN mkdir -p ~/.ssh && chmod 700 ~/.ssh