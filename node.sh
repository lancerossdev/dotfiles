#!/bin/bash

# installs nvm on wsl ubuntu (always change the version to latest!)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash

# now this will install latest node version using nvm
nvm install node

# global dependencies to install 

## package managers
npm install -g yarn
npm install -g pnpm

## cli tools
npm install -g netlify-cli
npm install -g vercel
npm install -g firebase-tools

## dev tools
npm install -g serve
npm install -g trash-cli

# deb packages
curl -O https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb
sudo dpkg --install cloudflared-linux-amd64.deb

curl -O https://github.com/planetscale/cli/releases/download/v0.124.0/pscale_0.124.0_linux_amd64.deb
sudo dpkg --install pscale_0.124.0_linux_amd64.deb