pipeline{
  agent any
  environment {
  PATH = "${PATH}:${getTerraformPath()}"
}
  stages{
  stage('terraform init'){
      steps{

        sh "terraform init"

      }
    }
    }
    }
    def getTerraformPath(){
      def tfHome = tool name: 'terra12.25', type: 'terraform'
      return tfHome
    }
