pipeline {
    agent any
    tools { 
        maven 'Maven 3.8.1' 
        jdk 'jdk8' 
    }
      stages {
        stage('log version info') {
      steps {
        sh 'mvn --version'
        sh 'mvn clean install'
      }
    }
  }
}
