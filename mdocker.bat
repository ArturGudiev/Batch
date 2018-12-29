@echo off

if "%1"=="" goto EMPTY
if "%1"=="client" goto client
if "%1"=="server" goto server
if "%1"=="client" goto client
if "%1"=="conn" goto conn
if "%1"=="start" goto start
if "%1"=="export" goto export
goto end

:export
cc docker export -o /C/Programming/Docker/a.tar
goto end

:start
docker run aaionap/hbase
goto end
REM Net stop com.docker.service
REM Net start com.docker.service
:conn
cc docker exec -it 530518ac6b12 /bin/bash
docker exec -it c35e2781c896  /bin/bash
docker exec -it 8edc6d7681e5   /bin/bash
goto end

REM yandex
REM docker exec -it 530518ac6b12 /bin/bash

rem hbase
REM  docker exec -it 6bccf7f59cbf /bin/bash

REM docker run --name some-cassandra -d cassandra:tag
REM docker run --name some-app --link some-cassandra:cassandra -d app-that-uses-cassandra

REM docker run -d --name some-clickhouse-server --ulimit nofile=262144:262144 yandex/clickhouse-server
REM docker run -it --rm --link some-clickhouse-server:clickhouse-server dajobe/hbase-client --host clickhouse-server

REM docker run --name some-hbase -d aaionap/hbase:tag
REM docker run --name some-app --link some-hbase:aaionap/hbase -d app-that-uses-cassandra
aaionap/hbase
REM dajobe/hbase
:client
    docker run -d --name some-clickhouse-server --ulimit nofile=262144:262144 yandex/clickhouse-server
    REM docker run -d --name some-clickhouse-server --ulimit nofile=262144:262144 dajobe/hbase-server
goto end

:server
    REM docker run -it --rm --link some-clickhouse-server:clickhouse-server dajobe/hbase-client --host clickhouse-server
    docker run -it --rm --link some-clickhouse-server:clickhouse-server dajobe/hbase-client --host clickhouse-server
goto end

:client
    SET DOCKER_TLS_VERIFY=1
    SET DOCKER_HOST=tcp://192.168.99.100:2376
    SET DOCKER_CERT_PATH=C:\Users\gudiea\.docker\machine\machines\box
    SET DOCKER_MACHINE_NAME=box
    SET COMPOSE_CONVERT_WINDOWS_PATHS=true
    REM Run this command to configure your shell:
    @FOR /f "tokens=*" %i IN ('docker-machine env box') DO @%i
goto end

:EMPTY

goto end

:END
