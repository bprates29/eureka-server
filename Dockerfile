# Usando uma imagem base do JDK 17
FROM eclipse-temurin:17-jdk-alpine

# Diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo JAR gerado para o container
COPY target/eureka-server-0.0.1-SNAPSHOT.jar eureka-server.jar

# Expondo a porta do Eureka Server
EXPOSE 8761

# Comando para rodar a aplicação
ENTRYPOINT ["java", "-jar", "eureka-server.jar"]
