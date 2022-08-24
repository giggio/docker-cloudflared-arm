# Cloudflared for Docker on ARM (RaspberryPi)

[![Docker Stars](https://img.shields.io/docker/stars/giggio/cloudflared-arm.svg)](https://hub.docker.com/r/giggio/cloudflared-arm/)
[![Docker Pulls](https://img.shields.io/docker/pulls/giggio/cloudflared-arm.svg)](https://hub.docker.com/r/giggio/cloudflared-arm/)

This is just [Cloudflared](https://developers.cloudflare.com/argo-tunnel) in a container.

## Upstream Links

* Docker Registry @ [giggio/cloudflared-arm](https://hub.docker.com/r/giggio/cloudflared-arm/)
* GitHub @ [giggio/docker-cloudflared-arm](https://github.com/giggio/docker-cloudflared-arm)

## Quick Start

For example, to run a DNS over HTTPS (DoH), you'd run it like this:

````bash
docker run -p 5053:5053 -p 34000:34000 --name doh giggio/cloudflared-arm proxy-dns --address 0.0.0.0 --port 5053 --metrics 0.0.0.0:34000 --upstream https://1.1.1.1/dns-query --upstream https://1.0.0.1/dns-query
````

## Contributing

Questions, comments, bug reports, and pull requests are all welcome.  Submit them at
[the project on GitHub](https://github.com/giggio/cloudflared-arm/).

Bug reports that include steps-to-reproduce (including code) are the
best. Even better, make them in the form of pull requests.

## Author

[Giovanni Bassi](https://github.com/giggio)

## License

Licensed under the MIT license.
