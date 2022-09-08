pipeline {
  environment {
    registry = "docker_hub_account/tomcat"
    registryCredential = "dockerhub"
}
  agent any
  stages {
    stage('Build') {
      steps {
        docker.build registry + ":$BUILD_NUMBER"
      }
    }
  }
}
    
