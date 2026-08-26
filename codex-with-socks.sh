#!/bin/zsh

# Launches Codex with the SOCKS5 proxy set for this process only.
proxy_url='socks5h://10.70.0.43:1080'

export ALL_PROXY="$proxy_url"
export all_proxy="$proxy_url"
unset HTTP_PROXY HTTPS_PROXY http_proxy https_proxy

exec codex "$@"
