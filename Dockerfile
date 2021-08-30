#ARG JDK=maven:3.8.2-openjdk-16-slim
#ARG JRE=openjdk:16-jre-slim-buster
#
#FROM ${JDK} AS build
#COPY src /home/app/src
#ADD pom.xml .
#COPY pom.xml /home/app
#RUN mvn -ntp -f /home/app/pom.xml clean package -DskipTests
#
#FROM ${JRE}
#COPY --from=build /home/app/target/kube_child-0.0.1-SNAPSHOT.jar /usr/local/lib/kube_child-0.0.1-SNAPSHOT.jar
#EXPOSE 8081
#ENTRYPOINT ["java","-jar","/usr/local/lib/kube_child-0.0.1-SNAPSHOT.jar"]

FROM openjdk:16
VOLUME /tmp
COPY target/kube_child-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8081
ENTRYPOINT ["java","-jar","/app.jar"]