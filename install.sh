#!/bin/bash

sudo mv -f /etc/portage/make.conf /etc/portage/make.conf.bak
sudo mv -f /etc/portage/package.use /etc/portage/package.use.bak
sudo mv -f /etc/portage/package.mask /etc/portage/package.mask.bak
sudo mv -f /etc/portage/package.license /etc/portage/package.license.bak
sudo mv -f /etc/portage/package.accept_keywords /etc/portage/package.accept_keywords.bak

sudo ln -s make.conf /etc/portage/make.conf
sudo ln -s package.use /etc/portage/package.use
sudo ln -s package.mask /etc/portage/package.mask
sudo ln -s package.license /etc/portage/package.license
sudo ln -s package.accept_keywords /etc/portage/package.accept_keywords
