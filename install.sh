#!/usr/bin/env bash

function create_usrlocalbin() {
    if [ ! -d /usr/local/bin/ ]; then
        echo "Creating /usr/local/bin ..."
        mkdir -p /usr/local/bin/ 
    fi
}

function copy_script() {
    cp incognito /usr/local/bin/incognito
    cp openly /usr/local/bin/openly
}

function chmod_script() {
  chmod a+x /usr/local/bin/incognito
  chmod a+x /usr/local/bin/openly
}

create_usrlocalbin
copy_script
chmod_script
echo 'incognito installed!'
exit 0
