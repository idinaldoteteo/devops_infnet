FROM openjdk:17-jdk-slim
COPY ./target/vendaApi-0.0.1-SNAPSHOT.jar /app/venda-app.jar
EXPOSE 8081
ENTRYPOINT [ "java", "-jar", "/app/venda-app.jar" ]