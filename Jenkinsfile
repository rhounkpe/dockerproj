pipeline {
    agent {
        docker {
            image 'python:3.7.3-stretch'
        }
    }
    stages {
        stage('Lint') {
            agent {
                docker {
                    image 'hadolint/hadolint:latest-debian'
                }
            }
            steps {
                echo 'Linting Dockerfile...'
                // sh 'make lint'
                // sh 'pylint --disable=R,C,W1203 ./src/**.py'
                sh 'hadolint Dockerfile | tee -a hadolint_lint.txt'
            }
            post {
                always {
                    archiveArtifacts 'hadolint_lint.txt'
                }
            }
        }
        stage('Build') {
            steps {
                echo 'Building...'
        
                // sh 'make install'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
                sh 'python --version'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying to K8s...'
            }
        }
    }

}