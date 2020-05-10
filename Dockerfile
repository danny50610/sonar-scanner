FROM ubuntu:18.04

ENV LANG C.UTF-8

COPY sonar-scanner-4.3.0.2102-linux /sonar-scanner-4.3.0.2102-linux

RUN ln -s /sonar-scanner-4.3.0.2102-linux/bin/sonar-scanner /usr/bin/sonar-scanner

RUN apt update && apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates && \
    curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
    apt install -y nodejs

