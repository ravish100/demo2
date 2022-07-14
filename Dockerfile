FROM openjdk:17.0.1

WORKDIR /

COPY /var/lib/jenkins/workspace/docker1/target/dockerapp1.jar app.jar

EXPOSE 8081
ENTRYPOINT ["java","-jar","-Dserver.port=8081","/app.jar"]
