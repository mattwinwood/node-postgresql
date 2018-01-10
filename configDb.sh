#!/bin/bash
export PGPASSWORD='admin'
export PGUSER='node_user'

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
    printf "%s\n" "${grn}Configured $database1 Successfully${end}."
}
function createUser() {
    printf "%s\n" "${yel}Creating user${end}."
     psql -U postgres -c "CREATE USER node_user WITH SUPERUSER PASSWORD 'admin'"
    printf "%s\n" "${grn}Created user 'node_user' pw: 'admin'${end}."
}
function monsterData() {
    printf "%s\n" "${yel}Configuring database: $database2${end}."
    dropdb -U $defaultUser lordOfTheRingsDb
    createdb -U $defaultUser lordOfTheRingsDb
    psql -U $defaultUser lordOfTheRingsDb < ./bin/sql/lordOfTheRings.sql
    printf "%s\n" "${grn}Configured $database2 Successfully${end}."
}
createUser
lordOfTheRingsData
monsterData


