FROM docker:18

RUN apk update
RUN apk add nodejs=10.14.2-r0
RUN apk add npm=10.14.2-r0
