# sonar-scanner
Modify from: https://stackoverflow.com/a/40612088

# Docker hub
https://hub.docker.com/r/danny50610/sonar-scanner/

# .gitlab-ci.yml Example
```
sonarqube:
  stage: sonarqube
  image: danny50610/sonar-scanner
  cache:
    key: $CI_COMMIT_REF_NAME
    paths:
      - .sonar
  script:
    - export SONAR_USER_HOME=$PWD/.sonar
    - sonar-scanner -Dsonar.projectKey=$sonar_project_key
                    -Dsonar.organization=$sonar_organization
                    -Dsonar.host.url=$sonar_host_url
                    -Dsonar.login=$sonar_login
```
