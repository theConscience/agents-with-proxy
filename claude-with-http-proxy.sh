#!/bin/zsh

# Launches Claude Code with the HTTP proxy set for this process only.
proxy_url='http://10.70.0.43:8888'

export HTTP_PROXY="$proxy_url"
export HTTPS_PROXY="$proxy_url"
export http_proxy="$proxy_url"
export https_proxy="$proxy_url"
unset ALL_PROXY all_proxy
export NO_PROXY='localhost,127.0.0.1,::1'
export no_proxy="$NO_PROXY"

exec claude "$@"
