pipeline {
  agent {
    docker {
      image 'maven:3.8.1'
    }
  }
  stages {
    stage('Build') {
      steps {
        sh 'mvn clean package'
        sh 'mvn -X exec:java -Dexec.mainClass=kpi.acts.appz.bot.hellobot.HelloWorldBot'
      }
    }
  }
}
