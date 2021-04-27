FROM openjdk:11
EXPOSE 9999
ADD target/appz_bot_example.jar appz_bot_example.jar
ENTRYPOINT ["java","-jar","/appz_bot_example.jar"]
