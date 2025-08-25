pipeline {
    agent any

    parameters {
        choice(
            name: 'ACTION',
            choices: ['init', 'plan', 'deploy'],
            description: 'Choose Terraform action'
        )
    }

    stages {
        stage('Terraform Initialization') {
            when { expression { params.ACTION == 'init' || params.ACTION == 'plan' || params.ACTION == 'deploy' } }
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            when { expression { params.ACTION == 'init' || params.ACTION == 'plan' || params.ACTION == 'deploy' } }
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Terraform Deploy') {
            when { expression { params.ACTION == 'init' || params.ACTION == 'plan' || params.ACTION == 'deploy' } }
            steps {
                sh '''
                if [ -f tfplan ]; then
                    terraform apply -auto-approve tfplan
                else
                    terraform apply -auto-approve
                fi
                '''
            }
        }
    }

    post {
        always {
            echo 'Pipeline successful.'
        }
    }
}