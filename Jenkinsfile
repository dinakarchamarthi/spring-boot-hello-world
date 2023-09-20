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
                sh 'mvn clean package'  
            }
        }

    }
}
    
