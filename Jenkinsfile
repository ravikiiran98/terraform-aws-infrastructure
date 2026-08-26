pipeline {

    agent any

    environment {
        AWS_DEFAULT_REGION = 'ap-south-1'
    }

    stages {

        stage('Checkout') {
            steps { checkout scm
}
        }

      
        stage('Terraform Init') {
            steps {
                 {
                    sh 'terraform init -input=false'
                }
            }
        }

        
        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                 {
                    sh 'terraform plan -input=false -var-file=terraform.tfvars -out=tfplan'
                }
            }
        }

        stage('Approval') {
            steps {
                input message: 'Do you want to apply Terraform changes?',
                      ok: 'Apply'
            }
        }

        stage('Terraform Apply') {
            steps {
                 {
                    sh 'terraform apply -input=false -auto-approve tfplan'
                }
            }
        }

        stage('Terraform Output') {
            steps {
                 {
                    sh 'terraform output'
                }
            }
        }
    }

    post {
        success {
            echo 'Terraform deployment completed successfully.'
        }

        failure {
            echo 'Terraform deployment failed.'
        }
    }
} 
