FROM alpine:latest

RUN apk add git
RUN apk add maven
EXPOSE 9000/tcp