FROM openjdk:8 

WORKDIR /usr/src/app 

COPY /var/lib/jenkins/workspace/Anand Pipeline1/target/demo-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]
