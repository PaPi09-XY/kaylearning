pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                sh 'cd Sampleweb mvn test'
            }
        }
        stage('Build') {
            steps {
                sh 'cd Sampleweb && mvn clean package'
            }
        }
        
        stage('Deploy to Tomcat') {
            steps {
             deploy adapters: [tomcat9(credentialsId: 'tomcat9', path: '', url: 'http://34.228.194.54:8080/')], contextPath: 'webapp', war: '**/*.war'
            }
        }
    }
}
