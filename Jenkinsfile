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
        sh 'mvn -e exec:java -Dexec.mainClass=kpi.acts.appz.bot.hellobot.HelloWorldBot -Dexec.args=""1705172028:AAFowiU_cY6xpZqX1Ole3vUrIhU5dINYSaw" "Kotyara""' 
      }
    }
  }
}
