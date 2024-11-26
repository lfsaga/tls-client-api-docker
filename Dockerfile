FROM debian:latest

WORKDIR /opt/tls-client-api

RUN apt-get update && apt-get install -y \
    software-properties-common \
    curl \
    gettext-base

COPY config.dist.yml.template /opt/tls-client-api/config.dist.yml
COPY entrypoint.sh /opt/tls-client-api/entrypoint.sh

RUN curl -fsSL https://github.com/bogdanfinn/tls-client-api/releases/download/v1.7.8/tls-client-api-linux-amd64-1.7.8 > /opt/tls-client-api/api \
    && chmod +x api \
    && chmod +x entrypoint.sh

EXPOSE 8080 8081

ENTRYPOINT ["/opt/tls-client-api/entrypoint.sh"]