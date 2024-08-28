pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }
        
        stage('Test') {
            steps {
                sh 'pytest'
            }
        }
        
        stage('Deploy') {
            when {
                branch 'main'
            }
            steps {
                // Assuming you're using a deployment tool like Ansible, Docker, or SCP.
                sh 'deploy.sh'
            }
        }
    }
    
    post {
        success {
            emailext to: 'rajpreetsinghjahagirdar59@gmail.com',
                     subject: 'Build Successful: ${env.JOB_NAME} #${env.BUILD_NUMBER}',
                     body: 'The build was successful.'
        }
        failure {
            emailext to: 'rajpreetsinghjahagirdar59@gmail.com',
                     subject: 'Build Failed: ${env.JOB_NAME} #${env.BUILD_NUMBER}',
                     body: 'The build failed. Please check the logs.'
        }
    }
}
