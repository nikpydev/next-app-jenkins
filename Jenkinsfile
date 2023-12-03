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
    stage('Deploy') {
      steps {
        sh 'npm run start'
      }
    }
  }
}
