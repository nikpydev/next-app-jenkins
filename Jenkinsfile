pipeline {
  agent any
  tools {nodejs "NodeJS-01"}
  stages {
    stage('Install') {
      steps {
        sh 'npm i'
      }
    }
    stage('Build') {
      steps {
        sh 'npm run build'
      }
    }
    stage('Test') {
      steps {
        sh 'npm run test'
      }
    }
    stage('CreateDockerImages') {
      steps {
        sh 'docker build -t next-app-1_image -f Dockerfile .'
      }
    }
    stage('Deploy') {
      steps {
        sh 'npm run start'
      }
    }
  }
}
