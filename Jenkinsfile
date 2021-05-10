pipeline {
    agent any
    stages {
        stage('git') {
            steps {
                git url: "https://github.com/KotyaraSingleCat/appz_bot_example.git"
            }
        }
        stage('Build') { 
            steps {
                sh 'DOCKER_BUILDKIT=0'
                sh 'docker build /var/jenkins_home/workspace/JobOne/appz_bot_example/Dockerfile'
            }
        }
         stage('Deploy') { 
             steps {
                sh 'docker run -d lab11bot'
            }
        }
    }
}
