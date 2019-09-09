pipeline {
    agent any
    stages {
        stage("Linting"){
            steps{
                 sh "tidy -q -e *.html"   
            }
            post {
                success {
                    slackSend color: "good", message: "${%date%}: Linting HTML Completed. `${env.JOB_NAME}#${env.BUILD_NUMBER}`\n\n"
                }
                failure {
                    slackSend color: "danger", message: "${%date%}: Linting HTML Failed. `${env.JOB_NAME}#${env.BUILD_NUMBER}`\n\n"
                }
            }
        }
        stage('Upload to AWS') {
            steps {
                withAWS(region: 'ap-southeast-1',credentials: 's3.anubhavsidhu.com'){
                    sh 'echo "Uploading content to anubhavsidhu.com"'
                    s3Upload(pathStyleAccessEnabled: true, payloadSigningEnabled: true, file: "index.html", bucket: "anubhavsidhu.com")

                }
                post {
                success {
                    slackSend color: "good", message: "${%date%}: Files Uploaded Successfully. `${env.JOB_NAME}#${env.BUILD_NUMBER}`\n\n"
                    }
                failure {
                    slackSend color: "danger", message: "${%date%}: Failed Uploading Files. `${env.JOB_NAME}#${env.BUILD_NUMBER}`\n\n"
                    }
                }
            }
        }
    }
}