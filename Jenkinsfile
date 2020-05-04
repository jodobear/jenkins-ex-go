def output

pipeline {

    agent any

    tools {
        go { 'go-1.14' }
    }

    stages {
        stage('build') {
            steps {
                sh 'go build -o go-artifact'
            }
        }
        stage('Publish artifact') {
            steps {
                archiveArtifacts 'go-artifact'
            }
        }
    }
}
