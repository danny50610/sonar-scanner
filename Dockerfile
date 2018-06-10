FROM java:alpine

RUN apk add --no-cache wget && \
    wget https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.2.0.1227-linux.zip && \
    unzip sonar-scanner-cli-3.2.0.1227-linux && \
    cd /usr/bin && ln -s /sonar-scanner-cli-3.2.0.1227-linux/bin/sonar-scanner sonar-scanner && \
    apk del wget
