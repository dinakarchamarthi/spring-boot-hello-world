pipeline {
  agent any
    stages {
        // stage('Checkout') {
        //     steps {
        //         git clone 'https://github.com/dinakarchamarthi/spring-boot-hello-world.git'
        //     }
        // }
    //    stage('Build') {
    //         steps {
    //             sh '/var/lib/jenkins/apache-maven-3.9.4/bin/mvn clean package'
    //         }
    //     }
    //     stage('Test') {
    //         steps {
    //             sh '/var/lib/jenkins/apache-maven-3.9.4/bin/mvn test' 
    //         }
    //     }
    //   stage('SonarQube Scan') {
    //         steps {
    //             withSonarQubeEnv('Sonarqube-8.9.10') {
    //                 sh '/var/lib/jenkins/apache-maven-3.9.4/bin/mvn sonar:sonar'
    //             }
    // }
    //   }


       stage('Docker build') {
            steps {
                 sh  'sudo docker build -t pod:$BUILD_NUMBER .'
                }
            }
        
      




    }
}
    
