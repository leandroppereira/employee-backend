# Imagem base Red Hat UBI com OpenJDK 17
FROM registry.access.redhat.com/ubi9/openjdk-17-runtime:latest

# Diretório de trabalho
WORKDIR /deployments

# Copia o JAR gerado pelo Maven
COPY target/employee-backend-0.0.1.jar app.jar

# Porta exposta pela aplicação
EXPOSE 8080

# Usuário não-root (padrão da UBI)
USER 1001

# Comando de inicialização
ENTRYPOINT ["java","-jar","/deployments/app.jar"]
