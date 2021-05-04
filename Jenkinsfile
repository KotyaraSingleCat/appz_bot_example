pipeline {
    agent { docker { image 'maven:3.3.3' } }
            stage('Initialize'){
                steps{
                    script{
                   
        def dockerHome = tool 'myDocker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
    }
        }             
            }
        stage('log version info') {
      steps {
        sh 'mvn --version'
        sh 'mvn clean install'
      }
    }
    }
}
