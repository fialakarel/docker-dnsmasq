# base image
FROM alpine:latest

# maintainer
MAINTAINER Karel Fiala <fiala.karel@gmail.com>

# install
RUN apk --no-cache add dnsmasq

# copy "empty" settings
COPY dnsmasq.conf /etc/dnsmasq.conf

# set startup command
ENTRYPOINT dnsmasq --no-daemon
