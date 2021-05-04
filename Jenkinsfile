pipeline {
    agent any
    tools { 
        maven 'maven' 
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
