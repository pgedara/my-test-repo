pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh(label: "test1", script: "echo test1")

                sshagent (credentials: ['pgedara-github-ssh-key']) {

                    // Clone source
                    sh(label: "Clone MSR", script: '''
                    git config --global user.email "pgedara@mirantis.com"
                    git config --global user.name "pgedara"
                    git remote set-url origin git@github.com:pgedara/my-test-repo.git
                    git checkout master
                    touch myfile.txt
                    echo "this is a test" > myfile.txt
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
