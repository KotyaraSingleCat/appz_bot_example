pipeline {
    agent any
    tools { 
        maven 'maven'
    }
      stages {
        stage('log version info') {
      steps {
        sh 'mvn clean install'
        sh 'mvn -X exec:java -Dexec.mainClass=kpi.acts.appz.bot.hellobot.HelloWorldBot'
      }
    }
  }
}
