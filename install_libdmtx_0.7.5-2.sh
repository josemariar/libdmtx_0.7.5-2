sudo apt-get purge libdmtx0a

sudo dpkg -i ./libdmtx0a_0.7.5-2_amd64.deb
sudo dpkg -i ./libdmtx-dev_0.7.5-2_amd64.deb

sudo pip3 install pylibdmtx

result=$(python3 -m site | grep "/usr/local/lib/.*/dist-packages" | tr -d ,\')
cp ./wrapper.py $result/pylibdmtx/