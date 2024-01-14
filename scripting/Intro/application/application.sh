#!/bin/bash
# https://coursehunter.net/course/rukovodstvo-dlya-nachinayushchih-po-napisaniyu-skriptov-na-shell-i-bash?lesson=33

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
        ./ppllication.sh clean - clean working directory and stop database
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

    # Git clone spring app
    if [[ ! -d "spring-starter" ]]; then
        git clone git@github.com:dmdev2020/spring-starter.git
    fi
    cd "spring-starter" || exit
    git checkout lesson-125

    # PostgreSQL pull and start
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

clean() {
    # Remove working directory
    echo "Removing working directory ${workDir}"
    rm -rf "${workDir}"
    
    # Stop database
    if docker ps | grep "${DB_CONTAINER_NAME}"; then
        echo "Stopping docker container name ${DB_CONTAINER_NAME}"
        docker stop "${DB_CONTAINER_NAME}"
    fi
    
}

build() {
    echo "Run JUnit tests to check application health (-skipTests arg to skip tests) and build jar"
    cd "${workDir}/spring-starter" || exit
    
    # Почистить рабочую директорию Gradle
    ./gradlew clean

    # Запуск сборки без прогона тестов:
    # ./scripting/Intro/application/application.sh build -skipTests
    if [[ "$1" = "-skipTests" ]] || ./gradlew test; then
        echo "Application is building..."
        ./gradlew bootJar 
    else
        echo "Tests failed. See test report or send -skipTests arg to skip tests"
    fi
}

up() {
    # Launch apllication
    echo "Launching apllication"

    cd "${workDir}/spring-starter/build/libs" || exit

    java -jar spring-starter-*.jar
}

case $1 in 
    help)
        help
        ;;
    init)
        init
        ;;
    clean)
        clean
        ;;
    build)
        build $2
        ;;
    up)
        up
        ;;
    *)
        echo "Command $1 is not supported by this application"
        exit 1
        ;;
esac