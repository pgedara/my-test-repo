pipeline {
    when {
        not {
            changelog '.*^\\[ci skip\\] .+$'
        }
    }
    agent any
    stages {

        stage('build') {
            steps{
                sh 'echo building........'
            }
        }

        stage('push') {
            steps {
                script{
                    //result = sh (script: "git log -1 | grep '.*\\[ci skip\\].*'", returnStatus: true)
                    //if (result != 0) {
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
                            echo "pathmasri1"
                            # test1
                            '''
                            )
                        }
                   // }
                }
            }   
        }
    }
}
