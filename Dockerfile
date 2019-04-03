FROM openjdk:alpine

RUN apk add --no-cache wget && \
    wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.3.0.1492.zip && \
    unzip sonar-scanner-cli-3.3.0.1492.zip && \
    rm sonar-scanner-cli-3.3.0.1492.zip && \
    cd /usr/bin && ln -s /sonar-scanner-3.3.0.1492/bin/sonar-scanner sonar-scanner && \
    apk del wget
