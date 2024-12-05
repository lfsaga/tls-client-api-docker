FROM debian:latest

RUN apt-get update && apt-get install -y oftware-properties-common 

WORKDIR /opt/tls-client-api

COPY entrypoint.sh .
COPY config.dist.template.yml .
COPY tls-client-api-linux-amd64-1.7.8 bin

RUN chmod +x entrypoint.sh && chmod +x bin

ENTRYPOINT ["/opt/tls-client-api/entrypoint.sh"]