Huong dan cai dat VPS:

  Buoc 1:
  
sudo apt-get update -y
sudo apt-get upgrade -y
cd ~
git clone https://github.com/thuongle88/setupqt
cd setupqt && chmod +x setupvps.sh && sudo bash setupvps.sh

  Buoc 2:
  
sudo apt-get update -y
sudo apt-get upgrade -y
cd ~
git clone https://github.com/your-coin
cd setupqt && chmod +x your-coin.sh && sudo bash your-coin.sh

Buoc 3:

cd your-coin/src
sudo mv your-coind ~/your-coind
cd ~
./your-coind
./your-coind stop

Buoc 4
sudo nano ~/.your-coin/your-coin.conf

Paste:
testnet=0
listen=1
server=1
daemon=1
maxconnections=90
rpcuser=userNeedChange
rpcpassword=passNeedChange
rpcport=18580 (edit)
rpcconnect=127.0.0.1
rpcallowip=127.0.0.1

Ctrl O
Ctrl X

