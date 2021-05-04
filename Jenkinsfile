pipeline {
  environment {dockerImage = ''}
  agent any

  stages {
    stage('Prepare') {
      steps {
        sh 'docker stop $(docker ps -q --filter "ancestor=lab11bot")'
        sh 'docker rm -f $(docker ps -q --filter "ancestor=lab11bot" --filter "status=exited")'
      }
    }
    stage('Build') {
      steps {
        sh 'DOCKER_BUILDKIT=0'
        sh 'docker build -f ./Dockerfile .'
      }
    }
    stage('Deploy') {
      steps {
        sh 'docker run -d lab11bot'
      }
    }
  }
}
