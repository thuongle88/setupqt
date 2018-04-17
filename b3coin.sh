#/bin/bash

cd ~

echo && echo && echo
echo "*********************           Cai dat VPS           ***********************"
echo "*********************  I'm here to help you :) ***********************"
echo && echo && echo


sudo apt-get update
sudo apt-get -y upgrade

git clone https://github.com/B3-Coin/B3-CoinV2
cd B3-CoinV2/src/leveldb && chmod 777 * && cd .. && make -f makefile.unix


echo ""
echo "**********************************************************************"
echo ""
echo "                      This should exit without errors                 "
echo ""
echo "**********************************************************************"
echo ""



