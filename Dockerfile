FROM ubuntu
RUN mkdir -p /app/source
COPY . /app/source
RUN apt update -y &&  apt install default-jdk -y
ADD https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz /opt
WORKDIR /opt
RUN tar -zxvf apache-maven-3.8.6-bin.tar.gz && mv apache-maven-3.8.6 maven38
WORKDIR /app/source
RUN /opt/maven38/bin/mvn clean package
RUN mkdir /app1
COPY target/spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar /app1/
CMD ["java", "-jar", "spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar"]
