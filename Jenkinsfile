pipeline {
    agent {
        docker {
            image 'maven:3.8.1-openjdk-8'
            args '-v $HOME/.m2:/root/.m2'
        }
    }
    environment {
        JAVA_HOME="$JAVA_HOME:/usr/lib/jvm/openjdk-8/bin/java"
        PATH="/usr/lib/jvm/openjdk-8/bin:$PATH /opt/maven-3.8.1/bin:$PATH"
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
