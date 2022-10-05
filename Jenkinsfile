pipeline {
    agent { dockerfile true }
    stages {

        stage('build') {
            steps {
                sh 'mvn --version'
            }
        }
        stage('sonar') {
            steps {
                sh 'mvn sonar:sonar -X -Dsonar.host.url=http://172.17.0.2:9000/'
            }
        }
    }
}
