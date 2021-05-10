pipeline {
    agent {
        docker {
            image 'ubuntu:alpine'
            args '-v /root/.m2:/root/.m2'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'sudo apt install git'
                sh 'sudo apt-get -y install maven'
                sh 'git clone https://github.com/KotyaraSingleCat/appz_bot_example.git'
                sh 'cd appz_bot_example'
                sh 'mvn clean install'
                sh 'cd hello_bot'
                sh 'mvn -X exec:java -Dexec.mainClass="kpi.acts.appz.bot.hellobot.HelloWorldBot"'
            }
        }
    }
}

