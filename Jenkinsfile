pipeline {
  agent{
      label 'slave'
  }
  stages {
    stage('Build') {
      steps {
        sh '"mvn" -Dmaven.test.failure.ignore clean install'
      }
    }
    stage('Deploy') {
      steps {   
         deploy adapters: [tomcat8(credentialsId: 'tomcatcredentials', path: '', url: 'http://3.109.186.143:8080')], contextPath: 'javaapp', war: '**/**.war'
      }
    }
  }
}
