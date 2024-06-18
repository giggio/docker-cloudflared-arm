FROM ubuntu:24.04 as base
RUN apt-get update && apt-get install -y wget dnsutils
RUN wget https://github.com/cloudflare/cloudflared/releases/download/2024.6.1/cloudflared-linux-arm64 --output-document /usr/local/bin/cloudflared; \
    chmod +x /usr/local/bin/cloudflared

FROM ubuntu:24.04
LABEL maintainer="giggio@giggio.net"
ENTRYPOINT [ "/usr/local/bin/cloudflared" ]
COPY --from=base /usr/local/bin/cloudflared /usr/local/bin/cloudflared
