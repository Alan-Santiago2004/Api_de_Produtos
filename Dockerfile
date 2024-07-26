# Usar uma imagem base que suporte JDK 21
FROM openjdk:21-jdk-alpine

# Configurar o diretório de trabalho
WORKDIR /app

# Copiar os arquivos do projeto
COPY . /app

# Executar o comando de build
RUN chmod +x ./mvnw && ./mvnw -DoutputFile=target/mvn-dependency-list.log -B -DskipTests clean dependency:list install