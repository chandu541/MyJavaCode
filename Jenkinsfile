pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'check out'
                git credentialsId: 'chandu541', url: 'https://github.com/chandu541/MyJavaCode.git'

            }
        }
        stage('Build') {
            steps {
                echo 'Build start..'
                
                sh "mvn -version"
            
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
