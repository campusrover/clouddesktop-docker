#!/bin/sh

# Fix firewall issue regarding tailscale
ufw allow in on tailscale0 to any
# V2 ports
ufw allow 5900
ufw allow 80/tcp
ufw allow 8080/tcp
