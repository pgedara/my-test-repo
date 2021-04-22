pipeline {
    agent { docker { image 'alpine' } }
    stages {
 
       stage('main-build'){
           parallel {

                stage('build') {
                    steps {
                        sh 'echo building1'
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

        stage('main-build2'){
           parallel {

                stage('build2') {
                    steps {
                        sh 'echo building1'
                    }   
                }

                stage('test2') {
                    steps {
                        sh 'echo testing'
                    }
                }

                stage('clean2') {
                    steps {
                        sh 'echo cleaning'
                    }
                }
           }
       }

    }
}
