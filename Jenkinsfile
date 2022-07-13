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
        stage('Dcoker Build') {
            steps {
                docker build ravish/dockerapp1.jar .
            }
        } 
        
        
         stage('Docker Run') {
            steps {
                dir ("/var/lib/jenkins/workspace/docker1/target"){
               docker run -d -p 8081:8080 ravish/dockerapp1.jar
                }
            }
         }
        
        
        
        stage('push') {
        docker.withRegistry('https://registry.mycompany.com:8100',
                            'jenkins-registry-credential-id') {
            image.push()
        }
    }
        
    }
}
