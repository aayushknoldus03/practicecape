pipeline {
    agent any
    stages {  
    stage('installing') {
      steps {
        sh 'pip install pytest'
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
        stage('trigger development') {
            steps {
                build 'test'
            }
        }
         
    }
}
