#!/bin/bash
export PATH=$PWD/py36/bin:$PATH
python3 -V | grep 'Python 3' &> /dev/null
if [ $? == 0 ]; then
   echo "Python3 is already installed"
   exit 0
else
   echo "Python3 not found"
   echo "Installing Python3 to current directory...."
   unzip py36.zip
   export PATH=$PWD/py36/bin:$PATH
fi

python3 -V | grep 'Python 3' &> /dev/null
if [ $? == 0 ]; then
   echo "Python3 installed"
else
   echo "Unable to install Pyhton3"
   echo "Pyhton3 is mandatory, please install and export the installed bin path"
   exit 1
fi
