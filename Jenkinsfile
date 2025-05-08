pipeline {
    agent {
        label 'pod && big'
    }
    stages {

        stage('Clone Repo') {
            steps {
                git credentialsId: 'distribution-github-ssh-key',
                    url: 'git@github.com:docker/dhe-deploy.git',
                    branch: 'main'
            }
        }

        stage('main-build') {
            parallel {
                stage('build') {
                    steps {
                        sh 'echo building1'
                    }
                }
            }
        }
    }
}