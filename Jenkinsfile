pipeline {
  agent any
  environment {
    NAME = 'Nikhil'
  }
  tools {nodejs 'NodeJS-01'}
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
      steps {
        sh 'echo "Build ID: ${BUILD_ID}"'
        sh 'echo "Name: $NAME"'
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
    // stage('Deploy') {
    //   steps {
    //     sh 'npm run start'
    //   }
    // }
  }
}
