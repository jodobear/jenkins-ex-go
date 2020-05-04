def output

pipeline {

    agent any

    tools {
        go { 'go-1.14' }
    }
    environment {
		XDG_CACHE_HOME = '/tmp/cache'
        CGO_ENABLED = 0
    }
    stages {
		stage('test') {
            steps {
                sh 'go test'
            }
        }
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
