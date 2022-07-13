FROM openjdk:17.0.1

WORKDIR /usr/src/app 

COPY /var/lib/jenkins/workspace/cloned/target/demo-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8081
ENTRYPOINT ["java","-jar","/app.jar"]
