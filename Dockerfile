FROM ubuntu:20.04
LABEL maintainer="giggio@giggio.net"
RUN apt-get update && apt-get install -y wget dnsutils
RUN wget https://github.com/cloudflare/cloudflared/releases/download/2021.10.5/cloudflared-linux-arm
RUN mv ./cloudflared-linux-arm /usr/local/bin/cloudflared
RUN chmod +x /usr/local/bin/cloudflared
ENTRYPOINT [ "/usr/local/bin/cloudflared" ]
