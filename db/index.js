const Pool = require('pg-pool');
let {monsterDb, lotrDb} = require('../secrets/db_configuration');

const monsterPool = new Pool({
    user : monsterDb.user,
    host : monsterDb.host,
    database : monsterDb.database,
    password : monsterDb.password,
    port : monsterDb.port
});

const lotrPool = new Pool({
    user : lotrDb.user,
    host : lotrDb.host,
    database : lotrDb.database,
    password : lotrDb.password,
    port : lotrDb.port
});

module.exports = {monsterPool, lotrPool};