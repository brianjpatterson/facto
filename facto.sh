#!/usr/local/bin/bash

declare -i num=$1

facto() {

    local -i prev=$1
    local -i next=$((prev - 1))
    local -i accum
    if [ $# -eq 1 ]; then
        accum=$((prev * next))
    else
        accum=$2
        if [ $next -eq 0 ]; then
            echo "$accum"
            return 0
        fi
        accum=$((accum * next))
    fi
    facto "$next" "$accum"
}


facto "$num"