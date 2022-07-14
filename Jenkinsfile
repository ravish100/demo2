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
        
        
        
        stage('MYSQL RUN') {
            steps {
                docker run --name mysqldb --network mysql  -p '3306:3306' -e MYSQL_DATABASE=test1 -d 'mysql:8.0.17'
            }
        } 
        
        stage('Docker Build') {
            steps {
                docker build -t ravish100/dockerapp1 .
            }
        } 
        
         
        
         stage('Docker Run') {
            steps {
                dir ("/var/lib/jenkins/workspace/docker1/target"){
               docker run  --name myapp1 --network mysql -d -p 8081:8080 ravish100/dockerapp1
                }
            }
         }
        
        
        
        
    }
}
