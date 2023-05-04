pipeline {
    agent any
    stages {
    stage('git clone') {
            steps {
               git branch: 'development', url: 'https://github.com/aayushknoldus03/Capestone'
            }
        }
       
         stage(' push image to hub'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'dockerhubid', variable: 'dockerhubtext')]) {
                    sh 'docker login -u aayush0307 -p ${dockerhubtext}'    
                    }
                    sh "docker push aayush0307/pythonmyapp:V.${BUILD_NUMBER}"
                }
            }
        }
        stage('trigger test') {
            steps {
                build 'test'
            }
        }
         
    }
}
