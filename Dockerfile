FROM eclipse-temurin:17-jre-jammy

USER root

ARG JAR_FILE https://github.com/ozyohthree/spring-petclinic/raw/master/jar/app.jar

ADD ${JAR_FILE} /app/app.jar

RUN chgrp -R 0 /app && \
    chmod -R g=u /app

USER 1001

EXPOSE 8080

ENTRYPOINT ["java","-jar", "/app/app.jar"]

