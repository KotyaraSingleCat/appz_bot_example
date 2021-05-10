pipeline {
    agent {
        docker {
            image 'maven:3.8.1-adoptopenjdk-11'
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh 'DOCKER_BUILDKIT=0'
                sh 'docker build -f ./Dockerfile'
            }
        }
         stage('Deploy') { 
             steps {
                sh 'docker run -d lab11bot'
            }
        }
    }
}
