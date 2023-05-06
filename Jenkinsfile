pipeline {
    agent any
    stages {    
    stage('Run tests') {
      steps {
        sh 'pytest'
      }
    }
         stage(' push image to hub'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'dockerhubid', variable: 'dockerhubtext')]) {
                    sh 'docker login -u aayush0307 -p ${dockerhubtext}'    
                    }
                  
                }
            }
        }
        stage('trigger test') {
            steps {
                 sh "docker push aayush0307/pythonmyapp:V.${BUILD_NUMBER}"
            }
        }
         
    }
}
