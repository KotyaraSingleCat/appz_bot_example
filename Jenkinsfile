pipeline {
    agent {
        docker {
            image 'maven:3.8.1-jdk-11'
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
                sh 'export JAVA_HOME=$JAVA_HOME:/usr/lib/jvm/java-11-openjdk-i386/bin/java export PATH=/usr/lib/jvm/java-11-openjdk-i386/bin:$PATH'
                sh 'echo $JAVA_HOME'
                sh 'export M2_HOME=/usr/local/apache-maven/apache-maven-3.8.1 export M2=$M2_HOME/bin export PATH=$M2:$PATH'
                sh 'echo $M2_HOME'
                sh 'mvn clean install'
                sh 'mvn -e exec:java -Dexec.mainClass=kpi.acts.appz.bot.hellobot.HelloWorldBot'
            }
        }
    }
}
