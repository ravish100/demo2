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
                cd  "/var/lib/jenkins/workspace/Anand Pipeline1/target"
               sh 'java -jar demo-0.0.1-SNAPSHOT.jar'
                
            }
        } 
    }
}
