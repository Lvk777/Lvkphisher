FROM alpine:latest
LABEL MAINTAINER="https://github.com/lvk777/lvkphisher"
WORKDIR /lvkphisher/
ADD . /lvkphisher
RUN apk add --no-cache bash ncurses curl unzip wget php 
CMD "./lvkphisher.sh"
