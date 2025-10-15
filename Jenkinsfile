pipeline {
    agent any

    environment {
        IMAGE_NAME = "maven-build-demo"
    }

    stages {

        stage('Checkout') {
            steps {
                echo 'Cloning the repository...'
                git branch: 'main', url: 'https://github.com/manoj198-coder/maven-demo.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image using Maven base...'
                sh 'docker build -t ${IMAGE_NAME} .'
            }
        }

        stage('Run Maven Build') {
            steps {
                echo 'Running build inside Docker container...'
                sh 'docker run --rm ${IMAGE_NAME}'
            }
        }

        stage('Verify Image') {
            steps {
                echo 'Listing Docker images...'
                sh 'docker images'
            }
        }
    }

    post {
        success {
            echo ' Jenkins pipeline executed successfully!'
        }
        failure {
            echo ' Jenkins pipeline failed. Check logs for details.'
        }
    }
}
