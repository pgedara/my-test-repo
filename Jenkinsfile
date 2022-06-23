pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh(label: "test1", script: "echo test1")

                sshagent (credentials: ['tools-github-ssh-key']) {

                    // Clone source
                    sh(label: "Clone MSR", script: '''
                    touch myfile.txt
                    echo "this is a test" > myfile.txt
                    git config --global user.email "tools@mirantis.com"
                    git config --global user.name "docker-ee-tooling"
                    git add .
                    git commit -m "test commit"
                    git push origin master
                    '''
                    )
                }
            }   
        }
    }
}
