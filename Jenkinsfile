@Library('github.com/releaseworks/jenkinslib') _
pipeline{
  agent any
  environment {
  PATH = "${PATH}:${getTerraformPath()}"
}
  stages{
  stage('terraform init'){
  withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'aws-key', usernameVariable: 'AWS_ACCESS_KEY_ID', passwordVariable: 'AWS_SECRET_ACCESS_KEY']]) {


      steps{

        sh "terraform init"

      }
      }
    }
    }
    }
    def getTerraformPath(){
      def tfHome = tool name: 'terra12', type: 'terraform'
      return tfHome
    }
