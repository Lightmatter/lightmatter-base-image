#!/bin/bash
set -e
source /lm_build/buildconfig

header "Installing Python..."

## Install Python.
minimal_apt_get_install python python2.7 python3.8 python3.8-dev python3-pip python3-setuptools
#precache uvloop
python3.8 -m pip install wheel
python3.8 -m pip install uvicorn==0.11.3 gunicorn==20.0.4
# PDF c/cpp libs for WeasyPrint
python3.8 -m pip install cffi cairocffi cairosvg