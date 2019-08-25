#!/bin/bash

myGit="${MY_GIT}"
repository="$1"

error() {
    echo $1
}

clone() {
    git clone "$myGit""$1"
}

if [ -z $myGit ];then
error "Try setting 'MY_GIT' environment variable first ;)"
fi

if [ -z $1 ];then
error "No repository specified, can you specify one?"
else
clone "$repository"
fi

