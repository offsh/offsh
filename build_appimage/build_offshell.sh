#!/bin/bash

mkdir -p /tmp/build && cd /tmp/build || exit
git clone --depth 1 https://github.com/xonsh/xonsh -b 0.9.20
cd xonsh/appimage || exit
echo 'xonsh' > requirements.txt
cat /pre-requirements.txt >> requirements.txt
cd ..
python3 -m python_appimage build app ./appimage -p 3.8
mv xonsh-x86_64.AppImage /tmp/build/output
