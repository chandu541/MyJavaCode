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
      //  stage('Deploy to Docker')
      //  {
      //      steps{
      //          echo "Delete old container"
      //          sh "/usr/bin/docker rm -f $(usr/bin/docker ps -a)"
                // sh "/usr/bin/docker rm -f Java"
      //          echo "Docker Image cretion"
      //          sh "/usr/bin/docker build -t Java ${WORKSPACE}/."
      //          echo "conver docker image to docker container"
      //          sh "/usr/bin/docker run -dit --name Java -p 9090:8080 Java:latest"       
      //      }
      //  }
        
       //    stage('Deploy')
       // {
      //      steps{
              
        //        withMaven(maven : 'MyMaven')
        //        {
        //            bat 'mvn tomcat7:deploy'
        //        }
        //    }
      //  }
       
        
        stage("Deploy to Tomcat")
       {
            steps{
                
               echo "Tomcat deplyment from jenkins start"
       //          bat 'mvn deploy'
                
                bat 'C:'
                echo "before change directort"
                bat 'pwd'
                bat 'cd target'
                echo "after change directory"
                bat 'pwd'
             //  bat 'copy C:\\Program Files (x86)\\Jenkins\\workspace\\Java\\target\\*.war C:\\Users\\chavula\\Desktop\\DevopsIMG\\Folder\\apache-tomcat-8.5.55-windows-x64\\apache-tomcat-8.5.55\\webapps\\'
             //  bat 'copy *.war C:\\Users\\chavula\\Desktop\\DevopsIMG\\Folder\\apache-tomcat-8.5.55-windows-x64\\apache-tomcat-8.5.55\\webapps\\'

                //  bat "%WORKSPACE%\\target\\*.war C:\\Users\\chavula\\Desktop\\DevopsIMG\\Folder\\apache-tomcat-8.5.55-windows-x64\\apache-tomcat-8.5.55\\webapps\\"
            
             //  deploy contextPath: 'http://localhost:9090/manager/text', war: '%WORKSPACE%\\\\target\\\\*.war' 
             
                dir('C:\\\\Program Files (x86)\\\\Jenkins\\\\workspace\\\\Java\\\\target\\\\') {
                     bat 'copy *.war C:\\Users\\chavula\\Desktop\\DevopsIMG\\Folder\\apache-tomcat-8.5.55-windows-x64\\apache-tomcat-8.5.55\\webapps\\'
                   }
                echo "deploy success"
                
                
                
            }
       }
        
    }
}
