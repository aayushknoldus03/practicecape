pipeline {
    agent any
    stages {
        stage('DEploy') {
            steps {
        withCredentials([file(credentialsId: 'newminikubeconnection', variable: 'var1')]) {
        sh 'kubectl --kubeconfig=$var1 get pods'
            sh 'kubectl --kubeconfig=$var1 apply -f deployment.yml'
            sh 'kubectl --kubeconfig=$var1 set image deployment/python-deployment python-app=aayush0307/pythonmyapp:V.${BUILD_NUMBER}'
           }
         }
      }
         
    }
}
