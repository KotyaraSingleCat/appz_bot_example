#
# Build stage
#
FROM maven:3.6.3-jdk-8
COPY . .
RUN mvn -f pom.xml clean install
RUN cd hello_bot 
RUN mvn -X exec:java -Dexec.mainClass=kpi.acts.appz.bot.hellobot.HelloWorldBot -Dexec.args="'1705172028:AAFowiU_cY6xpZqX1Ole3vUrIhU5dINYSaw' 'Kotyara'"
