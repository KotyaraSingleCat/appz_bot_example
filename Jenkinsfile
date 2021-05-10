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
                sh 'cd /var/jenkins_home/workspace/JobOne/'
                sh 'git clone'
                sh 'mvn -e compile exec:java'
                sh 'mvn -e exec:java -Dexec.mainClass=kpi.acts.appz.bot.hellobot.HelloWorldBot'
            }
        }
    }
}
