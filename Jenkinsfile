pipeline {
  agent any
  stages {
    stage('Install') {
      steps {
        sh 'yarn'
      }
    }
    stage('Build') {
      steps {
        sh 'yarn build'
      }
    }
    stage('Test') {
      steps {
        sh 'yarn test'
      }
    }
    stage('Deploy') {
      steps {
        sh 'yarn start'
      }
    }
  }
}
