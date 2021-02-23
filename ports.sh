#!/usr/bin/with-contenv bash
#iptables -t nat -I PREROUTING -i eth0 -p tcp --dport 443 -j REDIRECT --to-ports 32400
#ip6tables -t nat -I PREROUTING -i eth0 -p tcp --dport 443 -j REDIRECT --to-ports 32400
#cloudflared --origincert /config/cert.pem --config /config/config.yml service install

 cloudflared --origincert /data/cert.pem --config /data/config.yml tunnel run -p http2 plex
