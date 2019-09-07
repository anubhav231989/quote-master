pipeline {
    agent any
    stages {
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