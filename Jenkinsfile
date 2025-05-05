pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/krishnaummadi55/reactsampletest.git', branch: 'master'
            }
        }
        stage('Trigger CodeBuild') {
            steps {
                script {
                    awsCodeBuild(
            credentialsType: 'jenkins',
            credentialsId: 'aws-jenkins-creds-id',
            projectName: 'react-test',
            region: 'ap-south-1',
            sourceControlType: 'jenkins',
            envVariables: '[{PIPELINE_NAME, test-build-A}]'
          )
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution finished.'
        }

        success {
            echo 'Build and CodeBuild execution succeeded.'
        }

        failure {
            echo 'Build or CodeBuild execution failed.'
        }
    }
}
