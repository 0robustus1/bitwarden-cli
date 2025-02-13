#!/bin/sh

set -e

bw config server ${BW_HOST}

export BW_SESSION=$(bw login ${BW_USER} --passwordenv BW_PASSWORD --raw)

bw unlock --check

echo 'Running `bw server` on port 8087'
bw serve --hostname 0.0.0.0 #--disable-origin-protection
