pipeline {
    agent any
    stages {
 
       stage('main-build'){
           parallel {

                stage('build') {
                    agent { label "pod" }
                    steps {
                        sh 'echo building1'
                    }   
                }

                stage('test') {
                    agent { label "pod" }
                    steps {
                        sh 'echo testing'
                    }
                }

                stage('clean') {
                    agent { label "pod" }
                    steps {
                        sh 'echo cleaning'
                    }
                }

           }
       }

        stage('main-build2'){
           parallel {

                stage('build2') {
                    agent { label "pod" }
                    steps {
                        sh 'echo building1'
                    }   
                }

                stage('test2') {
                    agent { label "pod" }
                    steps {
                        sh 'echo testing'
                    }
                }

                stage('clean2') {
                    agent { label "pod" }
                    steps {
                        sh 'echo cleaning'
                    }
                }
           }
       }

    }
}
