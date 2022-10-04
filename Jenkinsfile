pipeline {
    agent { dockerfile true }
    stages {
        stage('build') {
            steps {
                sh 'java -version'
                sh 'mvn clean package -DskipTests'
            }
        }
        stage('sonar') {
            steps {
                sh  'mvn sonar:sonar'
            }
        }
    }
}
