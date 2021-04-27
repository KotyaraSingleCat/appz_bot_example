pipeline {
  agent {
    docker {
      image 'maven'
      args '-v /root/.m2:/root/.m2'
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
