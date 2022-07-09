pipeline {
    agent any
    tools {
        maven "maven-3.8.6"
    }
    stages {
        stage('Clean and Install') {
            steps {
               bat 'mvn clean install'
            }
        }
        stage('Package') {
            steps {
               bat 'mvn package'
            }
        } 
         stage('Run') {
            steps {
                dir ("C:\\Users\\Administrator\\.jenkins\\workspace\\Anand1\\target"){
               bat 'java -jar demo-0.0.1-SNAPSHOT.jar'
                }
            }
        } 
    }
}
