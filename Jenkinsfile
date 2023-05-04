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
}
