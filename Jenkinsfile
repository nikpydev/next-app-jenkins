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
      environment {
        USERNAME = 'Nikhil'
      }
      steps {
        sh 'echo "Build ID: ${BUILD_ID}"'
        sh 'echo "Name: $NAME"'
        sh 'echo "Username: $USERNAME"'
      }
    }
    stage('Build') {
      steps {
        sh 'npm run build'
        sh 'echo "Name: $NAME"'
        sh 'echo "Username: $USERNAME"'
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
