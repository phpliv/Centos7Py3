#!/bin/bash
yum -y groupinstall "Development tools"
yum -y install wget zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel python-devel zlib-devel libjpeg-turbo-devel libffi-devel opencv-devel libpng-devel
yum install -y centos-release-scl
yum install -y devtoolset-8-gcc*
scl enable devtoolset-8 bash
mv /usr/bin/gcc /usr/bin/gcc-4.8.5
ln -s /opt/rh/devtoolset-8/root/bin/gcc /usr/bin/gcc
mv /usr/bin/g++ /usr/bin/g++-4.8.5
ln -s /opt/rh/devtoolset-8/root/bin/g++ /usr/bin/g++
gcc --version
wget https://www.python.org/ftp/python/3.7.2/Python-3.7.2.tar.xz
tar -xvJf  Python-3.7.2.tar.xz
mkdir /usr/local/python3
cd Python-3.7.2
./configure --prefix=/usr/local/python3
make && make install
ln -s /usr/local/python3/bin/python3 /usr/local/bin/python3
ln -s /usr/local/python3/bin/pip3 /usr/local/bin/pip3
ln -s /usr/local/python3/bin/pip3 /usr/local/bin/pip
pip install --upgrade pip
cd ..
wget https://cmake.org/files/v3.3/cmake-3.3.2.tar.gz 
tar xzvf cmake-3.3.2.tar.gz
cd cmake-3.3.2
./bootstrap
gmake
make install
cmake --version
pip install --upgrade setuptools -i https://pypi.tuna.tsinghua.edu.cn/simple/
pip install numpy Matplotlib -i https://pypi.tuna.tsinghua.edu.cn/simple/
pip install opencv-python -i https://pypi.tuna.tsinghua.edu.cn/simple/
pip install ddddocr -i https://pypi.tuna.tsinghua.edu.cn/simple/
