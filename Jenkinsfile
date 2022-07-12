pipeline {
    agent any
    options {
        skipDefaultCheckout()
    }
    tools {
        maven "maven-3.8.6"
    }
    stages {
        
        stage('Delete DIR') {
            steps {
              sh "git clean -x -f"
        
            }
        }
        
        stage('Clean and Install') {
            steps {
                cleanWs()
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
