pipeline {
    agent { docker { image 'alpine' } }
    stages {
        stage('build') {
            steps {
                sh 'echo building'
            }
        }

        stage('test') {
            steps {
                sh 'echo testing'
            }
        }

        stage('clean') {
            steps {
                sh 'echo cleaning'
            }
        }
    }
}