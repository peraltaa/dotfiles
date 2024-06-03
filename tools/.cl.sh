#!/bin/sh


# Current Projects
function ldev () {
   sbcl \
    --noinform \
    --no-sysinit \
    --no-userinit \
    --load ~/quicklisp/setup.lisp \
    --eval '(ql:quickload :lem)' \
    --eval '(lem:lem)'
}
