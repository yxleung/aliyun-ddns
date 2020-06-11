FROM yxleung/ubuntu:20.04_jdk14 

MAINTAINER liangyuxin.02@gmail.com

ENV PROJECT_HOME=/opt/ddns-server
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
ENV JAVA_HOME=/opt/jdk-14.0.1
ENV PATH=$PATH:$JAVA_HOME/bin:$PROJECT_HOME

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} $PROJECT_HOME/app.jar

WORKDIR $PROJECT_HOME

ENTRYPOINT ["java","-jar","app.jar"]