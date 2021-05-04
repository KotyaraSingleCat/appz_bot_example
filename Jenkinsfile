pipeline {
    agent any
    tools { 
        maven 'maven'
    }
      stages {
        stage('log version info') {
      steps {
        sh 'mvn clean package'
        sh "mvn -X exec:java -Dexec.mainClass=kpi.acts.appz.bot.hellobot.HelloWorldBot -Dexec.args="""
      }
    }
  }
}
