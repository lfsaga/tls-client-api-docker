FROM debian:latest

RUN apt-get update && apt-get install -y \
    software-properties-common \
    curl

WORKDIR /opt/tls-client-api

COPY config.dist.template.yml .
COPY tls-client-api-linux-amd64-1.7.8 bin
COPY entrypoint.sh .

RUN chmod +x entrypoint.sh && chmod +x bin

ENTRYPOINT ["/opt/tls-client-api/entrypoint.sh"]