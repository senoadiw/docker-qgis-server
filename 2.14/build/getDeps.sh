#!/bin/bash
set -e

apt-get -y update

# #-------------Application Specific Stuff ----------------------------------------------------
LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get update &&  \
    apt-get install -y  spawn-fcgi xauth xfonts-100dpi xfonts-75dpi \
        xfonts-base xfonts-scalable xvfb \
        apache2 libapache2-mod-fcgid git

mkdir -p /opt/qgis-server/plugins
cd /opt/qgis-server/plugins
git clone https://github.com/kartoza/otf-project.git
cd otf-project/ && git checkout 0a44fa4ccc40a5645af7d4349c63b9bb2f995595
