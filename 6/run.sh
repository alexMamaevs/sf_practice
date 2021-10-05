#!/bin/sh -e
export DEBIAN_FRONTEND=noninteractive
pip3 install -r MyApp/requirements.txt
python3  /mnt/MyApp/App/app.py