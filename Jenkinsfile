pipeline {
    agent {
        docker {
            image 'maven:3.8.1-adoptopenjdk-11'
        }
    }
    stages {
        stage('git') {
            steps {
                git url: "https://github.com/KotyaraSingleCat/appz_bot_example.git"
            }
        }
        stage('Build') { 
            steps {
                sh 'mvn clean install'
                sh 'java -jar /var/jenkins_home/workspace/JobOne/hello_bot/target/kpi.acts.hello_bot-2019.1.jar'
            }
        }
    }
}
