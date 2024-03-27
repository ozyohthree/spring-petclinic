FROM eclipse-temurin:17-jre-jammy

ARG JAR_FILE=https://github.com/ozyohthree/spring-petclinic/raw/master/jar/app.jar

COPY ${JAR_FILE} app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar", "/app.jar"]

