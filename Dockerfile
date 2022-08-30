FROM openjdk:11.0.16
ADD target/docker-spring-boot.jar docker-spring-boot.jar
EXPOSE 8080
#USER spring
ENTRYPOINT ["java","-jar", "docker-spring-boot.jar"]

#FROM maven:3.8.2-jdk-8
#WORKDIR /home/spring/demo
#COPY . .
#RUN mvn clean install
#CMD mvn docker-springboot:run