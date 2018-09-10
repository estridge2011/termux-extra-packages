#!/bin/bash
set -e

if [ "$(id -u)" != "0" ]; then
    echo
    echo "Without root, this script won't be able to install needed software."
    echo
    exit 1
fi

## Log to stdout by default
[ -z "${SETUP_LOG_FILE}" ] && SETUP_LOG_FILE=/proc/self/fd/1

PACKAGES=""

## for python-based packages (e.g. python2-xlib)
PACKAGES="${PACKAGES} python-pip python3-pip"

## for openjdk-9-jre-headless
PACKAGES="${PACKAGES} zip"

echo "[*] Updating system software..."
apt update --quiet >> "${SETUP_LOG_FILE}" 2>&1
apt upgrade --yes --quiet >> "${SETUP_LOG_FILE}" 2>&1

echo "[*] Installing additional software..."
apt install --yes --quiet ${PACKAGES} >> "${SETUP_LOG_FILE}" 2>&1
