pipeline {
    agent any
    stages {
    stage('git clone') {
            steps {
               git branch: 'development', url: 'https://github.com/aayushknoldus03/Capestone'
            }
         }
         stage('Generate Artifact') {
            steps {
                sh 'pwd'
            }
        }
    }
       post{
        success{
            mail to: "aayush.bisht@knoldus.com",
            subject: "Build is successfull",
            body: "success"
            }
    failure{
      mail to: "aayush.bisht@knoldus.com",
            subject: "Build is failed",
            body: "failed"
         }
       }    
    
}
