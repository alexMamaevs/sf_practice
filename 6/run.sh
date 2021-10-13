#!/bin/sh -e
export DEBIAN_FRONTEND=noninteractive
pip3 install -r /mnt/MyProject/App/requirements.txt
python3  /mnt/MyProject/App/app.py
