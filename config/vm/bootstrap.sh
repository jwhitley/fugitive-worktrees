#!/usr/bin/env bash

set -e

if [ "$EUID" -ne "0" ]; then
  log "Bootstrap script must run as root." >&2
  exit 1
fi

export DEBIAN_FRONTEND=noninteractive

# Ensure we will get git 2.5.0 or later
apt-add-repository ppa:git-core/ppa

apt-get update >/dev/null
apt-get --yes --force-yes upgrade

deps=(
  git
  sharutils
)
apt-get install -q -y ${deps[@]}
