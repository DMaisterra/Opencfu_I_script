sudo apt update #ejecutar esto primero, poner contraseña...

sudo apt-get install build-essential automake autoconf libopencv-dev libgtkmm-2.4-dev  -y
cd ~/
mkdir ~/Programas
cd ~/Programas/

git clone https://github.com/milq/milq.git

#modificar a -j1

cd ~/Programas/milq/scripts/bash/

OLD="make -j8"
NEW="make -j1"
file=install-opencv.sh

sed -i  "s|$OLD|$NEW|g" install-opencv.sh

sudo chmod a+x install-opencv.sh

./install-opencv.sh



cd ~/Programas/

git clone  https://github.com/qgeissmann/OpenCFU.git  ~/Programas/OpenCFU

cd ~/Programas/OpenCFU
sudo automake --add-missing
sudo autoconf
sudo autoreconf -i
./configure
make -j1
sudo make install

opencfu

