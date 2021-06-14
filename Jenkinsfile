pipeline {
    agent any
    stages {
 
       stage('main-build'){
           parallel {

                stage('build') {
                    agent { label "pod" }
                    steps {
                        sh(label: "test1", script: "echo test1")
                    }   
                }

                stage('test') {
                    agent { label "pod" }
                    steps {
                        sh(label: "test2", script: "echo test2")
                    }
                }

                stage('clean') {
                    agent { label "pod" }
                    steps {
                        sh(label: "test3", script: "echo test3")
                    }
                }

           }
       }

        stage('main-build2'){
           parallel {

                stage('build2') {
                    agent { label "pod" }
                    steps {
                        sh(label: "test4", script: "echo test4")
                    }   
                }

                stage('test2') {
                    agent { label "pod" }
                    steps {
                        sh(label: "test5", script: "echo test5")
                    }
                }

                stage('clean2') {
                    agent { label "pod" }
                    steps {
                        sh(label: "test6", script: "echo test6")
                    }
                }
           }
       }

    }
}
