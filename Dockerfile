FROM docker:18

RUN apk update
RUN apk ca-certificates
RUN apk add openssh-client
RUN apk add nodejs=10.14.2-r0
RUN apk add npm=10.14.2-r0
RUN mkdir -p ~/.ssh && chmod 700 ~/.ssh