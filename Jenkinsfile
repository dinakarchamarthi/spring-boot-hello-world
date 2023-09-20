pipeline {
  agent any
    stages {
        // stage('Checkout') {
        //     steps {
        //         git clone 'https://github.com/dinakarchamarthi/spring-boot-hello-world.git'
        //     }
        // }
       stage('Build') {
            steps {
                sh '/var/lib/jenkins/apache-maven-3.9.4/bin/mvn clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test' 
            }
        }
      

    }
}
    
