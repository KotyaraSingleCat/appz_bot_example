pipeline {
    agent {
        docker {
            image 'maven:3.8.1-openjdk-8'
            args '-v $HOME/.m2:/root/.m2'
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
                sh 'echo $HOME'
                sh 'mvn clean install'
                sh 'java hello_bot.src.main.java.kpi.acts.appz.bot.hellobot.HelloWorldBot'
            }
        }
    }
}
