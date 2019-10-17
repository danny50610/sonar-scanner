FROM openjdk:alpine

RUN apk add --no-cache wget && \
    wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.2.0.1873.zip && \
    unzip sonar-scanner-cli-4.2.0.1873.zip && \
    rm sonar-scanner-cli-4.2.0.1873.zip && \
    cd /usr/bin && ln -s /sonar-scanner-4.2.0.1873/bin/sonar-scanner sonar-scanner && \
    apk del wget
