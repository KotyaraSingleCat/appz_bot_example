pipeline {
    agent {
        docker {
            image 'maven:3.8.1-jdk-11'
        }
    }
    environment {
        JAVA_HOME="$JAVA_HOME:/usr/lib/jvm/java11/bin/java"
        PATH="/usr/lib/jvm/java11/bin:$PATH /opt/maven-3.8.1/bin:$PATH"
        M2_HOME="/opt/maven-3.8.1"
    }
    stages {
        stage('git') {
            steps {
                git url: "https://github.com/KotyaraSingleCat/appz_bot_example.git"
            }
        }
        stage('Build') { 
            steps {
                sh 'echo $JAVA_HOME'
                sh 'echo $M2_HOME'
                sh 'mvn clean install'
                sh 'mvn -e exec:java -Dexec.mainClass=kpi.acts.appz.bot.hellobot.HelloWorldBot'
            }
        }
    }
}
