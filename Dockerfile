FROM ubuntu
RUN mkdir -p /app/source
COPY . /app/source
RUN apt update -y &&  apt install default-jdk -y
WORKDIR /app/source
RUN /var/lib/jenkins/apache-maven-3.9.4/bin/mvn clean package
RUN mkdir /app1
COPY target/spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar /app1/
CMD ["java", "-jar", "spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar"]
