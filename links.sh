#!/bin/bash

hostname=`hostname`
path=`readlink -f $0`
dir=`dirname $path`

host_dir=$dir/$hostname

function install_link {
    link=$1
    file=$2

    # Make sure a file exists, even if empty
    if [[ ! -f $host_dir/$file ]]
    then
        echo "Create $host_dir/$file"
        touch $host_dir/$file
    fi

    if [[ -f "$link" ]]
    then
        if [[ ! -L "$link" ]]
        then
            echo "$link already exists, not overwriting"
        else
            # The file exists but is a symlink, we can replace it
            echo "Create symlink $link -> $host_dir/$file"
            sudo ln -sf $host_dir/$file $link
        fi
    else
        echo "Create symlink $link -> $host_dir/$file"
        sudo ln -sf $host_dir/$file $link
    fi
}

install_link /etc/portage/package.use package.use
install_link /etc/portage/package.env package.env
install_link /etc/portage/package.accept_keywords package.accept_keywords
install_link /etc/portage/package.mask package.mask
install_link /etc/portage/package.license package.license
install_link /etc/portage/make.conf make.conf
install_link /var/lib/portage/world world
