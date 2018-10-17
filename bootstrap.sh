#!/usr/bin/env bash 

U=vagrant
UHOME=/home/$U

hostname 6828

echo 'export PATH=${PATH}:'$UHOME/qemu-build/bin >> $UHOME/.bashrc

apt-get update
apt-get install -y libsdl1.2-dev libtool libglib2.0-dev libz-dev libpixman-1-dev gdb pkg-config git

cd $UHOME
mkdir -p qemu-build
git clone https://github.com/mit-pdos/6.828-qemu.git qemu

cd qemu
./configure --disable-kvm --disable-werror --prefix=$UHOME/qemu-build --target-list="i386-softmmu x86_64-softmmu"
make && make install

cd $UHOME
echo "https://pdos.csail.mit.edu/6.828/2018/labs/lab1/" > to-lab-1.txt

# user owns all the things in home.
chown $U -R $UHOME


