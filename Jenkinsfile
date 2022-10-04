pipeline {
    agent { dockerfile true }
    stages {
        stage('build') {
            steps {
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
