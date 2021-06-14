pipeline {
    agent { docker { image 'alpine' } }
    stages {
 
       stage('main-build'){
           parallel {

                stage('build') {
                    agent { docker { image 'alpine' } }
                    steps {
                        sh 'echo building1'
                    }   
                }

                stage('test') {
                    agent { docker { image 'alpine' } }
                    steps {
                        sh 'echo testing'
                    }
                }

                stage('clean') {
                    agent { docker { image 'alpine' } }
                    steps {
                        sh 'echo cleaning'
                    }
                }

           }
       }

        stage('main-build2'){
           parallel {

                stage('build2') {
                    agent { docker { image 'alpine' } }
                    steps {
                        sh 'echo building1'
                    }   
                }

                stage('test2') {
                    agent { docker { image 'alpine' } }
                    steps {
                        sh 'echo testing'
                    }
                }

                stage('clean2') {
                    agent { docker { image 'alpine' } }
                    steps {
                        sh 'echo cleaning'
                    }
                }
           }
       }

    }
}
