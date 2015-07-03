#!/bin/bash

: ${DB_ENCODING:=UTF-8}

{ gosu postgres postgres --single -jE <<-EOSQL
    CREATE USER "rustless" WITH PASSWORD 'rustless';
EOSQL
} && { gosu postgres postgres --single -jE <<-EOSQL
    CREATE DATABASE "rustless" WITH OWNER="rustless" TEMPLATE=template0 ENCODING='$DB_ENCODING';
EOSQL
} && { gosu postgres postgres --single -jE "rustless" <<-EOSQL
    CREATE EXTENSION "uuid-ossp";
EOSQL
}
