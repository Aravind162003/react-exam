pipeline {
  agent any

  environment {
    IMAGE_NAME = "aravind2003/react-exam"
  }

  stages {

    stage('Checkout') {
      steps {
        git branch: 'master',
            url: 'https://github.com/Aravind162003/react-exam'
      }
    }

    stage('Install Node Dependencies') {
      steps {
        sh 'npm install'
      }
    }

    stage('Build Docker Image') {
      steps {
        script {
          dockerImage = docker.build("${IMAGE_NAME}:latest")
        }
      }
    }

    stage('Push to Docker Hub') {
      steps {
        script {
          docker.withRegistry('https://index.docker.io/v1/', 'dockerhub') {
            dockerImage.push("latest")
          }
        }
      }
    }
  }
}
