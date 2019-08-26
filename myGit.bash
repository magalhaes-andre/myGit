#!/bin/bash

myGit="${MY_GIT}"
repository="$1"

install() {
    sudo cp ./myGit.bash /usr/local/bin/
    sudo mv /usr/local/bin/myGit.bash /usr/local/bin/myGit
    sudo chmod +x /usr/local/bin/myGit
}

error() {
    echo $1
}

clone() {
    git clone "$myGit""$1"
}


if [ "$1" != "install" ];then
    if [ -z $myGit ];then
        error "Try setting 'MY_GIT' environment variable first ;)"
    fi
    
    if [ -z $1 ];then
        error "No repository specified, can you specify one?"
    else
        clone "$repository"
    fi
fi

"$@"