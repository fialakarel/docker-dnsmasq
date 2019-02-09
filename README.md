# dnsmasq

Lightweight Docker image for dnsmasq.

## Usage

### Testing

    # Just for testing
    docker run \
        --rm -it \
        --publish 127.0.0.1:53:53/udp \
        --publish 127.0.0.1:53:53/tcp \
        --volume $(pwd)/dnsmasq.conf:/etc/dnsmasq.conf:ro \
        --volume $(pwd)/dnsmasq.d:/etc/dnsmasq.d:ro \
        fialakarel/dnsmasq:latest

### Production

    # Create directory structure first
    mkdir -p /root/dnsmasq/etc/dnsmasq.d
    
    # Run production version
    docker run \
        --detach \
        --name dnsmasq \
        --restart always \
        --publish 127.0.0.1:53:53/udp \
        --publish 127.0.0.1:53:53/tcp \
        --volume /root/dnsmasq/etc/dnsmasq.conf:/etc/dnsmasq.conf:ro \
        --volume /root/dnsmasq/etc/dnsmasq.d:/etc/dnsmasq.d:ro \
        fialakarel/dnsmasq:latest
