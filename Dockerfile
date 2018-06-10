FROM java:alpine

RUN apk add --no-cache wget && \
    wget https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.2.0.1227.zip && \
    unzip sonar-scanner-cli-3.2.0.1227.zip && \
    cd /usr/bin && ln -s /sonar-scanner-3.2.0.1227/bin/sonar-scanner sonar-scanner && \
    apk del wget && \
    rm sonar-scanner-cli-3.2.0.1227.zip
