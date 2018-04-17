#/bin/bash

cd ~

echo && echo && echo
echo "*********************           Cai dat VPS           ***********************"
echo "*********************  I'm here to help you :) ***********************"
echo && echo && echo


sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:bitcoin/bitcoin
sudo apt-get update -y
sudo apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils libboost-all-dev libdb4.8-dev libdb4.8++-dev libminiupnpc-dev libzmq3-dev tmux
sudo apt-get install -y libgmp3-dev



sudo apt-get install -y qt5-default qt5-qmake qtbase5-dev-tools libboost-dev libboost-system-dev libboost-filesystem-dev libboost-program-options-dev libboost-thread-dev libssl-dev libdb++-dev
sudo apt-get install -y autoconf
sudo apt-get install -y libboost-all-dev
sudo apt-get install -y libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler
sudo apt-get install -y libqrencode-dev openssl libevent-dev
sudo apt-get install -y libminiupnpc-dev
sudo apt-get update -y

cd ~
wget 'http://download.oracle.com/berkeley-db/db-4.8.30.NC.tar.gz'
tar -xzvf db-4.8.30.NC.tar.gz
cd db-4.8.30.NC/build_unix/
../dist/configure --enable-cxx
sudo make install -y




cd /var
sudo touch swap.img
sudo chmod 600 swap.img
sudo dd if=/dev/zero of=/var/swap.img bs=1024k count=2000
sudo mkswap /var/swap.img
sudo swapon /var/swap.img
sudo free
sudo echo "/var/swap.img none swap sw 0 0" >> /etc/fstab
cd

sudo apt-get install -y ufw
sudo ufw allow ssh/tcp
sudo ufw allow 23511
sudo ufw logging on
sudo ufw status

mkdir -p ~/bin
echo 'export PATH=~/bin:$PATH' > ~/.bash_aliases
source ~/.bashrc

git clone https://github.com/teambean/BeanCash
cd BeanCash/src/leveldb && chmod 777 * && cd .. && make -f makefile.unix


echo ""
echo "**********************************************************************"
echo ""
echo "                      This should exit without errors                 "
echo ""
echo "**********************************************************************"
echo ""



