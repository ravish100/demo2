FROM openjdk:17.0.1

WORKDIR /usr/src/app 

COPY /var/lib/jenkins/workspace/docker1/target/dockerapp1.jar app.jar

EXPOSE 8081
ENTRYPOINT ["java","-jar","/app.jar"]
