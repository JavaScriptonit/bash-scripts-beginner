#!/bin/bash

# Case statement
# https://google.github.io/styleguide/shellguide.html

#####################
# Вывод текста в зависимости от введенного текста
# - clean
# - build
# - other
#####################
echo "Enter any program:"
read program

# multi-command alternatives:
case "${program}" in 
    clean)
        echo "Clean is invoked"
        ;;
    build)
        echo "Build is invoked"
        ;;
    *)
        echo "${program} is not supported by this application"
        exit 2
        ;;
esac

# one-line alternative:
case "${program}" in 
    clean) echo "Clean is invoked" ;;
    build) echo "Build is invoked" ;;
    *) echo "${program} is not supported by this application" && exit 2 ;;
esac