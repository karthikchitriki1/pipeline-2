pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        dockerImage = docker.build registry
      }
    }
  }
}
    
