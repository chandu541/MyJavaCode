pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'check out'
                git credentialsId: 'chandu541', url: 'https://github.com/chandu541/MyJavaCode.git'

            }
        }
        stage('Build')
        {
            steps{
                withMaven(maven : 'MyMaven')
                {
                    sh 'mvn clean package'
                }
            }
        }
        stage('Deploy to  Tomcat')
        {
            steps{
                echo 'tomcat'
                
            }
        }
        
    }
}
