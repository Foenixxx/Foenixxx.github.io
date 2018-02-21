cd ~
echo "****************************************************************************"
echo "* Ubuntu 16.04 is the recommended opearting system for this install.       *"
echo "*                                                                          *"
echo "* This script will install and configure your Dfigifel Coin masternodes.   *"
echo "****************************************************************************"
echo && echo && echo
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "!                                                 !"
echo "! Make sure you double check before hitting enter !"
echo "!                                                 !"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo && echo && echo

echo "Do you want to install all needed dependencies (no if you did it before)? [y/n]"
read DOSETUP

if [[ $DOSETUP =~ "y" ]] ; then
  sudo apt-get update
  sudo apt-get upgrade
 sudo apt-get install build-essential
sudo apt-get install libssl-dev
sudo apt-get install libboost-all-dev
sudo apt-get install libqrencode-dev
sudo apt-get install libgmp3-dev
sudo apt-get install miniupnpc
sudo apt-get install libminiupnpc-dev
sudo apt-get install libcurl4-openssl-dev
sudo apt-get install dh-autoreconf
sudo apt-get install autoconf
sudo apt-get install automake
sudo apt-get install git nano
sudo apt-get install pkg-config
sudo apt-get install libtool
sudo apt-get install libgmp-dev
sudo apt-get install libevent-dev


sudo apt-add-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install libdb4.8-dev
sudo apt-get install libdb4.8++-dev


sudo apt-get install libdb++-dev
sudo apt-get install libdb-dev

fallocate -l 3G /swapfile
chmod 600 /swapfile
mkswap /swapfil
swapon /swapfile
echo -e "/swapfile none swap sw 0 0 \n" >> /etc/fstab


git clone https://github.com/vantaur/vantaur.git
cd vantaur/src
make -f makefile.unix
sudo cp vantaurd /usr/bin

mkdir /root/.Vantaur
nano /root/.Vantaur/Vantaur.conf
 