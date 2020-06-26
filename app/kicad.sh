#!/usr/bin/bash

sudo -H add-apt-repository --yes ppa:js-reynaud/kicad-5.1
sudo -H apt update
sudo -H apt install -qy --install-suggests kicad