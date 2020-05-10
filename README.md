# sonar-scanner
Modify from: https://stackoverflow.com/a/40612088

# Docker hub
https://hub.docker.com/r/danny50610/sonar-scanner/

# Build image
1. 先手動下載 sonar-scanner-cli 到專案目錄  
(ex: https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.3.0.2102-linux.zip)
2. 解壓縮出來 (ex: sonar-scanner-4.3.0.2102-linux)
3. `docker build -t danny50610/sonar-scanner:latest .`
4. 升級時要記得換檔名

# .gitlab-ci.yml Example
```
sonarqube:
  image: danny50610/sonar-scanner
  # dependencies: ['php7.3:postgres10.6']
  allow_failure: true
  cache:
    key: "$CI_COMMIT_REF_NAME-$CI_JOB_NAME"
    paths:
      - .sonar
  variables:
    GIT_DEPTH: 0
  script:
    - export SONAR_USER_HOME=$PWD/.sonar
    - sonar-scanner -Dsonar.projectKey=$sonar_project_key
                    -Dsonar.organization=$sonar_organization
                    -Dsonar.host.url=$sonar_host_url
                    -Dsonar.login=$sonar_login
                    -Dsonar.branch.name=$CI_COMMIT_REF_NAME
```
# sonar-project.properties Example (for laravel)
```
sonar.inclusions=app/**/*, resources/assets/js/**/*, resources/assets/css/**/*

sonar.language=php, css, js

sonar.sourceEncoding=UTF-8

# Reusing PHPUnit reports
sonar.php.coverage.reportPaths=phpunit.coverage.xml
sonar.php.tests.reportPath=phpunit.report.xml

# Additional parameters
# sonar.my.property=value
```

# 相關專案
* https://github.com/SonarSource/sonar-scanner-cli-docker

# References
* https://github.com/SonarSource/sonar-scanner-cli
* https://docs.sonarqube.org/latest/analysis/scan/sonarscanner/
* https://docs.sonarqube.org/latest/project-administration/narrowing-the-focus/
