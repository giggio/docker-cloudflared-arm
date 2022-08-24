FROM ubuntu:22.04
LABEL maintainer="giggio@giggio.net"
RUN apt-get update && apt-get install -y wget dnsutils
RUN wget https://github.com/cloudflare/cloudflared/releases/download/2022.8.2/cloudflared-linux-arm; \
    mv ./cloudflared-linux-arm /usr/local/bin/cloudflared; \
    chmod +x /usr/local/bin/cloudflared
ENTRYPOINT [ "/usr/local/bin/cloudflared" ]
