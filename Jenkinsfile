node {
  stage ('Build') {
    git url: 'https://github.com/KotyaraSingleCat/appz_bot_example'
    withMaven {
      sh 'mvn clean install'
      sh 'mvn -e exec:java -Dexec.mainClass=kpi.acts.appz.bot.hellobot.HelloWorldBot'
  }
}
