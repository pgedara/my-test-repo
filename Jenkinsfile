pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                scmSkip(deleteBuild: true, skipPattern:'.*\\[ci skip\\].*')
                sh(label: "test1", script: "echo test1")

                sshagent (credentials: ['pgedara-github-ssh-key']) {

                    // Clone source
                    sh(label: "Clone MSR", script: '''
                    git config --global user.email "pgedara@mirantis.com"
                    git config --global user.name "pgedara"
                    git remote set-url origin git@github.com:pgedara/my-test-repo.git
                    git checkout master
                    echo "this is a test" >> myfile.txt
                    git add .
                    git commit -m "[ci skip] test commit"
                    git push origin master
                    echo "pathmasri"
                    # test
                    '''
                    )
                }
            }   
        }
    }
}
