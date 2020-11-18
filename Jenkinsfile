pipeline {
    agent {
        docker {
            image 'python:3.7.3-stretch'
        }
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'make lint'
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