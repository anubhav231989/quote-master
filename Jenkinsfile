pipeline {
    agent none 
    stages {
        stage('Test') { 
            steps {
                echo 'Hello, Maven'
            }
        }
        stage("Linting"){
            steps{
                 sh "tidy -q -e *.html"   
            }
        }
        stage('Upload to AWS') {
            steps {
                echo 'Uploaded.'
            }
        }
    }
}