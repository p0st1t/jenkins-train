FROM sonarqube:latest

RUN apk add git
RUN apk add maven
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk
