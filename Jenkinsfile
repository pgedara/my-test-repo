pipeline {
    agent {
        label 'pod && big'
    }
    stages {

        stage('Clone Repo') {
            steps {
                sshagent (credentials: ['distribution-github-ssh-key']) {
                    sh '''
                        mkdir -p my-repo
                        cd my-repo
                        git clone git@github.com:docker/dhe-deploy.git .
                    '''
                }
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
