var express = require('express');
var router = express.Router();
const {monsterPool} = require('../db');
console.log("monsterPool", monsterPool);

router.get('/', (request, response) => {
    // response.send('respond with a resource');
    monsterPool.query('SELECT * FROM monsters', (err, res) => {
        if (err) {
            return console.log(err);
        }
        console.log("res", res.rows);
        response.render('monsters', { title: "Monsters", data: response.json(res.rows) });
    });
});

module.exports = router;
