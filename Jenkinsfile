def output

pipeline {

    agent any

    tools {
        go { 'go-1.14' }
    }

    stages {
        stage('test') {
            steps {
                sh 'go test -o go-artifact'
            }
        }
    }
}
