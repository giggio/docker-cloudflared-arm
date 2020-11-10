FROM ubuntu:20.04
LABEL maintainer="giggio@giggio.net"
RUN apt-get update && apt-get install -y wget dnsutils
RUN wget https://bin.equinox.io/c/VdrWdbjqyF/cloudflared-stable-linux-arm.tgz
RUN tar -xvzf cloudflared-stable-linux-arm.tgz && rm cloudflared-stable-linux-arm.tgz
RUN cp ./cloudflared /usr/local/bin
RUN chmod +x /usr/local/bin/cloudflared
ENTRYPOINT [ "/usr/local/bin/cloudflared" ]
