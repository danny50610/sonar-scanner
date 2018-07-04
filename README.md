# sonar-scanner
Modify from: https://stackoverflow.com/a/40612088

# Docker hub
https://hub.docker.com/r/danny50610/sonar-scanner/

# .gitlab-ci.yml Example
```
sonarqube:
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
# sonar-project.properties Example (for laravel)
```
# Path to the parent source code directory.
sonar.sources=app

# Language
sonar.language=php

# Encoding of the source code
sonar.sourceEncoding=UTF-8

# Reusing PHPUnit reports
# - ./vendor/phpunit/phpunit/phpunit
#         --coverage-clover phpunit.coverage.xml
#         --log-junit phpunit.report.xml

sonar.php.coverage.reportPaths=phpunit.coverage.xml
sonar.php.tests.reportPath=phpunit.report.xml

# Here, you can exclude all the directories that you don't want to analyse.
# As an example, I'm excluding the Providers directory
sonar.exclusions=vendor/**

```
