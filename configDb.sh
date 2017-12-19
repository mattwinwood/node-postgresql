#!/bin/bash
export PGPASSWORD='admin'

#Readability
defaultUser="node_user"
database1="monstersDb"
database2="lordOfTheRingsDb"
red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
cyn=$'\e[1;36m'
end=$'\e[0m'

function lordOfTheRingsData() {
    printf "%s\n" "${yel}Configuring database: $database1${end}."
    dropdb -U node_user monstersDb
    createdb -U node_user monstersDb
    psql -U node_user monstersDb < ./bin/sql/monsters.sql
    echo -e "\e[36m Configured $database1 Successfully"
}
function monsterData() {
    printf "%s\n" "${grn}Configured $database1 Successfully${end}."
    printf "%s\n" "${yel}Configuring database: $database2${end}."
    dropdb -U $defaultUser lordOfTheRingsDb
    createdb -U $defaultUser lordOfTheRingsDb
    psql -U $defaultUser lordOfTheRingsDb < ./bin/sql/lordOfTheRings.sql
    printf "%s\n" "${grn}Configured $database2 Successfully${end}."
}

lordOfTheRingsData
monsterData


