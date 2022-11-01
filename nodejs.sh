#!/bin/bash

# installs nvm on wsl ubuntu
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash

# now this will install node using nvm
nvm install node

# global dependencies to install 


## package managers
npm install -g yarn
npm install -g pnpm

## cli tools
npm install -g wrangler
npm install -g @vue/cli
npm install -g vercel
npm install -g firebase-tools

## dev tools
npm install -g serve