#!/bin/bash

help() {
    echo "
    Usage:
        ./application.sh init - init working directory and database
        ./ppllication.sh clean - clean working directory
        ./application.sh build - run JUnit tests to check application health (-skipTests arg to skip tests) and build jar
        ./application.sh up - launch apllication
    "
}

case $1 in 
    help)
        help
        ;;
    init)
        echo "Init working directory and database"
        ;;
    clean)
        echo "Clean is invoked"
        ;;
    build)
        echo "Build is invoked"
        ;;
    up)
        echo "Launch apllication"
        ;;
    *)
        echo "Command $1 is not supported by this application"
        exit 1
        ;;
esac