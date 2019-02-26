FROM openjdk:8-jdk-alpine

LABEL maintainer="Tricon"

VOLUME /tmp

EXPOSE 8090

ARG JAR_FILE=/target/jenkinsapp-0.0.1-SNAPSHOT.jar

ADD ${JAR_FILE} jenkinsapp.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/jenkinsapp.jar"]