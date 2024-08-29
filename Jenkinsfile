pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                sh 'cd SamplewebApp mvn test'
            }
        }
        stage('Build') {
            steps {
                sh 'cd SamplewebApp && mvn clean package'
            }
        }
        
        stage('Deploy to Tomcat') {
            steps {
                deploy adapters: [tomcat9(credentialsId: 'tomcat_ID', path: '', url: 'http://3.138.172.27:8080/')], contextPath: 'webapp', war: '**/*.war'
            }
        }
    }
}
