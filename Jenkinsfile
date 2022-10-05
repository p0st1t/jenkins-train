pipeline {
    agent { dockerfile true }
    stages {
        stage('Build & SonarQube analysis') {
            steps {
             withSonarQubeEnv('My SonarQube Server') {
                sh 'mvn sonar:sonar -X -Dsonar.host.url=http://172.17.0.2:9000/'
                }
            }
        }
        stage("Quality Gate") {
            steps {
              timeout(time: 1, unit: 'HOURS') {
                waitForQualityGate abortPipeline: true
              }
            }
        }
    }
}
