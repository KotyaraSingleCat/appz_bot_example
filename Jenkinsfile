pipeline {
    agent any
    tools { 
        maven 'maven'
    }
      stages {
        stage('log version info') {
      steps {
        sh 'mvn clean install'
        sh 'cd hello_bot'
        sh 'mvn -e exec:java -Dexec.mainClass=kpi.acts.appz.bot.hellobot.HelloWorldBot'
      }
    }
  }
}
