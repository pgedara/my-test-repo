pipeline {
    agent {
        label 'pod && big'
    }
    stages {

        stage('Clone Repo') {
            steps {
                sshagent (credentials: ['distribution-github-ssh-key']) {
                    sh '''
                        cat ~/.ssh/known_hosts
                        mkdir -p my-repo
                        cd my-repo
                        git clone git@github.com:Mirantis/harbor.git .
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
