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
                sh 'mvn sonar:sonar -X -Dsonar.host.url=http://172.17.0.2:9000/sonar'
            }
        }
    }
}
