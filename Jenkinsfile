pipeline {
  agent any
    stages {
        stage('Checkout') {
            steps {
                git clone 'https://github.com/dinakarchamarthi/ci-cd.git'
            }
        }
    stage('Build') {
            steps {
                sh 'mvn clean package'  
            }
        }
    
