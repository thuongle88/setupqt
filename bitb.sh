#/bin/bash

cd ~

echo && echo && echo
echo "*********************           Cai dat BeanCash Wallet           ***********************"
echo "*********************  I'm here to help you :) ***********************"
echo && echo && echo


sudo apt-get -y update
sudo apt-get -y upgrade

git clone https://github.com/teambean/BeanCash
cd BeanCash/src/leveldb && chmod 777 * && cd .. && make -f makefile.unix


echo ""
echo "**********************************************************************"
echo ""
echo "                      This should exit without errors                 "
echo ""
echo "**********************************************************************"
echo ""



