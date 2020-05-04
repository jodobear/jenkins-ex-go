def output

pipeline {

    agent any

    tools {
        go { 'go-1.14' }
    }

    stages {
        stage('test') {
            steps {
                sh 'CGO_ENABLED=0 go test -o go-artifact'
            }
        }
    }
}
