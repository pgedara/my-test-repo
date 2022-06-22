pipeline {
    agent any
    stages {
        stage('build') {
            agent { label "pod" }
            steps {
                sh(label: "test1", script: "echo test1")
            }   
        }
    }
}
