pipeline {
  agent any
  environment {
    NAME = 'Nikhil'
  }
  parameters {
    string(
      name: 'person', 
      defaultValue: 'Nikhil Choudhary', 
      description: 'Who are you?'
    )
    booleanParam(
      name: 'isMale',
      defaultValue: true,
      description: 'Are you male?'
    )
    choice(
      name: 'city',
      choices: ['Jaipur', 'Mumbai', 'Pune'],
      description: 'Which city are you from?'
    )
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
    stage('Parameter') {
      steps {
        sh 'echo "person: $person"'
      }
    }
    stage('Continue ?') {
      input {
        message 'Continue forward?'
        ok 'Yes we should!'
      }
      steps {
        sh 'echo "Continue stage"'
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
    stage("A"){
        steps{
            echo "====++++executing A++++===="
        }
        post{
            always{
                echo "====++++always++++===="
            }
            success{
                echo "====++++A executed successfully++++===="
            }
            failure{
                echo "====++++A execution failed++++===="
            }
    
        }
    }
    stage('Deploy') {
      steps {
        // sh 'docker build -t next-app-jenkins -f Dockerfile .'
        sh 'echo "Deploy stage"'
      }
    }
  }
  post {
    always {
      echo 'I will always run regardless of any of the above stages pass or fail.'
    }
    failure {
      echo 'Failure'
    }
    success {
      echo 'Success'
    }
  }
}
