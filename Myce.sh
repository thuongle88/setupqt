#/bin/bash

cd ~

echo && echo && echo
echo "*********************           Cai dat MYCE Wallet           ***********************"
echo "*********************  I'm here to help you :) ***********************"
echo && echo && echo


sudo apt-get update
sudo apt-get -y upgrade

git clone https://github.com/mycelliumcoin/MycelliumMN
cd MycelliumMN/src/leveldb && chmod 777 * && cd .. && make -f makefile.unix


echo ""
echo "**********************************************************************"
echo ""
echo "                      This should exit without errors                 "
echo ""
echo "**********************************************************************"
echo ""
