FROM debian:latest

WORKDIR /opt/tls-client-api

RUN apt-get update && apt-get install -y \
    software-properties-common \
    curl 

COPY config.dist.yml /opt/tls-client-api/config.dist.yml

RUN curl -fsSL https://github.com/bogdanfinn/tls-client-api/releases/download/v1.7.8/tls-client-api-linux-amd64-1.7.8 > /opt/tls-client-api/tls-client-api
RUN chmod +x tls-client-api

EXPOSE 8081

CMD ["./tls-client-api"]