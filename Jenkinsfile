pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Deploy to Tomcat') {
            steps {
                deploy adapters: [
                    tomcat9(
                        credentialsId: 'tomcat9', 
                        path: '', 
                        url: 'http://18.215.158.79:8080/'
                    )
                ], contextPath: 'webapp', war: 'target/kaylearning.war'
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished.'
        }
        success {
            echo 'Deployment successful!'
        }
        failure {
            echo 'Build failed. Please check the logs.'
        }
    }
}
