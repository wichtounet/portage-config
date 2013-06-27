#!/bin/bash

sudo mv -f /etc/portage/make.conf /etc/portage/make.conf.bak
sudo mv -f /etc/portage/package.use /etc/portage/package.use.bak
sudo mv -f /etc/portage/package.mask /etc/portage/package.mask.bak
sudo mv -f /etc/portage/package.license /etc/portage/package.license.bak
sudo mv -f /etc/portage/package.accept_keywords /etc/portage/package.accept_keywords.bak
sudo mv -f /var/lib/portage/world /var/lib/portage/world.bak

sudo ln -s $(pwd)/make.conf /etc/portage/make.conf
sudo ln -s $(pwd)/package.use /etc/portage/package.use
sudo ln -s $(pwd)/package.mask /etc/portage/package.mask
sudo ln -s $(pwd)/package.license /etc/portage/package.license
sudo ln -s $(pwd)/package.accept_keywords /etc/portage/package.accept_keywords
sudo ln -s $(pwd)/world /var/lib/portage/world
