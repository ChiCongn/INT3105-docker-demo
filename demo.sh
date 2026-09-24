#!/bin/sh
set -e

echo "===== Docker demo container ====="
echo "Hostname : $(hostname)"
echo "Date     : $(date)"
echo "Uptime   : $(uptime)"
echo ""

echo '  ____ _   _ ___ ____ ___  _   _  ____ _   _'
echo ' / ___| | | |_ _/ ___/ _ \| \ | |/ ___| \ | |'
echo '| |   | |_| || | |  | | | |  \| | |  _|  \| |'
echo '| |___|  _  || | |__| |_| | |\  | |_| | |\  |'
echo ' \____|_| |_|___\____\___/|_| \_|\____|_| \_|'

echo "--- curl version ---"
curl --version | head -n 1

echo ""
echo "--- jq version ---"
jq --version

echo ""
echo "--- Fetching a sample JSON with curl + jq ---"
curl -s https://api.github.com/repos/docker/docker | jq '{name, description, stargazers_count}'

echo ""
echo "===== Done ====="
