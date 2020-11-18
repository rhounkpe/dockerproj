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
                sh 'make lint'
            }

        }
        stage('Build') {
            steps {
                echo 'Building...'
        
                sh 'make install'
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