pipeline {
    agent any 
    stages {
        stage('Pull') { 
            steps {
                git 'https://github.com/myridonn/terraform.git'
            }
        }
        stage('terraform init') {
            steps {
                sh 'terraform init -upgrade'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('terraform validate') {
            steps {
                sh 'terraform validate'
            }
        }
        stage('terraform apply') {
            steps {
                sh 'terraform ${Action} --auto-approve'
            }
        }
    }
}
