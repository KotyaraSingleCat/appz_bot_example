pipeline {
    agent {
        docker {
            image 'maven:3.8.1-adoptopenjdk-11'
            args '-v /root/.m2:/root/.m2'
        }
    }
    stages {
        stage('git') {
            steps {
                git credentialsId: 'git_credentials', url: "https://github.com/KotyaraSingleCat/appz_bot_example.git"
            }
        }
        stage('Build') { 
            steps {
                sh 'mvn clean install'
                sh 'mvn -e exec:java -Dexec.mainClass=hello_bot.src.main.java.kpi.acts.appz.bot.hellobot.HelloWorldBot'
            }
        }
    }
}
