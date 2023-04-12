pipeline {
  agent any
  stages {
    stage('Clone') {
      steps {
        git(url: 'https://github.com/krishnaummadi55/reactsampletest', branch: 'master')
      }
    }

    stage('Build') {
      steps {
        sh '''yarn install
yarn run build'''
      }
    }

    stage('ECHO') {
      steps {
        echo 'COMPLETED'
      }
    }

  }
}