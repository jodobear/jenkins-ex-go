def output

pipeline {

    agent any

    tools {
        go { 'go-1.14' }
    }

    stages {
        stage('build') {
            steps {
                sh 'CGO_ENABLED=0 go build -o go-artifact'
            }
        }
        stage('Publish artifact') {
            steps {
                archiveArtifacts 'go-artifact'
            }
        }
    }
}
