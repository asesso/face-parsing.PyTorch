#!/bin/bash

CD=$(dirname $(readlink -f $BASH_SOURCE))
echo $CD
cd $CD

/usr/bin/python3 -m virtualenv -p /usr/bin/python3  $CD/env

. env/bin/activate
./env/bin/python3 -m pip install torch
./env/bin/python3 -m pip install torchvision
./env/bin/python3 -m pip install opencv-python
