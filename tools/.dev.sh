#!/bin/sh

function sourceIfExists() {
    if [ -f $1 ]; then
        source $1
    elif
        echo "Attemptting to source $1, which does not exist."
    fi
}

sourceIfExists ~/.xcode.sh
