pipeline {
  agent any
  stages {
    stage('Clone') {
      steps {
        git(url: 'https://github.com/krishnaummadi55/reactsampletest', branch: 'master')
      }
    }

    stage('') {
      steps {
        sh '''yarn install
yarn run build'''
      }
    }

  }
}