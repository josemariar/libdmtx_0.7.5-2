echo Removing previous version of libdmtx... [1/5]
sudo apt-get purge libdmtx0a
echo Installing libdmtx0a_0.7.5-2... [2/5]
sudo dpkg -i ./libdmtx0a_0.7.5-2_amd64.deb
echo Installing libdmtx-dev_0.7.5-2... [3/5]
sudo dpkg -i ./libdmtx-dev_0.7.5-2_amd64.deb
echo Installing pylibdmtx... [4/5]
sudo pip3 install pylibdmtx
echo Fixing the wrapper.py file... [5/5]
result=$(python3 -m site | grep "/usr/local/lib/.*/dist-packages" | tr -d ,\')
sudo cp ./wrapper.py $result/pylibdmtx/
echo Finish
