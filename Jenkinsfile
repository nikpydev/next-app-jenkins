pipeline {
  agent any
  tools {nodejs "NodeJS-01"}
  stages {
    stage('Install') {
      steps {
        sh 'npm i'
        sh '''
          ls
          date
          pwd
          cal 2023
        '''
      }
    }
    stage('Environment Variables') {
      steps: {
        sh 'echo "${BUILD_ID}"'
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
