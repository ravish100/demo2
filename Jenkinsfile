pipeline {
    agent any
    
    tools {
        maven "maven-3.8.6"
          }
    stages {
           
        stage('Clean and Install') {
            steps {
                 sh 'mvn clean install'
            }
        }
        stage('Package') {
            steps {
               sh 'mvn package'
            }
        } 
         stage('Run') {
            steps {
                dir ("/var/lib/jenkins/workspace/cloned/target"){
               bat 'java -jar demo-0.0.1-SNAPSHOT.jar'
                }
            }
         }
    }
}
