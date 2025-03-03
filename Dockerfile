FROM openjdk:17-bullseye

ENV DOCKERIZE_VERSION v0.9.2

# Instalando apt-get
RUN apt update && apt install -y apt-utils

# Instalando dockerize
RUN apt-get update \
    && apt-get install -y wget \
    && wget -O - https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz | tar xzf - -C /usr/local/bin \
    && apt-get autoremove -yqq --purge wget && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY target/*.jar app.jar

EXPOSE 8080

# Se utiliza para esperar a que el servicio de base de datos inicie
ENTRYPOINT ["dockerize", "-wait", "tcp://db:3306", "-timeout", "30s", "java", "-jar", "app.jar"]