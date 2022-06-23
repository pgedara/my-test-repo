pipeline {
    agent any
    environment {
        TAG = sh(returnStdout: true, script: "git rev-parse --short=10 HEAD").trim()
    }
    stages {

        stage('build') {
            steps{
                sh 'echo building........'
            }
        }

        stage('push') {
            when {
                branch "master"
                not {
                    changelog '.*^\\[ci skip\\] .+$'
                }
            }
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
                            #echo "this is a test" >> myfile.txt
                            sed -i '/^image_tag /s/=.*$/= ${TAG}/' ./deploy/terraform/system.auto.tfvars
                            git add ./deploy/terraform/system.auto.tfvars
                            git commit -m "[ci skip] Terraform configs updated with the latest image tag"
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
