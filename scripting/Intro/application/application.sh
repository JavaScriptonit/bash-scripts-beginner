#!/bin/bash

if [[ -f "./env.sh" ]]; then
    echo "Use env variables from file ${PWD}/env.sh"
    source ./env.sh
fi

DB_CONTAINER_NAME="spring-postgres"
workDir="${WORKING_DIRECTORY:=~/Workspace}"

help() {
    echo "
    Usage:
        ./application.sh init - init working directory and database
        ./ppllication.sh clean - clean working directory
        ./application.sh build - run JUnit tests to check application health (-skipTests arg to skip tests) and build jar
        ./application.sh up - launch apllication
    "
}

init() {
    # Init working directory
    echo "Init working directory"
    mkdir -p "${workDir}"
    cd "${workDir}" || exit
    pwd # print current directory

    # Git clone
    if [[ ! -d "spring-starter" ]]; then
        git clone git@github.com:dmdev2020/spring-starter.git
    fi
    cd "spring-starter" || exit
    git checkout lesson-125

    # PostgreSQL
    docker pull postgres
    if docker ps -a | grep "${DB_CONTAINER_NAME}"; then
        docker start "${DB_CONTAINER_NAME}"
    else
        docker run --name "${DB_CONTAINER_NAME}" \
            -e POSTGRES_PASSWORD=pass \
            -e POSTGRES_USER=postgres \
            -e POSTGRES_DB=postgres \
            -p 5433:5432 \
            -d postgres
    fi

}

case $1 in 
    help)
        help
        ;;
    init)
        init
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