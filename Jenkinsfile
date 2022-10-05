pipeline {
    agent { dockerfile true }
    stages {
        stage("clone") {
        steps {
            git branch: 'master',
                credentialsId: 'my_cred_id',
                url: 'https://github.com/p0st1t/jenkins-train'

            sh "ls -lat"
        }
        }
        stage('build') {
            steps {
                sh 'mvn --version'
            }
        }
        stage('sonar') {
            steps {
                sh 'wget 172.17.0.2:9000 && cat index.html'
                sh 'mvn sonar:sonar -X'
            }
        }
    }
}
