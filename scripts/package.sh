#!/usr/bin/zsh

# install global deps

# install pnpm and set its global prefix too
npm install -g pnpm@latest
pnpm setup
source /home/lance/.zshrc

# cli tools
pnpm install -g netlify-cli
pnpm install -g firebase-tools

# dev tools
pnpm install -g serve
pnpm install -g trash-cli

# deb packages

# Add cloudflare gpg key
sudo mkdir -p --mode=0755 /usr/share/keyrings
curl -fsSL https://pkg.cloudflare.com/cloudflare-main.gpg | sudo tee /usr/share/keyrings/cloudflare-main.gpg >/dev/null

# Add this repo to your apt repositories
echo 'deb [signed-by=/usr/share/keyrings/cloudflare-main.gpg] https://pkg.cloudflare.com/cloudflared focal main' | sudo tee /etc/apt/sources.list.d/cloudflared.list

# install cloudflared
sudo apt-get update && sudo apt-get install cloudflared
