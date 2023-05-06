pipeline {
    agent any
    stages {
    stage('git clone') {
            steps {
              git branch: 'main', url: 'https://github.com/aayushknoldus03/finalcapestone'
            }
        }
       
         stage('Generate Artifact') {
            steps {
                sh 'tar -cvf app.tar app.py'
            }
        }
        stage('Building Docker Image') {
            steps {
                sh 'docker build -t aayush0307/pythonmyapp:V.${BUILD_NUMBER} .'
            }
            }
        
    }
}
