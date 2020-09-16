#!/bin/sh

# Fix firewall issue regarding tailscale
ufw allow in on tailscale0 to any
