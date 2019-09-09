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
                withAWS(credentials:'s3.anubhavsidhu.com'){
                    sh 'echo "Uploading content to anubhavsidhu.com"'
                    s3Upload(pathStyleAccessEnabled: true, payloadSigningEnabled: true, file: "index.html", bucket: "anubhavsidhu.com")

                }
            }
        }
    }
}