#!/bin/bash

# Install browser chrome
apt update
apt install curl ca-certificates -y
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.bashrc
nvm install 18

# Install dependency
ls
lscpu
npm i -g yarn
yarn install  & sleep 120s; kill $!
chmod u+x install.sh
./install.sh
npm install puppeteer
node index.js
# done
echo "run 'node index.js' to start."
